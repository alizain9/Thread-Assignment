String getRelativeTime(int id) {
  if (id % 3 == 0) return "2d ago";
  if (id % 3 == 1) return "5h ago";
  return "1d ago";
}

String getAvatarUrl(int userId) {
  int imageId = (userId % 70) + 1;
  return "https://i.pravatar.cc/150?img=$imageId";
}