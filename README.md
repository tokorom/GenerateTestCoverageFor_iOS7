GenerateTestCoverageFor_iOS7 [![build](https://travis-ci.org/tokorom/GenerateTestCoverageFor_iOS7.png?branch=master)](https://travis-ci.org/tokorom/GenerateTestCoverageFor_iOS7) [![coverage](https://coveralls.io/repos/tokorom/GenerateTestCoverageFor_iOS7/badge.png)](https://coveralls.io/r/tokorom/GenerateTestCoverageFor_iOS7)
============================

Support to get the test coverage in iOS7.

## Usage

Add to [GenerateTestCoverageFor_iOS7](GenerateTestCoverageFor_iOS7) subdirectory to your project

and change your build settings.

- Instrument Program Flow: `Yes`
- Generate Test Coverage Files: `Yes`

## Advanced Usage

### CUI test command sample

```sh
xcodebuild test \
    -scheme Tests \
    -destination "name=iPhone Retina (4-inch 64-bit),OS=7.0" \
    GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
    GCC_GENERATE_TEST_COVERAGE_FILES=YES
```

### Send to [Coverstory](http://code.google.com/p/coverstory/)

```sh
xcodebuild test \
    -scheme Tests \
    -destination "name=iPhone Retina (4-inch 64-bit),OS=7.0" \
    OBJROOT=tmp \
    GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES \
    GCC_GENERATE_TEST_COVERAGE_FILES=YES

/Applications/CoverStory.app/Contents/MacOS/CoverStory tmp
```

### When you don't want to call `__gcov_flush()`

```objective-c
#define UNUSE_GCOV_FLUSH //< -DUNUSE_GCOV_FLUSH
```

But `USE_GCOV_FLUSH` takes precedence over `UNUSE_GCOV_FLUSH`.

## Setup

### Using CocoaPods

```ruby
// Podfile
target :YourTestsTarget do
  pod 'GenerateTestCoverageFor_iOS7'
end
```

and

```shell
pod install
```

### Install manually

Add [GenerateTestCoverageFor_iOS7](GenerateTestCoverageFor_iOS7) subdirectory to your project.
