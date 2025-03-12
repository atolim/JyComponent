//
//  SwiftUIView.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import SwiftUI
import Foundation

public struct JyButton: View {
  private let title: String
  private let textColor: Color
  private let action: () -> Void
  private let style: JyButtonStyleType
  private let size: JyButtonSize
  private var isEnabled: Bool
  private let backgroundColor: Color

  public init(_ title: String,
              _ textColor: Color = .white,
              style: JyButtonStyleType = .filled,
              size: JyButtonSize = .medium,
              backgroundColor: Color = .primary,
              isEnabled: Bool = true,
              action: @escaping () -> Void) {
    self.title = title
    self.textColor = textColor
    self.action = action
    self.style = style
    self.size = size
    self.backgroundColor = backgroundColor
    self.isEnabled = isEnabled
  }

  var font: Font {
    switch size {
    case .small:
      return JyFont.caption2

    case .medium:
      return JyFont.body

    case .large:
      return JyFont.headline
    }
  }

  public var body: some View {
    Button(action: {
      if isEnabled {
        action()
      }
    }, label: {
      Text(title)
        .font(font)
        .foregroundColor(textColor)
        .frame(maxWidth: .infinity)
    })
    .buttonStyle(JyButtonStyle(style: isEnabled ? style : .disabled, size: size, backgroundColor: backgroundColor))
    .fixedSize(horizontal: true, vertical: false)
  }
}
#Preview {
  VStack {

    JyButton("테ㅁㅇㄴㅁㅇㄴㅁㅁㄴㅇㅁㄴㅁㄴㅇㅁㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㄴㄴㅇㅁㄴㅇㅁㄴㅇㅁㄴㅇㄴㅁㅇㅇㅁ", .yellow, style: .filled, size: .small, backgroundColor: .black) {

    }
    .padding()

    JyButton("로그인", .yellow, style: .filled, size: .medium, backgroundColor: .black) {

    }
    .padding()


    JyButton("테스트", .yellow, style: .filled, size: .large, backgroundColor: .black) {

    }
    .padding()

    JyButton("테스트", .yellow, style: .filled, size: .large, backgroundColor: .black, isEnabled: false) {

    }
    .padding()
  }

}
