//
//  Family2patient.swift
//  NVCD
//
//  Created by Clyde James Felix on 3/16/20.
//  Copyright © 2020 Naval Hawai'i. All rights reserved.
//

import SwiftUI

struct Family2patient: View {
    let Nurse2patientarr1: [String] = ["I love you","I miss you","I don't want to be alone","How are you?"]
    let Nurse2patientarr2: [String] = ["I am sad","I want food","I will see you soon","I am done talking"]

    var body: some View {
        
        VStack(spacing: height/140){
            
            GridStack(rows: 2, columns: 2){ row, col in
                Button(action:{}){
                Text(self.Nurse2patientarr1[row*2 + col])
                .multilineTextAlignment(.center)
                    .frame(width: width/2.15,height:height/6.5)
                .font(.system(size:width/15))
                .modifier(ButtonStyle())
                }
            }
            GridStack(rows: 2, columns: 2){ row, col in
                Button(action:{}){
                Text(self.Nurse2patientarr2[row*2 + col])
                .multilineTextAlignment(.center)
                    .frame(width: width/2.15,height:height/6.5)
                .font(.system(size:width/15))
                .modifier(ButtonStyle())
                }
            }
        }
    }
}
struct Family2patient_Previews: PreviewProvider {
    static var previews: some View {
        Family2patient()
    }
}
