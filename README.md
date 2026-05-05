# 🌱 Prakash Agro App

> A modern Flutter-based mobile application designed to simplify agricultural services and provide a smooth user experience.

---

## 🚀 Badges

![Flutter](https://img.shields.io/badge/Flutter-Framework-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-Language-blue?logo=dart)
![Firebase](https://img.shields.io/badge/Firebase-Backend-orange?logo=firebase)

![Platform](https://img.shields.io/badge/Platform-Android-green)
![Status](https://img.shields.io/badge/Status-Active-success)

![Repo Size](https://img.shields.io/github/repo-size/prajwalchaudhari60/prakash_agro_app)
![Stars](https://img.shields.io/github/stars/prajwalchaudhari60/prakash_agro_app?style=social)
![Forks](https://img.shields.io/github/forks/prajwalchaudhari60/prakash_agro_app?style=social)
![Issues](https://img.shields.io/github/issues/prajwalchaudhari60/prakash_agro_app)

## 📱 Project Overview

**Prakash Agro App** is an Android application built using Flutter that helps users interact with agricultural services efficiently. The app focuses on simplicity, performance, and real-world usability.

It includes authentication, a clean dashboard, and a scalable structure for future enhancements like e-commerce and order tracking.

---

## ✨ Features

* 🔐 OTP-based Phone Authentication (Firebase)
* 📲 Clean and user-friendly UI
* 🏠 Dashboard screen for navigation
* 🌍 Country code picker support
* ⚡ Fast and responsive performance
* 🔥 Firebase backend integration

---

## 🛠️ Tech Stack

| Technology    | Description               |
| ------------- | ------------------------- |
| Flutter       | Cross-platform UI toolkit |
| Dart          | Programming language      |
| Firebase Auth | Phone OTP authentication  |
| Material UI   | UI components             |

---

## 📸 Screenshots

### Preview

<p align="center">
  <img src="screenshots/interface.jpeg" width="220" height="450" style="object-fit:cover;"/>
  <img src="screenshots/login.jpeg" width="220" height="450" style="object-fit:cover;"/>
  <img src="screenshots/dashboard.jpeg" width="220" height="450" style="object-fit:cover;"/>
</p>

### View in Full Size

🔗 [Interface](screenshots/interface.jpeg)  
🔗 [Login](screenshots/login.jpeg)  
🔗 [Dashboard](screenshots/dashboard.jpeg)

---

## ⚙️ Installation & Setup

1. Clone the repository:

```bash
git clone https://github.com/prajwalchaudhari60/prakash_agro_app.git
```

2. Navigate to project folder:

```bash
cd prakash_agro_app
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

---

## 🔐 Firebase and Secret Configuration

1. Copy `.env.example` to `.env` and fill in your Firebase values.
2. Keep `.env` local and do not commit it.
3. Keep `android/app/google-services.json` local; use `android/app/google-services.json.template` as a template.
4. If the file was previously tracked by git, run:

```bash
git rm --cached android/app/google-services.json
```

5. For CI or production builds, use `--dart-define` or your CI secret store:

```bash
flutter run --dart-define=FIREBASE_API_KEY=...
```

---

## 🔒 Firebase Security Best Practices

* Use Firebase Security Rules for Firestore and Storage.
* Restrict API keys in the Google Cloud Console to the Android/iOS bundle IDs and web origins that you trust.
* Disable unused Firebase services and remove old API keys.
* Enforce authentication in Firestore rules before permitting reads or writes.
* Use Firebase App Check if you need to protect backend access from unauthorized apps.

## 📂 Project Structure

```
lib/
 ┣ screens/
 ┣ widgets/
 ┣ services/
 ┗ main.dart
```

---

## 🎯 Future Enhancements

* 🛒 Add product purchase feature
* 📦 Order tracking system
* 📊 Admin panel
* 🌐 Multi-language support

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork this repository and submit a pull request.

---

## 📧 Contact

* GitHub: [https://github.com/prajwalchaudhari60](https://github.com/prajwalchaudhari60)

---

## ⭐ Show Your Support

If you like this project, give it a ⭐ on GitHub!

---

> Built with ❤️ using Flutter
