//
//  JyFont.swift
//  JyComponent
//
//  Created by 임주영 on 2/11/25.
//

import SwiftUI

public struct JyFont {

    // MARK: - System Fonts
    public static let largeTitle = Font.system(size: 34, weight: .bold)
    public static let title = Font.system(size: 28, weight: .bold)
    public static let title2 = Font.system(size: 22, weight: .bold)
    public static let title3 = Font.system(size: 20, weight: .semibold)

    public static let headline = Font.system(size: 17, weight: .bold)
    public static let subheadline = Font.system(size: 15, weight: .regular)

    public static let body = Font.system(size: 17, weight: .regular)
    public static let callout = Font.system(size: 16, weight: .regular)

    public static let footnote = Font.system(size: 13, weight: .regular)
    public static let caption = Font.system(size: 12, weight: .regular)
    public static let caption2 = Font.system(size: 11, weight: .regular)
}
