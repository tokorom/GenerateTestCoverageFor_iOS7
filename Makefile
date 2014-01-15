SCHEME = Tests
DESTINATION = "name=iPhone Retina (4-inch 64-bit),OS=7.0"
OBJDIR = "build"

clean:
	xcodebuild clean \
		-configuration Debug \
		-sdk iphonesimulator \
		-destination $(DESTINATION)

test:
	xcodebuild test \
		-configuration Debug \
		-sdk iphonesimulator \
		-scheme $(SCHEME) \
		-destination $(DESTINATION)

test-with-coverage:
	xcodebuild test \
		-configuration Debug \
		-sdk iphonesimulator \
		-scheme $(SCHEME) \
		-destination $(DESTINATION) \
		OBJROOT=$(OBJDIR) \
		GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
		GCC_GENERATE_TEST_COVERAGE_FILES=YES \
		OTHER_CFLAGS="-DUSE_GCOV_FLUSH"

coverstory:
	/Applications/CoverStory.app/Contents/MacOS/CoverStory $(OBJDIR) &

coveralls:
	coveralls \
		--exclude App \
		--exclude Tests \
		--verbose
