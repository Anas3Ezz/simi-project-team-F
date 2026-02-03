# 🏥 Medica - Doctor Appointment Booking App

![App Logo](assets/images/Medinova.png)

**Medica** is a comprehensive mobile application built with **Flutter** that streamlines the process of booking medical appointments. It empowers users to discover doctors, schedule consultations, manage health profiles, and communicate directly with healthcare providers.

---

## ✨ Key Features

* **🔐 Authentication**
    * Secure **Sign In** & **Sign Up** with validation.
    * Integration ready for social logins.
* **👨‍⚕️ Doctor Discovery**
    * **Browse:** Comprehensive list of medical professionals.
    * **Search:** Filter doctors by specialty or name.
    * **Profiles:** Detailed doctor info, ratings, and bios.
* **📅 Appointment Management**
    * **Booking:** Smart slot selection picker.
    * **Management:** View and track appointment status.
* **💬 Communication**
    * **Chat:** Real-time messaging with doctors.
    * **Active Status:** See online doctors.
* **🔔 Notifications & Profile**
    * System alerts and personal profile management.

---

## 📱 App Screenshots

Here is a glimpse of the application's user interface:

| Onboarding & Auth | Home & Search | Doctor Details |
|:---:|:---:|:---:|

# Splach Screen
<img width="1080" height="2400" alt="splash_screen" src="https://github.com/user-attachments/assets/918d1517-0e87-412f-a8bc-0e0122f72c00" />

# Sign-in Screen
<img width="1080" height="2400" alt="sign_in" src="https://github.com/user-attachments/assets/3499efb3-5312-4b3b-9ad2-1ee3f13b9e0c" />

# Sign-up Screen
<img width="1080" height="2400" alt="sign_up" src="https://github.com/user-attachments/assets/c0f1cc5f-9641-41d0-8b47-6fc1d4c33057" />

# Home Screen
<img width="1080" height="2400" alt="Home_page" src="https://github.com/user-attachments/assets/c16bddc5-081c-4507-8010-2c9c3a980cc9" />

# Appointment Screen
<img width="1080" height="2400" alt="appointment" src="https://github.com/user-attachments/assets/0e119ff4-7b43-424c-818a-59f79f42a295" />

# Messages Screen
<img width="1080" height="2400" alt="messages" src="https://github.com/user-attachments/assets/d50cad4b-2c32-4a7b-859a-aeec10c38f3e" />

# profile Screen
<img width="1080" height="2400" alt="profile" src="https://github.com/user-attachments/assets/57bdabef-f2b9-4d36-97b6-0ca8cdbc4e4e" />

# Notification Screen
<img width="1080" height="2400" alt="notification" src="https://github.com/user-attachments/assets/b440c027-2d93-4dd5-8496-528dbeb73a5a" />

# All Doctor Sceeen
<img width="1080" height="2400" alt="all_doctors" src="https://github.com/user-attachments/assets/b41b7bed-9c4a-46f8-a9c5-e5d22cab21d0" />

---

## 📂 Project Structure

The project follows a **Clean Architecture** approach with a clear separation of concerns, ensuring scalability and maintainability.

```text
lib/
├── 📂 constants/               # App-wide constants (Strings, URLs, Keys)
│   └── app_strings.dart
│
├── 📂 models/                  # Data Models (JSON Serialization)
│   ├── doctor_model.dart       # Doctor entity structure
│   └── sign_in_user_model.dart # User auth model
│
├── 📂 screens/                 # UI Screens (Views)
│   ├── splash_screen.dart
│   ├── sign_in_screen.dart
│   ├── home_screen.dart
│   ├── all_doctors_screen.dart
│   ├── appointment_detailes_screen.dart
│   ├── messages_screen.dart
│   └── profile_screen.dart
│
├── 📂 theme/                   # App Design System
│   ├── app_colors.dart         # Color palette
│   └── text_styles.dart        # Typography styles
│
├── 📂 widgets/                 # Reusable UI Components
│   ├── 📂 home_screen_widgets/
│   ├── 📂 all_doctors_widgets/
│   ├── 📂 messages_screen_widgets/
│   ├── 📂 notification_screen_widgets/
│   ├── app_validator_widget.dart
│   └── custom_text_form_widget.dart
│
├── 📄 main.dart                # Application Entry Point
└── 📄 medica.dart              # Root Widget (MaterialApp)
