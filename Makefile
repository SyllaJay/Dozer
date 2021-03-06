build:
	@brew bundle
	@carthage bootstrap --cache-builds --platform osx
	@mkdir -p Dozer/Other/Generated
	@swiftgen
	@xcodegen 
	@xed "."

release:
	@echo "Running Fastlane deploy"
	@bundle exec fastlane release

.PHONY: build release 
