# 🚀 Quick Start Guide - IIT Palakkad Student App

## ⚠️ If You're Seeing the Flutter Counter Demo

Don't panic! The app is correctly built. You just need to follow these steps:

---

## 📋 Step-by-Step Setup

### **Option 1: Use the Run Script (Recommended)**

```bash
cd /home/user/IIT_PKD_Student/iitpkd_student_app
./run_app.sh
```

### **Option 2: Manual Setup**

```bash
# 1. Navigate to the app directory
cd /home/user/IIT_PKD_Student/iitpkd_student_app

# 2. Clean previous builds
flutter clean

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

---

## 🔍 Troubleshooting

### **Still seeing Flutter Demo?**

If you're still seeing the counter demo after following the steps above, try:

1. **Stop the app completely**
   - Press `Ctrl + C` in terminal
   - Or close the app on your device

2. **Clear app data on device**
   - Go to Settings → Apps → Flutter Demo → Clear Data
   - Or uninstall the app completely

3. **Run with full rebuild**
   ```bash
   flutter run --no-hot-reload
   ```

4. **Run in release mode**
   ```bash
   flutter run --release
   ```

---

## ✅ Verify It's Working

Once the app launches correctly, you should see:

1. **Splash Screen**
   - IIT Palakkad logo (school icon)
   - "IIT Palakkad" title
   - "Student Portal" subtitle
   - Loading indicator

2. **Login Page** (after 2 seconds)
   - Purple app bar
   - "IIT Palakkad Student Portal" title
   - Username and Password fields
   - Login button
   - Help button

**NOT** the Flutter counter demo with "Flutter Demo Home Page"!

---

## 📱 App Structure

Once logged in, you'll see 5 bottom navigation tabs:

1. 🏠 **Home** - Weather, Classes, Quick Access
2. 📅 **Timetable** - Your weekly schedule
3. 🚌 **Bus** - Bus schedules
4. 🍽️ **Mess** - Mess menu
5. 👤 **Account** - Profile & settings

---

## 🐛 Common Issues

### **Issue: Dependencies not installing**
```bash
flutter pub cache repair
flutter pub get
```

### **Issue: Build errors**
```bash
flutter clean
flutter pub get
flutter run
```

### **Issue: App won't start**
- Check Flutter version: `flutter --version`
- Check device connection: `flutter devices`
- Update Flutter: `flutter upgrade`

---

## 📞 Need Help?

1. Check `README.md` for full documentation
2. Check `PROJECT_SUMMARY.md` for project details
3. Verify you're in the correct directory:
   ```bash
   pwd
   # Should show: /home/user/IIT_PKD_Student/iitpkd_student_app
   ```

4. Verify main.dart is correct:
   ```bash
   head -30 lib/main.dart
   # Should show IITPKDStudentApp, not MyApp
   ```

---

## 🎯 Expected vs Wrong

### ✅ CORRECT (IIT Palakkad App)
- App bar says: "IIT Palakkad"
- Has login page
- Material 3 design with blue/orange colors
- Bottom nav with 5 tabs

### ❌ WRONG (Flutter Demo)
- App bar says: "Flutter Demo Home Page"
- Has counter and + button
- Material 2 design with purple
- No bottom navigation

---

## 💡 Pro Tips

1. **Always run from the correct directory**
   ```bash
   cd /home/user/IIT_PKD_Student/iitpkd_student_app
   ```

2. **Use hot reload during development**
   - Press `r` in terminal for hot reload
   - Press `R` for hot restart
   - Press `q` to quit

3. **Check logs if something's wrong**
   ```bash
   flutter logs
   ```

---

**If you're still seeing the counter demo after all this, please share:**
- Your current directory (`pwd`)
- First 30 lines of `lib/main.dart`
- Output of `flutter run`

The IIT Palakkad Student App is definitely there and correctly built! 🎉
