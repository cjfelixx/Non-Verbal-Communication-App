//
//  GridStack.swift
//  NVCD
//
//  Created by Clyde James Felix on 3/16/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import Foundation
import SwiftUI

struct GridStack<Content: View>:View{
    
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View{
        VStack( spacing: height/200) {
            ForEach(0 ..< self.rows, id: \.self){ rows in
                HStack{
                    ForEach(0 ..< self.columns, id: \.self){ columns in
                        self.content(rows, columns)
                    }
                }
            }
        }
    }
    init(rows: Int, columns: Int, @ViewBuilder content: @escaping (Int, Int) -> Content) {
        self.rows = rows
        self.columns = columns
        self.content = content
    }
}
