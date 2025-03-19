# Momentify 📸✨

Momentify is a social media app where users can share photos, follow other users, like posts, and leave comments. It’s built with **Flutter**, **Firebase** for authentication and storage, and **Provider** for state management. 

---

## Features 🚀

- **User Authentication** 🔐: Sign up, log in, and manage accounts using Firebase Authentication.
- **Image Upload** 📷: Upload photos to Firebase Storage and share with your followers.
- **User Feed** 📰: View posts from users you follow in a beautiful and easy-to-use feed.
- **Like & Comment** ❤️💬: Like and comment on posts from your friends and followers.
- **User Profiles** 👤: Edit your profile and view others’ profiles.
- **Search Functionality** 🔍: Search for users and posts with ease.
- **Real-time Updates** ⚡: Get real-time updates on likes, comments, and new posts.
- **Responsive Design** 📱: Works seamlessly on both mobile and tablet devices.

---

## Screenshots 📸

Here’s a sneak peek at what the app looks like! 👇

### 1. **Login Page** 🔑  
<img src="https://github.com/user-attachments/assets/6a6409d2-baf7-4f32-9625-b7dbf398f792" width="300" alt="Login Screenshot">  
<p>Login screen where users can log into their accounts.</p>

---

### 2. **Sign Up Page** 📝  
<img src="https://github.com/user-attachments/assets/62087744-9d07-442e-9912-b60b1503f944" width="300" alt="Sign Up Screenshot">  
<p>Sign-up screen for new users to create an account.</p>

---

### 3. **Feed Screen** 📰  
<img src="https://github.com/user-attachments/assets/bda73533-8aff-44a9-aec7-f962e613dc07" width="300" alt="Feed Screenshot">  
<p>A typical feed showing user posts with the option to like and comment.</p>

---

### 4. **Search Screen** 🔍  
<img src="https://github.com/user-attachments/assets/eb35916b-9969-4677-8416-bf9939214d7d" width="300" alt="Search Screenshot">  
<p>Search for users.</p>

---

### 5. **Create a Post Screen** ✨  
<img src="https://github.com/Shreesha001/Momentify_Flutter/blob/main/6258117046965487199_121.jpg" width="300" alt="Create Post Screenshot">
<p>The screen to create a new post, upload an image, and share with your followers.</p>

---

### 6. **Profile Screen** 👤  
<img src="https://github.com/user-attachments/assets/d0962dfe-3894-4b83-87d1-b02801069ac1" width="300" alt="Profile Screenshot">  
<p>User profile with the ability to edit and upload a profile photo.</p>

---
## Installation ⚙️

To run this project on your local machine, follow these steps:

1. Clone the repository:  
   `git clone https://github.com/Shreesha001/Momentify_flutter.git`

2. Navigate to the project directory:  
   `cd Momentify_flutter`

3. Install dependencies:  
   `flutter pub get`

4. Set up Firebase:
   - Create a new Firebase project at [Firebase Console](https://console.firebase.google.com/).
   - Add an Android/iOS app to your Firebase project and follow the setup instructions.
   - Download the `google-services.json` (for Android) or `GoogleService-Info.plist` (for iOS) and place it in the appropriate directory (`android/app` for Android, `ios/Runner` for iOS).
   - Enable **Firebase Authentication** (Email/Password) and **Firebase Storage** in the Firebase Console.

5. Run the app:  
   `flutter run`
   
---
## Dependencies 📦

Here are the main dependencies used in this project:

- **firebase_core**: Firebase core functionality.
- **firebase_auth**: Firebase Authentication for user login and sign-up.
- **cloud_firestore**: Firebase Firestore for storing user data and posts.
- **firebase_storage**: Firebase Storage for image uploads.
- **provider**: State management for the app.
- **image_picker**: For selecting images from the gallery or camera.
- **cached_network_image**: For caching and displaying network images efficiently.

---

## Contributing 🤝

Contributions are welcome! If you'd like to contribute to Momentify, please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/YourFeatureName`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/YourFeatureName`).
5. Open a pull request.

---


Happy coding! 🚀✨
