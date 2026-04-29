# Movie App - Flutter Auth & Onboarding Flow

A modern, responsive, and localized movie discovery application built with Flutter. This project focuses on a seamless user onboarding experience and a robust authentication system including Registration, Login, and Profile management.


## 🚀 Features

* **Cinematic Landing Page:** A high-impact entry screen with a dynamic background.
* **Interactive Onboarding:** A custom-built slider that guides users through the app's value proposition.
* **Dynamic Avatar Selection:** * Carousel-based selection in the Register screen.
    * Bottom-sheet grid selection in the Update Profile screen.
* **Complete Auth Flow:** * Login & Registration with real-time validation.
    * "Forget Password" and "Reset Password" workflows.
* **Localization (i18n):** Full support for English and Arabic using the `easy_localization` package.
* **Persistent User State:** Uses `SharedPreferences` to detect first-time users and skip onboarding on subsequent launches.
* **Responsive UI:** Implemented using a custom `SizeConfig` to ensure pixel-perfect layouts across all device sizes.

---


## 📂 Project Structure

lib/
├── core/
│   ├── utils/
│   │   ├── app_assets.dart      # Asset paths
│   │   ├── app_colors.dart      # Global color palette
│   │   ├── app_routes.dart      # Centralized routing constants
│   │   ├── app_theme.dart       # Light/Dark theme configuration
│   │   ├── size_config.dart     # Responsive layout utility
│   │   └── validator/           # Form validation logic
│   └── widgets/                 # Reusable global UI components
├── ui/
│   └── screens/
│       ├── auth/                # Login, Register, Forget Password, Update
│       ├── home_screen/         # Landing page
│       └── onboarding_screen/   # App walkthrough
└── main.dart                    # App entry point & localization setup


---

