//
//  Nurse2patient.swift
//  NVCD
//
//  Created by Clyde James Felix on 3/16/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import SwiftUI

struct Nurse2patient: View {
    
    @State var show = true
    var body: some View {
        VStack{
            if self.show {Firstpage(click: $show)}
            else{Painpage(click: $show)}
        
        }
    }
}

struct Firstpage: View {
    
    let Nurse2patientarr: [String] = ["Hungry","Thirsty","Bathroom","I am done talking"]
    @Binding var click: Bool
    var body: some View {
        
        VStack(spacing: height/140){
            GridStack(rows: 2, columns: 2){ row, col in
                Button(action: {})
                {
                Text(self.Nurse2patientarr[row*2 + col])
                .multilineTextAlignment(.center)
                .frame(width: width/2.15,height:height/4)
                .font(.system(size:width/10))
                .modifier(ButtonStyle())
                .opacity(self.click ? 1 : 0)
                .animation(Animation.easeOut(duration: 0.8).delay(0.8))
                }
        }
            Button(action: {withAnimation{self.click.toggle()}})
            {
            Text("Pain")
            .frame(width: width-20,height:height/4)
            .font(.system(size:width/10))
            .modifier(ButtonStyle())
            .opacity(self.click ? 1 : 0)
            .animation(Animation.easeOut(duration: 0.8).delay(0.8))
            }
        }
        
    }
}

struct Painpage: View {
    
    let Painarr: [String] = ["Head","Chest","Stomach","Back"]
    @Binding var click: Bool
    var body: some View {
        
        VStack(spacing: height/50){

            Text("Where does it hurt?")
            .animation(Animation.easeOut(duration: 0.8).delay(0.8))
            
                GridStack(rows: 2, columns: 2){ row, col in
                    Button(action: {})
                    {
                    Text(self.Painarr[row*2 + col])
                    .multilineTextAlignment(.center)
                        .frame(width: width/2.2,height:height/5)
                    .font(.system(size:width/10))
                    .modifier(ButtonStyle())
                    .opacity(self.click ? 0 : 1)
                    .animation(Animation.easeOut(duration: 0.8).delay(0.8))
                    }
            }
            Text("How much does it hurt?")
            .animation(Animation.easeOut(duration: 0.8).delay(0.8))
            GridStack(rows: 1, columns: 10){ row, col in
                Button(action: {withAnimation{self.click.toggle()}})
                {
                Text("\(col + 1 )")
                .multilineTextAlignment(.center)
                .frame(width: width/13,height:height/13)
                .font(.system(size:width/20))
                .modifier(ButtonStyle())
                .opacity(self.click ? 0 : 1)
                .animation(Animation.easeOut(duration: 0.8).delay(0.8))
                }
        }
            Button(action: {withAnimation{self.click.toggle()}})
            {
            Text("Back")
            .frame(width: width-20,height:height/10)
            .font(.system(size:width/10))
            .modifier(ButtonStyle())
            .opacity(self.click ? 0 : 1)
            .animation(Animation.easeOut(duration: 0.8).delay(0.8))
            }

        }
        
    }
}


struct Nurse2patient_Previews: PreviewProvider {
    static var previews: some View {
        Nurse2patient()
    }
}
