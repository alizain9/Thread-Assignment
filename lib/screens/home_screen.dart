import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../services/api_service.dart';
import '../../services/network_info.dart';
import '../../widgets/post_card.dart';
import '../../widgets/retry_widget.dart';
import '../../widgets/loading_indicator.dart';
import '../Model/post_model.dart';
import '../utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ApiService apiService;
  late NetworkInfo networkInfo;

  Future<List<dynamic>>? futurePosts;

  @override
  void initState() {
    super.initState();
    apiService = ApiService();
    networkInfo = NetworkInfo(Connectivity());
    futurePosts = fetchPosts();
  }

  Future<List<dynamic>> fetchPosts() async {
    final hasConnection = await networkInfo.isConnected;
    if (!hasConnection) throw Exception("No internet connection");

    return await apiService.fetchPosts();
  }

  void _onRefresh() {
    setState(() {
      futurePosts = fetchPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text("Threads", style: AppStyles.titleStyle(context)),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: FutureBuilder<List<dynamic>>(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const LoadingIndicator();
          } else if (snapshot.hasError) {
            return RetryWidget(onRetry: _onRefresh);
          } else if (snapshot.hasData) {
            final posts = snapshot.data as List<Post>;
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: posts.length,
              itemBuilder: (context, index) => PostCard(post: posts[index]),
            );
          }
          return const Center(child: Text("Something went wrong"));
        },
      ),
    );
  }
}