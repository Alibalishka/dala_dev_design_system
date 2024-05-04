.PHONY: get gen-images install-pods run upgrade upgrade-major deep-clean gen-build gen-build-delete gen-clean gen-watch gen-pigeon create-splash prepare first-run metrics-analyze metrics-unused-files metrics-unused-l10n metrics-unused-code set-icon google-localizations emulator simulator stats analyze-code test

get:
	@echo "* Getting latest dependencies *"
	@flutter pub get

install-pods:
	@echo "* Installing pods *"
	@(cd ./ios; arch -x86_64 pod install)

run:
	@echo "* Running app *"
	@flutter run

upgrade: get
	@echo "* Upgrading dependencies *"
	@flutter pub upgrade

upgrade-major: get
	@echo "* Upgrading dependencies --major-versions *"
	@flutter pub upgrade --major-versions

deep-clean:
	@echo "* Performing a deep clean *"
	@echo "* Running flutter clean *"
	@flutter clean
	@echo "* Cleaning iOS specific files *"
	@sh ./scripts/clean_ios.sh
	@make get
	@make install-pods

gen-build: get
	@echo "* Running build runner *"
	@flutter pub run build_runner build

gen-build-delete: get
	@echo "* Running build runner with deletion of conflicting outputs *"
	@flutter pub run build_runner build --delete-conflicting-outputs

gen-clean:
	@echo "* Cleaning build runner *"
	@flutter pub run build_runner clean

gen-watch:
	@echo "* Running build runner in watch mode *"
	@flutter pub run build_runner watch

gen-pigeon: get
	@echo "* Running pigeon generation *"
	flutter pub run pigeon \
	 --input "pigeons/cloud_payments.dart" \
	 --dart_out "lib/src/generated/cloud_payments.g.dart" \
 	 --java_out "android/app/src/main/java/dev/davranarifzhanov/cloud_payments/CloudPayments.java" \
	 --java_package "dev.davranarifzhanov.cloud_payments" \
	 --objc_header_out "ios/Runner/cloud_payments.h" \
 	 --objc_source_out "ios/Runner/cloud_payments.m" \
 	 --dart_null_safety

gen-images:
	@echo "* Generating image strings *"
	spider build


create-splash: get
	@echo "* Generating Splash screens *"
	@flutter pub run flutter_native_splash:create

prepare: get gen-build-delete create-splash

generate-o:
	@echo "* Generating localizations -o*"
	@flutter pub run easy_localization:generate -O lib/src/core/resources/ -o localization_loader.g.dart  -S assets/translations/

generate-f:
	@echo "* Generating localizations -f *"
	@flutter pub run easy_localization:generate -f keys -o localization_keys.g.dart -S assets/translations/ -O lib/src/core/resources/


	


first-run: prepare run

define run_metrics
	@echo "* $(1) using Dart Code Metrics *"
	@flutter pub run dart_code_metrics:metrics $(2) lib \
			--exclude={/**.g.dart,/**.gr.dart,/**.gen.dart,/**.freezed.dart,/**.template.dart,}
endef

define run_metrics_unused
	$(call run_metrics,Checking for unused $(1),check-unused-$(1))
endef

metrics-analyze:
	$(call run_metrics,Analyzing the codebase,analyze)

metrics-unused-files:
	$(call run_metrics_unused,files)

metrics-unused-l10n:
	$(call run_metrics_unused,l10n)

metrics-unused-code:
	$(call run_metrics_unused,code)


analyze-code:
	@echo "* Running code analyzer *"
	@sh ./scripts/flutter_analyze.sh

test:
	@echo "* Running tests *"
	@flutter test


set-icon: get
	@echo "* Removing alpha channel from icon *"
	@sh ./scripts/icon_remove_alpha.sh
	@echo "* Generating app icons *"
	@flutter pub run flutter_launcher_icons:main -f flutter_icons.yaml

google-localizations:
	@echo "* Getting dependencies for google localizer *"
	@(cd ./tool/google_localizer; fvm dart pub get)
	@echo "* Generating automated localizations *"
	@dart ./tool/google_localizer/main.dart "./lib/src/common/l10n/"

#setup:
#	@echo "* Getting dependencies for setup tool *"
#	@(cd ./tool/setup_clone; fvm dart pub get)
#	@echo "* Setting up the project *"
#	@fvm dart ./tool/setup_clone/main.dart $(NAME)

emulator:
	@echo "* Opening an android emulator *"
	@open -a Android\ Emulator.app

simulator:
	@echo "* Opening an iOS simulator *"
	@open -a Simulator

stats:
	@echo "* Running cloc *"
	@cloc .