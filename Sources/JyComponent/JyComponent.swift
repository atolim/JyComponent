// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct MyComponent: View {
  public init() {}

  public var body: some View {
    Text("Hello, MyComponent!")
      .font(.title)
      .padding()
      .background(Color.blue)
      .foregroundColor(.white)
      .cornerRadius(10)
  }
}
#Preview {
  MyComponent()
}
