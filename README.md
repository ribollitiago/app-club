# app-club

Cross-platform Flutter app for a benefits club focused on medical consultations — featuring Firebase integration, real-time data, and reactive state management with MobX.

---

## Features

- 🔐 **Firebase Authentication** — secure user sign-up and login
- 📡 **Real-time data** — live updates powered by Cloud Firestore
- 🗂️ **MobX state management** — reactive stores for predictable, scalable UI state
- 📮 **ZIP code lookup** — automatic address fill-in via the ViaCep API
- 🏥 **Medical consultation focus** — built around a company benefits program for health services
- 📱 **Cross-platform** — runs on Android and iOS from a single codebase

---

## Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| Language | Dart |
| Authentication | Firebase Auth |
| Database | Cloud Firestore |
| State Management | MobX |
| Address API | ViaCep |

---

## Getting Started

```bash
# Clone the repository
git clone https://github.com/ribollitiago/app-club.git
cd app-club

# Install Flutter dependencies
flutter pub get

# Configure Firebase
# Add your google-services.json (Android) and GoogleService-Info.plist (iOS)
# to the respective platform directories.

# Run the app
flutter run
```

> **Requirements:** Flutter SDK ≥ 3.x, Dart ≥ 3.x, Firebase project with Auth and Firestore enabled.

---

## Author

**Tiago Ribolli Blasquez**  
[linkedin.com/in/tiagoribolli](https://www.linkedin.com/in/tiago-ribolli-blasquez-060810244) · [github.com/ribollitiago](https://github.com/ribollitiago)
