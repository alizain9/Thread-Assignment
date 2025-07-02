import '../model/comment_model.dart';

class MockData {
  static List<Comment> getComments() {
    return [
      Comment(
        name: "Zain Ali",
        text: "Sounds amazing! Where did you go?",
        likes: 25,
        dislikes: 2,
        avatar: 5,
      ),
      Comment(
        name: "Daniel",
        text: "Haha 😂 I was thinking the same thing!",
        likes: 18,
        dislikes: 1,
        avatar: 14,
      ),
      Comment(
        name: "Emily White",
        text: "Totally agree. Needed this laugh!",
        likes: 33,
        dislikes: 0,
        avatar: 25,
      ),
    ];
  }
}


