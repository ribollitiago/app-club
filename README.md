# App Club 🏥

A cross-platform mobile application built for a healthcare benefits club, enabling members to schedule medical consultations, browse accredited healthcare partner networks, and manage digital member profiles.

---

## Highlights & Features

- **Digital Membership Card** — Quick access to member authentication and status verification.
- **Consultation & Partner Directory** — Search accredited clinics, specialists, and medical facilities.
- **Postal Code Autofill** — Seamless address validation and lookup via the ViaCep API.
- **Reactive State Management** — MobX-driven observable states, actions, and reactions for high performance and smooth UI rendering.
- **Firebase Backend** — Secure authentication and cloud data persistence.
- **Responsive Layouts** — Material Design principles tailored for both Android and iOS devices.

---

## Tech Stack

| Layer | Technology |
|---|---|
| Platform | Flutter / Dart |
| State Management | MobX (`flutter_mobx`, `mobx_codegen`) |
| Backend & Auth | Firebase Auth, Firebase Firestore |
| API Integrations | ViaCep REST API |
| Architecture | Layered Architecture (Models, Stores, Views, Services) |

---

## Project Structure

```
lib/
├── app/
│   ├── modules/
│   │   ├── auth/          # Authentication flows and sign-in widgets
│   │   ├── home/          # Main navigation dashboard
│   │   ├── partner/       # Partner listings and medical clinic directory
│   │   └── profile/       # User profile and virtual membership ID
│   ├── shared/
│   │   ├── models/        # Data transfer objects and entities
│   │   ├── services/      # HTTP clients and Firebase bridges
│   │   └── widgets/       # Reusable UI components
│   └── app_widget.dart
└── main.dart
```

---

## Getting Started

### Prerequisites

- Flutter SDK (v3.0.0 or higher)
- Android Studio / Xcode
- A valid `google-services.json` (Android) and `GoogleService-Info.plist` (iOS) in the respective platform folders

### Installation & Run

```bash
# Clone the repository
git clone https://github.com/ribollitiago/app-club.git
cd app-club

# Install dependencies
flutter pub get

# Run on connected device or emulator
flutter run
```

---

## Author

**Tiago Ribolli Blasquez**  
[linkedin.com/in/tiagoribolli](https://linkedin.com/in/tiago-ribolli-blasquez-060810244) · [github.com/ribollitiago](https://github.com/ribollitiago)
