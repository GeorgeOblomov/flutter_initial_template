build_entities:
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs

release_android:
	flutter build apk --flavor google -t lib/flavors/google.dart --split-per-abi
	flutter build apk --flavor huawei -t lib/flavors/huawei.dart

release_ios:
	flutter build ios --release