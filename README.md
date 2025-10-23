# 💧 Hydr — Smart Water Delivery App

A modern Flutter-based **water delivery application** developed for speed, reliability, and seamless customer experience.  
Hydr simplifies the end-to-end process of ordering and managing water deliveries with real-time updates, smooth UI, and optimized performance for the latest Android devices.

---

## 🚀 Key Highlights

- 🧭 **Modern UI/UX** — Intuitive Flutter design with responsive layouts  
- ⚡ **Optimized for Android 16KB Page Management** — Faster load times and better memory efficiency  
- 🛒 **Smart Order Flow** — Simplified order placement, tracking, and management  
- 🔐 **Secure Build Signing** — Integrated with client-provided keystore for release builds  
- 🧩 **Scalable Architecture** — Modular and maintainable project structure for future updates  

---

## 🏗️ Tech Stack

| Category | Technology |
|-----------|-------------|
| Framework | [Flutter](https://flutter.dev/) |
| Language | Dart |
| Backend | Firebase / REST API (configurable) |
| Build Tools | Gradle (AGP 8.9.2 / Gradle 8.11.1) |
| Target Platform | Android (16KB Page Supported) |

---

## ⚙️ Build & Setup Instructions

1. **Clone or Extract the Project**
   ```bash
   git clone <repo-url>
   cd hydr-water-delivery
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **(Optional) Configure Environment**
   - Add your API keys or Firebase configuration in `lib/config/` if applicable.  
   - Ensure the `google-services.json` file is correctly placed in `android/app/`.

4. **Configure App Signing**
   - Place the provided `hydrwater.jks` and `key.properties` in the following locations:
     ```
     android/app/hydrwater.jks
     android/key.properties
     ```
   - Example `key.properties`:
     ```properties
     storePassword=<password>
     keyPassword=<password>
     keyAlias=<alias>
     storeFile=hydrwater.jks
     ```

5. **Build Release App Bundle**
   ```bash
   flutter build appbundle --release
   ```

6. **Locate the Generated AAB**
   ```
   build/app/outputs/bundle/release/app-release.aab
   ```

---

## 🧱 Project Structure

```
lib/
 ┣ 📁 models/          # Data models
 ┣ 📁 screens/         # UI screens and pages
 ┣ 📁 widgets/         # Reusable components
 ┣ 📁 services/        # API and logic handling
 ┗ main.dart           # App entry point
```

---

## 🧭 Version Information

| Property | Value |
|-----------|--------|
| **Version Code** | 2 |
| **Version Name** | 1.0.1 |
| **Changelog** | - Integrated Android 16KB page management<br>- Improved startup performance<br>- Minor UI enhancements |

---

## 🧑‍💻 Developer Information

**Developed by [Sarin Jaiswal](https://github.com/sarinjaiswal)**  
Founder — [Alphafusion Corporation]

For technical queries or deployment support, please contact:  
📧 **alphafusion.corp@gmail.com**

---

## 📦 Delivery Package Includes

- ✅ Full Flutter source code  
- ✅ Configured Gradle and signing setup  
- ✅ Optimized AAB build (release-ready)  
- ✅ Documentation and setup guide  

---

## 🚀 Release & Deployment Checklist

Before uploading to Google Play Console, please verify the following:

### ✅ **Pre-Build**
- [ ] `versionCode` incremented in `android/app/build.gradle`  
- [ ] `versionName` updated (e.g., `1.0.1 → 1.0.2`)  
- [ ] `hydrwater.jks` and `key.properties` are correctly placed  
- [ ] App icon and splash screens verified  
- [ ] All assets and dependencies resolved (`flutter pub get` successful)

### 🧩 **Build**
- [ ] Run `flutter clean` before building  
- [ ] Execute `flutter build appbundle --release`  
- [ ] Verify generated AAB under `build/app/outputs/bundle/release/`  
- [ ] Confirm no errors or warnings in build output  

### 📤 **Play Console Upload**
- [ ] Log in to [Google Play Console](https://play.google.com/console)  
- [ ] Navigate to **Production → Create New Release**  
- [ ] Upload the new `.aab` file  
- [ ] Add updated **Release Notes** (e.g., “Optimized for 16KB page management”)  
- [ ] Ensure **Release name** matches version name  
- [ ] Save and Review release, then **Roll out to Production**

### 🧪 **Post-Release QA**
- [ ] Install from Play Store and verify UI, login, and flow  
- [ ] Check version number in About screen (if applicable)  
- [ ] Validate performance improvements on latest Android devices  

---

> **Hydr — Delivering hydration made smarter.**  
> © 2025 Alphafusion Corporation. All rights reserved.
