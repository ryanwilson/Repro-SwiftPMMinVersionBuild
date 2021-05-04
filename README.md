# SwiftPM Min iOS Version Issue

This repo demonstrates an issue with Xcode linking against newer APIs (in this case, SwiftUI).
Originally discovered in https://github.com/firebase/firebase-ios-sdk/issues/7785.

## Use Case

This package wants to offer a new API for those users who are using SwiftUI, but still providing
default functionality that is available for older iOS versions. All APIs are marked appropriately
with `@available` checks.

## Steps to Reproduce

1. Create a new iOS project in Xcode (12.5 is the latest as of this writing).

1. Click "File -> Swift Packages -> Add Package Dependency..."

1. Enter the URL of this repo (https://github.com/ryanwilson/Repro-SwiftPMMinVersionBuild). Use the default version.

1. Leave the default Package Product enabled and hit "Finish".

1. Change the build target to "Any iOS Device (arm64)".

1. Attempt to build.

## Expected Behaviour

A successful build, since no APIs are being used outside of their iOS version availability.

## Actual Behaviour

Swift compiler error with the following messages:

```
<LocalPath>/Sources/SwiftPMMinVersionIssue/ShinyAPI.swift:16:25: Cannot find type 'View' in scope
<LocalPath>/Sources/SwiftPMMinVersionIssue/ShinyAPI.swift:13:25: Cannot find type 'View' in scope
```

Even if the targeted iOS version in the Xcode project is 14.0, it still fails to compile.

## Workarounds

Changing the minimum supported iOS version in this repo to `.v11` resolves the issue. This can be
observed by switching the SwiftPM checkout to the branch named `fixed`.

## Thoughts

We ran into a similar error when building for an API available on iOS 11+ - perhaps it's a 32 bit
transition issue?

