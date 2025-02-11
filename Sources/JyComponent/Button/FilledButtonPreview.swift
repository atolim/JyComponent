//
//  FilledButtonPreview.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import SwiftUI

struct FilledButtonPreview: View {

  var body: some View {
    VStack {
      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Image(systemName: "star.fill")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .filled, size: .small))
      .padding()

      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Image(systemName: "star.fill")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .filled, size: .medium))
      .padding()

      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Image(systemName: "star.fill")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .filled, size: .large))
      .padding()

    }
  }
}
#Preview {
  FilledButtonPreview()
}
