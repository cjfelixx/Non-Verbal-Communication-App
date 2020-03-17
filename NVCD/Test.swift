//
//  Test.swift
//  NVCD
//
//  Created by Clyde James Felix on 3/11/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import SwiftUI

struct Test : View {
    @State private var isButtonVisible = true

    var body: some View {
        VStack {
            Button(action: {
                withAnimation {
                    self.isButtonVisible.toggle()
                }
            }) {
                Text("Press me")
            }

            if isButtonVisible {
                Button(action: {}) {
                    Text("Hidden Button")
                }
            }
        }
    }
    //            VStack( spacing: height/200){
    //            ForEach(menu, id: \.self){ menu in
    //
    //                Button(action: {self.show = false }){
    //                    Text(menu.description)
    //                    .foregroundColor(Color.white)
    //                    .font(.system(size:width/10))
    //                    .padding()
    //                    .frame(width: width-20,height:height/4)
    //                    .background(Color.gray)
    //                    .cornerRadius(30)
    //                    .opacity(self.show ? 1: 0)
    //                    .animation(Animation.easeOut(duration: 0.4).delay(0.5))
    //
    //                    }
    //                }
    //            }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
