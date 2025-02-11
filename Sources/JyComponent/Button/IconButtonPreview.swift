//
//  IconButtonPreview.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import SwiftUI

struct IconButtonPreview: View {
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
        .buttonStyle(JyButtonStyle(style: .icon, size: .small))
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
        .buttonStyle(JyButtonStyle(style: .icon, size: .medium))
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
        .buttonStyle(JyButtonStyle(style: .icon, size: .large))
      }
    }
}

#Preview {
  IconButtonPreview()
}
