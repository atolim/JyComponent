//
//  JyButtonStyle.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import Foundation
import SwiftUI

public enum JyButtonSize {
  case small
  case medium
  case large

  var height: CGFloat {
    switch self {
    case .small:
      return 24
    case .medium:
      return 32
    case .large:
      return 40
    }
  }
}

public enum JyButtonShape {
  case round
  case square
}

public enum JyButtonStyleType {
  case icon
  case border
  case filled
  case disabled
}

public struct JyButtonStyle: ButtonStyle {
  private let style: JyButtonStyleType
  private let size: JyButtonSize
  private let backgroundColor: Color

  init(style: JyButtonStyleType, size: JyButtonSize = .medium, backgroundColor: Color = .primary) {
    self.style = style
    self.size = size
    self.backgroundColor = backgroundColor
  }

  public func makeBody(configuration: Configuration) -> some View {
      switch style {
      case .icon:
          return AnyView(iconStyle(configuration: configuration))
      case .filled:
          return AnyView(fillStyle(configuration: configuration))
      case .border:
          return AnyView(borderStyle(configuration: configuration))
      case .disabled:
          return AnyView(disabledStyle(configuration: configuration))
      }
  }

  // MARK: - Icon Style
  private func iconStyle(configuration: Configuration) -> some View {
      configuration.label
          .frame(maxHeight: size.height)
          .padding(10)
          .frame(width: size.height, height: size.height) // 정사각형
          .background(configuration.isPressed ? backgroundColor.opacity(0.6) : backgroundColor)
          .clipShape(Circle())
          .foregroundColor(.white)
          .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
  }

  // MARK: - Fill Style
  private func fillStyle(configuration: Configuration) -> some View {
      configuration.label
          .padding()
          .frame(maxWidth: .infinity, maxHeight: size.height)
          .background(configuration.isPressed ? backgroundColor.opacity(0.6) : backgroundColor)
          .foregroundColor(.white)
          .cornerRadius(10)
          .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
          .frame(height: size.height)
  }

  // MARK: - Border Style
  private func borderStyle(configuration: Configuration) -> some View {
      configuration.label
          .padding()
          .frame(maxWidth: .infinity, maxHeight: size.height)
          .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(backgroundColor, lineWidth: 2))
          .foregroundColor(backgroundColor)
          .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
          .frame(height: size.height)
  }

  // MARK: - Disabled Style
  private func disabledStyle(configuration: Configuration) -> some View {
      configuration.label
          .padding()
          .frame(maxWidth: .infinity, maxHeight: size.height)
          .background(JyColor.secondary)
          .foregroundColor(.gray)
          .cornerRadius(10)
          .opacity(0.5)
  }
}
