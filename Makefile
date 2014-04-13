SCHEME = Tests
OBJDIR = "build"

clean:
	xcodebuild clean \
		-configuration Debug \
		-sdk iphonesimulator \

test:
	xcodebuild test \
		-configuration Debug \
		-sdk iphonesimulator \
		-scheme $(SCHEME) \

test-with-coverage:
	xcodebuild clean test \
		-configuration Debug \
		-sdk iphonesimulator \
		-scheme $(SCHEME) \
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
