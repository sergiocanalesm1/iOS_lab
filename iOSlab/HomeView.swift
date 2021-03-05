//
//  HomeView.swift
//  iOSlab
//
//  Created by 1234 on 5/03/21.
//

import SwiftUI


struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 190, height: 150)
                    .padding(.bottom, 40)
                Text("MyApp")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 10)
                Text("""
                    "Styles come and go. Good design is a language, not a style" -- Massimo Vignelli
                    """)
                    .fontWeight(.light)
                    .padding(35)
                    .multilineTextAlignment(.center)
                NavigationLink(
                    destination: LoginView()
                ) {
                    Text("GO!")
                        .frame(minWidth: 0, maxWidth: 70,
                               minHeight: 0, maxHeight: 5)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("primary"))
                }
                .padding(.top, 80)
                .padding(.bottom, 100)
            }
        }
    }
}

