# 📱 Flutter Threads Assignment App

This is a 2-screen Flutter application built as part of the assignment for the **Flutter Developer Intern position at Orax Technologies**.

It uses a public API to fetch posts and displays them in a clean, modern UI with avatar images, comments section, and post details.

---

## 🔧 Features

### 🏠 Home Screen
- Fetches and displays post list from `https://jsonplaceholder.typicode.com/posts`
- Each post shows:
  - Random user avatar
  - Username (User ID based)
  - Title & body preview
  - Relative time like “2d ago”
- Smooth scrollable list
- Clean layout using **Google Fonts**

### 📄 Detail Screen
- Shows full post title and body
- Includes:
  - Like, Comment, Share icons
  - Dummy comments section (with avatars, likes/dislikes)
  - Comment input box (UI only)

---

## 📦 APK

🔗 **[Download APK](./app-release.apk)** (or find it in the repo under `/app-release.apk`)

---

## 🧰 Tech Stack

- Flutter
- Dart
- Dio package
- Connectivity_plus
- Google Fonts
- Material Design 3

---

## 🚀 Getting Started

Clone and run the project:

```bash
git clone https://github.com/alizain9/Threads-Assignment.git
cd threads_assignment
flutter pub get
flutter run
