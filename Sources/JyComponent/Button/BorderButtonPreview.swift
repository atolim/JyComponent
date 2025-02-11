//
//  BorderButtonPreview.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import SwiftUI

struct BorderButtonPreview: View {
  var body: some View {
    VStack {

      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Text("text")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .border, size: .small))
      .padding()

      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Text("text")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .border, size: .medium))
      .padding()

      Button {
        print("")
      } label: {
        HStack {
          Spacer()
          Text("text")
          Spacer()
        }

      }
      .buttonStyle(JyButtonStyle(style: .border, size: .large))
      .padding()
    }
  }
}

#Preview {
  BorderButtonPreview()
}
