//
//  View+Extension.swift
//  JyComponent
//
//  Created by 임주영 on 4/3/25.
//
import SwiftUI

extension View {
  @ViewBuilder
  public func `if`<Content: View>(_ condition: Bool,
                           transform: (Self) -> Content) -> some View {
    if condition {
      transform(self)
    } else {
      self
    }
  }
}
