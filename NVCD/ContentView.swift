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


struct ContentView: View {
    
        @State private var show = true
        let menu: [String] = ["Nurse - Patient","Family - Patient","Emergency Call"]

        var body: some View {
            NavigationView{
                
            VStack(alignment: <#T##HorizontalAlignment#>, spacing: <#T##CGFloat?#>, content: <#T##() -> _#>,spacing: height/200){
                
                NavigationLink(destination: Nurse2patient())
                {
                        Text(self.menu[0])
                        .foregroundColor(Color.white)
                        .font(.system(size:width/10))
                        .padding()
                        .frame(width: width-20,height:height/4)
                        .background(Color.gray)
                        .cornerRadius(30)
                        .animation(Animation.easeOut(duration: 0.4).delay(0.5))
                }
                NavigationLink(destination: Family2patient())
                {
                        Text(self.menu[1])
                        .foregroundColor(Color.white)
                        .font(.system(size:width/10))
                        .padding()
                        .frame(width: width-20,height:height/4)
                        .background(Color.gray)
                        .cornerRadius(30)
                        .animation(Animation.easeOut(duration: 0.4).delay(0.5))
                }
                NavigationLink(destination: EmergencyCall())
                {
                        Text(self.menu[2])
                        .foregroundColor(Color.white)
                        .font(.system(size:width/10))
                        .padding()
                        .frame(width: width-20,height:height/4)
                        .background(Color.gray)
                        .cornerRadius(30)
                        .animation(Animation.easeOut(duration: 0.4).delay(0.5))
                }
            }
            }}
}
struct Nurse2patient: View {
    var body: some View{
    }
}
struct Family2patient: View {
    var body: some View{
        Text("Page 2")
    }
}
struct EmergencyCall: View {
    var body: some View{
        Text("Page 3")
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
