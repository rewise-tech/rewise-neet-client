# rewise-neet-client

flutter clean
flutter pub cache repair  # Repairs/re-downloads pub cache if corrupted
flutter pub get
rm -rf .dart_tool/  # Delete entire build cache folder (safe)
dart run build_runner clean

dart run build_runner watch -d