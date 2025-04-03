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
  private let isFilledSized: Bool

  public init(_ title: String,
              _ textColor: Color = .white,
              style: JyButtonStyleType = .filled,
              size: JyButtonSize = .medium,
              backgroundColor: Color = .primary,
              isEnabled: Bool = true,
              isFilledSized: Bool = false,
              action: @escaping () -> Void) {
    self.title = title
    self.textColor = textColor
    self.action = action
    self.style = style
    self.size = size
    self.backgroundColor = backgroundColor
    self.isEnabled = isEnabled
    self.isFilledSized = isFilledSized
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
    let contentView = Text(title)
      .font(font)
      .foregroundColor(textColor)

    Button(action: {
      if isEnabled {
        action()
      }
    }, label: {
      if isFilledSized {
        HStack {
          Spacer()
          contentView
          Spacer()
        }
      }
      else {
        contentView
      }
    })
    .buttonStyle(JyButtonStyle(style: isEnabled ? style : .disabled, size: size, backgroundColor: backgroundColor))
    .if(isFilledSized, transform: { view in
      view.frame(maxWidth: .infinity)
    })
    .if(!isFilledSized, transform: { view in
      view.fixedSize(horizontal: true, vertical: false)
    })
    //.fixedSize(horizontal: true, vertical: false)
  }
}
#Preview {
  VStack {
    Button {

    } label: {
      HStack {
        Spacer()
        Text("Hello, World!")
        Spacer()
      }
    }
    .background(Color.red)
    .fixedSize(horizontal: true, vertical: false)


    JyButton("테ㅁㅇㄴㅁㅇㄴㅁㅁ", .yellow, style: .filled, size: .small, backgroundColor: .black) {

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

