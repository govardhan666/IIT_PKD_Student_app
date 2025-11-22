#!/bin/bash
# Setup and Run Script for IIT Palakkad Student App

echo "========================================="
echo "IIT Palakkad Student App - Setup & Run"
echo "========================================="
echo ""

# Navigate to the app directory
cd /home/user/IIT_PKD_Student/iitpkd_student_app

echo "✓ Changed to app directory"
echo ""

# Clean any previous builds
echo "🧹 Cleaning previous builds..."
flutter clean

echo "✓ Clean complete"
echo ""

# Get dependencies
echo "📦 Installing dependencies..."
flutter pub get

echo "✓ Dependencies installed"
echo ""

# Run the app
echo "🚀 Launching app..."
echo ""
echo "If you see the Flutter counter demo, please:"
echo "1. Stop the app (Ctrl+C)"
echo "2. Run: flutter run --no-hot-reload"
echo ""

flutter run
