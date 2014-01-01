GenerateTestCoverageFor_iOS7 [![build](https://travis-ci.org/tokorom/GenerateTestCoverageFor_iOS7.png?branch=master)](https://travis-ci.org/tokorom/GenerateTestCoverageFor_iOS7) [![coverage](https://coveralls.io/repos/tokorom/GenerateTestCoverageFor_iOS7/badge.png)](https://coveralls.io/r/tokorom/GenerateTestCoverageFor_iOS7)
============================

Support to get the test coverage in iOS7.

## Usage

All you need to add to [GenerateTestCoverageFor_iOS7](GenerateTestCoverageFor_iOS7) subdirectory to your project.

## Advanced Usage

When you don't want to call `__gcov_flush()`

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
