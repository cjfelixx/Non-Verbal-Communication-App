//
//  ContentView.swift
//  NVCD
//
//  Created by Clyde James Felix on 2/13/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import SwiftUI

let bounds = UIScreen.main.bounds
let width = bounds.size.width
let height = bounds.size.height




struct ContentView: View {
    
        @State private var show = true
        let menu: [String] = ["Nurse - Patient","Family - Patient","Emergency Call"]

        var body: some View {
            NavigationView{
                
            VStack(spacing: height/200){
                
                NavigationLink(destination: Nurse2patient())
                {
                        Text(self.menu[0])
                        .frame(width: width-20,height:height/4)
                        .font(.system(size:width/10))
                        .modifier(ButtonStyle())
                
                }
                NavigationLink(destination: Family2patient())
                {
                        Text(self.menu[1])
                        .frame(width: width-20,height:height/4)
                        .font(.system(size:width/10))
                        .modifier(ButtonStyle())
                }
                NavigationLink(destination: EmergencyCall())
                {
                        Text(self.menu[2])
                        .frame(width: width-20,height:height/4)
                        .font(.system(size:width/10))
                        .modifier(ButtonStyle())
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
//        ContentView()
//        .previewDevice(PreviewDevice(rawValue: "iPad Pro (12.9-inch)"))
//        .previewDisplayName("iPad Pro (12.9-inch)")
            
        ContentView()
        .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
        .previewDisplayName("iPhone 11 Pro")
        }
    }
}
