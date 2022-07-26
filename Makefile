analyze_size_arm64:
	@if not exist "build_app\arm64" mkdir build_app\arm64 && cd build_app\arm64	
	@flutter build apk --analyze-size --target-platform=android-arm64
	@copy build\app\outputs\flutter-apk\app-release.apk build_app\arm64\arm64.apk
analyze_size_armeabi:
	@if not exist "build_app\armeabi" mkdir build_app\armeabi && cd build_app\armeabi	
	@flutter build apk --analyze-size --target-platform=android-arm
	@copy build\app\outputs\flutter-apk\app-release.apk build_app\armeabi\armeabi.apk
analyze_size_x86_64:
	@if not exist "build_app\x86_64" mkdir build_app\x86_64 && cd build_app\x86_64	
	@flutter build apk --analyze-size --target-platform=android-x64
	@copy build\app\outputs\flutter-apk\app-release.apk build_app\x86_64\x86_64.apk
build_split:
	@if not exist "build_app\arm64" mkdir build_app\arm64 && cd build_app\arm64	
	@if not exist "build_app\armeabi" mkdir build_app\armeabi && cd build_app\armeabi
	@if not exist "build_app\x86_64" mkdir build_app\x86_64 && cd build_app\x86_64
	@flutter build apk --split-per-abi
	@copy build\app\outputs\flutter-apk\app-arm64-v8a-release.apk build_app\arm64\arm64.apk
	@copy build\app\outputs\flutter-apk\app-x86_64-release.apk build_app\x86_64\x86_64.apk
	@copy build\app\outputs\flutter-apk\app-armeabi-v7a-release.apk build_app\armeabi\armeabi.apk
build_all:
	@if not exist "build_app\all_target" mkdir build_app\all_target && cd build_app\all_target	
	@flutter build apk
	@copy build\app\outputs\flutter-apk\app-release.apk build_app\all_target\all_target.apk