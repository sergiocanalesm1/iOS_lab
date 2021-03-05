//
//  LoginVIew.swift
//  iOSlab
//
//  Created by 1234 on 5/03/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var checkState: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("login")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 50)
                Text("Login")
                    .font(.title2)
                    .bold()
                    .padding(.bottom, 20)
                TextField("Username", text: $username)
                    .frame(minWidth: 0, maxWidth: 250,
                           minHeight: 0, maxHeight: 20)
                    .padding()
                    .border(Color.init(UIColor.lightGray), width: 1)
                    .cornerRadius(1.0)
                    .padding(.bottom, 20)

                SecureField("Password", text: $password)
                    .frame(minWidth: 0, maxWidth: 250,
                           minHeight: 0, maxHeight: 20)
                    .padding()
                    .border(Color.init(UIColor.lightGray), width: 1)
                    .cornerRadius(1.0)
                    .padding(.bottom, 20)
                
                Button(action: {
                    self.checkState = !self.checkState
                }) {
                    HStack(alignment: .top, spacing: 10) {
                       Rectangle()
                        .fill(self.checkState ? Color("primary") : Color.white)
                        .border(Color.init(UIColor.lightGray), width: 1)
                        .frame(width:20, height:20, alignment: .center)
                       Text("Remember me")
                        .foregroundColor(.black)
                    }
                }
                .foregroundColor(Color.white)
                NavigationLink(
                    destination: LoginView()
                ) {
                    Text("LOGIN")
                        .frame(minWidth: 0, maxWidth: 70,
                               minHeight: 0, maxHeight: 5)
                        .font(.system(size: 18))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("primary"))
                }
                .padding(.top, 50)
                .padding(.bottom, 150)
            }
        }.navigationBarBackButtonHidden(true)
    }
}

