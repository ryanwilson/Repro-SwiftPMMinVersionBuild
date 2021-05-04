// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

// Both wrapped in a `canImport` and `availability` checks.
#if canImport(SwiftUI)
import SwiftUI

/// A shiny API only available on iOS 14+.
@available(iOS 14, *)
@available(tvOS, unavailable)
@available(macOS, unavailable)
@available(macCatalyst, unavailable)
@available(watchOS, unavailable)
public struct ShinyView: View {
  public init() { }

  public var body: some View {
    Text("Hi")
  }
}

#endif
