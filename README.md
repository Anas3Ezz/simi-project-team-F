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
| <img src="https://private-user-images.githubusercontent.com/245732664/543930248-c29290e4-c817-4396-b459-78fb0d98eb9f.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMwMjQ4LWMyOTI5MGU0LWM4MTctNDM5Ni1iNDU5LTc4ZmIwZDk4ZWI5Zi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0xM2RlOWUzNzYyYTI3NTM2ODgwMDQxNGEzODhmNjk3YTBkOWQzYWU1ZDcyYzlmNjdjZjg4ZGE0NzBlZWZmMTU1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.634C0uFjbpOK1j09T8XOW9NBqlZmw38DNvRdEp_oXFY" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543930403-918d1517-0e87-412f-a8bc-0e0122f72c00.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMwNDAzLTkxOGQxNTE3LTBlODctNDEyZi1hOGJjLTBlMDEyMmY3MmMwMC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lMDY1YzkwNzhkY2I1NjU5NjAzNTA3Yjc2NjRiZDk3NmFmMzAzZTYxYzEwODg0ZjI2YjUxZTViMWViMGQyNWE5JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.qETqHW7vL4VqnQTatUbyGe4P2qwZaUd3ClcE2a_9lvs" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543930690-3499efb3-5312-4b3b-9ad2-1ee3f13b9e0c.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMwNjkwLTM0OTllZmIzLTUzMTItNGIzYi05YWQyLTFlZTNmMTNiOWUwYy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0yNDFkOWMzZWY3MTg1YmJiN2IzZDAwYTA5OWE0OGI1NmRhZGRjMWZiNTkyYTA5MzhkOTUxZGVhNzdmY2JlNDcxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.E_OCZxJ1A7iIJ3u99q3ypHayinOZNQGt4R5UFsR9bXA" width="200" /> |
| <img src="https://private-user-images.githubusercontent.com/245732664/543930882-c0f1cc5f-9641-41d0-8b47-6fc1d4c33057.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMwODgyLWMwZjFjYzVmLTk2NDEtNDFkMC04YjQ3LTZmYzFkNGMzMzA1Ny5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hNzQxNGFkNzQ2MjVlY2JhNTAzNGJmNWRmYzZiMzExNjM3NjkwYmFiYTVkY2Q5ZDgxMjJmMzczNWRjMjRmMGIxJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.kicfXSiKr6Jc2IwgpLyePojJSkS9tlaCnOm_UEwLgBc" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543931035-c16bddc5-081c-4507-8010-2c9c3a980cc9.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMxMDM1LWMxNmJkZGM1LTA4MWMtNDUwNy04MDEwLTJjOWMzYTk4MGNjOS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1jNmYzM2Q1NTJlNmM0ZGM5MWQyMDU3NWRjYTQ2YjRmODk3ZjJmYzYxOGY4NTFjYzljOGM5OGQ5MTc5NDU2NmYyJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9._J2Su6LIjyYdMcDEu_NB138YfLKpvkRfgNGNzPPS51o" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543931245-0e119ff4-7b43-424c-818a-59f79f42a295.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMxMjQ1LTBlMTE5ZmY0LTdiNDMtNDI0Yy04MThhLTU5Zjc5ZjQyYTI5NS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0xZDlmMjY5M2VlMGNlM2M4ZTMyYzg0M2E3OWU5ZjQyMDZkNWJkNmU1Mjk1NjYyOTUwMzlmMzZmNjM0YzIzNmZiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.1TXEC8Md8HUIXg-sRbvLXGAGxczGLWCrXnZb7f0q5mU" width="200" /> |

| Booking & Chat | Notifications & Settings | Profile |
|:---:|:---:|:---:|
| <img src="https://private-user-images.githubusercontent.com/245732664/543931685-d50cad4b-2c32-4a7b-859a-aeec10c38f3e.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMxNjg1LWQ1MGNhZDRiLTJjMzItNGE3Yi04NTlhLWFlZWMxMGMzOGYzZS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0xZGZkYzQzOWQ2ZTI1MDFkYmJjNGFmYWMyOTY4ZTQyY2IzMjcwNjEzYTIzYzRjMmJiYTMxNmEzZTVlYWFlMmYzJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.-5IRsE86BtLoHRtoPfDQxAVvvDw0UH81qnA2H8H7HdQ" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543931894-57bdabef-f2b9-4d36-97b6-0ca8cdbc4e4e.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMxODk0LTU3YmRhYmVmLWYyYjktNGQzNi05N2I2LTBjYThjZGJjNGU0ZS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1lZGQwMDNmYjEwNWM5Njg5MzcyNjFkMmZhMDYyM2Q3ZDJiODVlYjA5Y2MyMDUyYWZlMTEwYmNmMmVhM2FjNDhjJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.zVVSRaH8K1jDVp4v5tvCYrwdy92yw3Iz3G5QsAqY-OQ" width="200" /> | <img src="https://private-user-images.githubusercontent.com/245732664/543932016-b440c027-2d93-4dd5-8496-528dbeb73a5a.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMyMDE2LWI0NDBjMDI3LTJkOTMtNGRkNS04NDk2LTUyOGRiZWI3M2E1YS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1kZDViNWIyNTc3ZjI0NDZmZWJmNGUyMGMwOGM0NWE4NjliYjZmNWE2OTgxOTg5MTRmMjllMDZhNjRlNjVkNmY0JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.5OELz5DrqvKXDu2XtIcCh-zic73A4a9jwUP0b2acRpY" width="200" /> |

| More Views |
|:---:|
| <img src="https://private-user-images.githubusercontent.com/245732664/543932108-b41b7bed-9c4a-46f8-a9c5-e5d22cab21d0.png?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NzAxMjk0MDMsIm5iZiI6MTc3MDEyOTEwMywicGF0aCI6Ii8yNDU3MzI2NjQvNTQzOTMyMTA4LWI0MWI3YmVkLTljNGEtNDZmOC1hOWM1LWU1ZDIyY2FiMjFkMC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjYwMjAzJTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI2MDIwM1QxNDMxNDNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT03MThmOTFlMjgxNzMwZmUxN2JhNzBiOGY5YzZlZGViM2RlMTBjNjExM2IyZDk2MjVhMTk4NDYxZGQ3MTA0ZmNlJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.N9TX4Xi9gigEFqOaLUcGSqxdG4WnfSBew7pxLMmEniQ" width="200" /> |

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
