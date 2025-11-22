#!/bin/bash
# Simple Build Script for IIT Palakkad Student App

echo "========================================="
echo "IIT Palakkad Student App - Build Script"
echo "========================================="
echo ""

# Check if Flutter is available
if ! command -v flutter &> /dev/null; then
    echo "❌ ERROR: Flutter is not installed or not in PATH"
    echo ""
    echo "Please install Flutter first:"
    echo "https://docs.flutter.dev/get-started/install"
    echo ""
    echo "Or run this script from an environment where Flutter is available"
    echo "(like GitHub Codespaces, VS Code Dev Container, etc.)"
    echo ""
    exit 1
fi

# Find the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "📁 App directory: $SCRIPT_DIR"
cd "$SCRIPT_DIR" || exit 1

echo ""
echo "🔍 Checking Flutter setup..."
flutter doctor --android-licenses 2>/dev/null || echo "Run 'flutter doctor --android-licenses' to accept licenses"

echo ""
echo "🧹 Cleaning previous builds..."
flutter clean

echo ""
echo "📦 Getting dependencies..."
flutter pub get

if [ $? -ne 0 ]; then
    echo "❌ Failed to get dependencies"
    exit 1
fi

echo ""
echo "========================================="
echo "What would you like to do?"
echo "========================================="
echo "1) Build APK (Release) - Recommended"
echo "2) Build APK (Debug)"
echo "3) Run on connected device"
echo "4) Just test compile"
echo "5) Exit"
echo ""
read -p "Enter choice (1-5): " choice

case $choice in
    1)
        echo ""
        echo "🔨 Building Release APK..."
        echo "⏱️  This will take 3-5 minutes..."
        echo ""

        flutter build apk --release

        if [ $? -eq 0 ]; then
            echo ""
            echo "========================================="
            echo "✅ SUCCESS! APK Built"
            echo "========================================="
            echo ""
            echo "📱 APK Location:"
            echo "$SCRIPT_DIR/build/app/outputs/flutter-apk/app-release.apk"
            echo ""
            if [ -f "$SCRIPT_DIR/build/app/outputs/flutter-apk/app-release.apk" ]; then
                SIZE=$(du -h "$SCRIPT_DIR/build/app/outputs/flutter-apk/app-release.apk" | cut -f1)
                echo "📊 File Size: $SIZE"
            fi
            echo ""
            echo "✅ You can now install this APK on any Android device!"
        else
            echo ""
            echo "❌ Build failed - check errors above"
            exit 1
        fi
        ;;

    2)
        echo ""
        echo "🔨 Building Debug APK..."
        flutter build apk --debug

        if [ $? -eq 0 ]; then
            echo ""
            echo "✅ Debug APK built at:"
            echo "$SCRIPT_DIR/build/app/outputs/flutter-apk/app-debug.apk"
        fi
        ;;

    3)
        echo ""
        echo "📱 Available devices:"
        flutter devices
        echo ""
        echo "🚀 Running app..."
        flutter run
        ;;

    4)
        echo ""
        echo "🔍 Testing compilation..."
        flutter analyze
        ;;

    5)
        echo "Exiting..."
        exit 0
        ;;

    *)
        echo "Invalid choice"
        exit 1
        ;;
esac

echo ""
echo "========================================="
echo "Done!"
echo "========================================="
