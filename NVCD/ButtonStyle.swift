//
//  ButtonStyle.swift
//  NVCD
//
//  Created by Clyde James Felix on 3/16/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import Foundation
import SwiftUI

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .background(Color.gray)
            .cornerRadius(30)
            .animation(Animation.easeOut(duration: 0.4).delay(0.5))
    }
}
