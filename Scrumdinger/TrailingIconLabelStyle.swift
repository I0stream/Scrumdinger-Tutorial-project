//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Daniel Schliesing on 2/18/22.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }

}
extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self{ Self() }
}
