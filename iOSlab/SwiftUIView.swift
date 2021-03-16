//
//  SwiftUIView.swift
//  iOSlab
//
//  Created by 1234 on 5/03/21.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            //app bar
            HStack {
               Text("My First App")
                   .foregroundColor(.white)
               Spacer()
           }
            .padding()
            .background(Color("primary"))
            Spacer()
            //image
            Image("labGirl")
                .resizable()
                .frame(width: 350, height: 200)
                .padding(.top, 50)
            //text
            Text( """
                "The more I deal with the work as something that is my own, as something that is personal, the more successful it is." --
                Marian Bantjes, designes and author
                """)
                .fontWeight(.light)
                .padding(35)
                .multilineTextAlignment(.center)
            //button
            Text("LOG OUT!")
                .frame(minWidth: 0, maxWidth: 100, minHeight: 0,maxHeight: 5)
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.white)
                .background(Color("primary"))
        }
        
    }
}
