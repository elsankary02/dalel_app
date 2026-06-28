# 📚 Dalel - Historical Explorer App

Dalel is a modern Flutter application designed to help users discover and explore historical civilizations, famous historical figures, ancient wars, books, and historical artifacts from around the world.

The application provides an intuitive user experience with Firebase integration for authentication, cloud database, and storage services.

---

## 📱 Preview

![Image](https://github.com/user-attachments/assets/b891833c-0f32-4ac9-8cb0-5d5fcb47cca5)
![Image](https://github.com/user-attachments/assets/69c86153-050c-4e02-a717-a35960686a30)

---

## ✨ Features

### 🔐 Authentication

* Sign Up with Email & Password
* Login
* Forgot Password
* Logout
* Firebase Authentication

### 🏛️ Historical Content

* Historical Periods
* Historical Characters
* Ancient Wars
* Historical Books
* Historical Souvenirs
* Detailed information pages

### 🔍 Search

* Search historical characters
* Search historical periods
* Fast and simple search experience

### 👤 User Profile

* User profile page
* Edit profile
* Account settings
* Logout

### ☁️ Firebase Integration

* Firebase Authentication
* Cloud Firestore

### 🌍 Localization

* Easy Localization

### 🎨 Modern UI

* Responsive design
* Clean architecture
* Smooth navigation
* Reusable widgets

---

# 🛠 Tech Stack

### Framework

* Flutter
* Dart

### State Management

* Flutter Bloc (Cubit)

### Backend

* Firebase Authentication
* Cloud Firestore

### Packages

* flutter_bloc
* firebase_core
* firebase_auth
* cloud_firestore
* firebase_storage
* easy_localization
* flutter_svg
* carousel_slider
* cached_network_image
* readmore
* shared_preferences

---

# 📂 Project Structure

```text
lib/
│
├── app/
├── core/
│   ├── components/
│   ├── constants/
│   ├── functions/
│   ├── services/
│   ├── themes/
│   └── utils/
│
├── feature/
│   ├── auth/
│   ├── home/
│   ├── search/
│   ├── profile/
│   ├── cart/
│   ├── favorite/
│   └── onboarding/
│
└── main.dart
```

---

# 🔥 Firebase Services

### Firebase Authentication

* User Registration
* Login
* Password Reset
* Session Management

### Cloud Firestore

* Store application data
* Store user information
* Retrieve historical content
* Real-time synchronization

### Firebase Storage

* Store historical images
* Download images securely

---

# 🚀 Getting Started

### Clone the Repository

```bash
git clone https://github.com/elsankary02/dalel_app.git
```

### Navigate to the Project

```bash
cd dalel_app
```

### Install Dependencies

```bash
flutter pub get
```

### Configure Firebase

1. Create a Firebase Project.
2. Enable Authentication (Email & Password).
3. Create a Cloud Firestore Database.
4. Enable Firebase Storage.
5. Add your `google-services.json` (Android) and `GoogleService-Info.plist` (iOS).

### Run the App

```bash
flutter run
```

---

# 📸 Application Screens

* Splash Screen
* Onboarding
* Login
* Register
* Forgot Password
* Home
* Historical Period Details
* Historical Character Details
* Search
* Books
* Souvenirs
* Profile

---

# 🏗 Architecture

This project follows **Clean Architecture** principles combined with **Bloc (Cubit)** for scalable and maintainable code.

```text
Presentation
      │
      ▼
Cubit (Business Logic)
      │
      ▼
Repository
      │
      ▼
Firebase Services
```

---

# 🎯 Future Improvements

* ❤️ Favorites
* 🛒 Shopping Cart
* 🌙 Dark Mode
* 🌐 Arabic & English Support
* 📶 Offline Mode

---

# 👨‍💻 Developer

**Mohamed Ebrahim**

Flutter Developer

GitHub:
https://github.com/elsankary02

LinkedIn:
https://www.linkedin.com/in/mohamed-ibrahim-3734b2330

---

## ⭐ Show Your Support

If you found this project helpful, please consider giving it a **⭐ Star** on GitHub.

Your support helps motivate future improvements and new open-source projects.

---

## 📄 License

This project is licensed under the **MIT License**.
