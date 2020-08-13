//
//  ContentView.swift
//  Clonebook
//
//  Created by Ryan Spishock on 6/10/20.
//  Copyright © 2020 Ryan Spishock. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        ZStack {
            Color(UIColor.darkGray)
            VStack {
                
                UserImage()
                    .padding(.bottom, 0)
                
                WelcomeScreen()
                    .padding(.top, 0)
                
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                    .padding(.leading, 15)
                    .padding(.trailing, 15)
                Button(action: {print("Button tapped")}) {
                    LoginButtonContent()
                }
                Button(action: {print("Button tapped")}) {
                    RegisterButtonContent()
                }
                .padding(.top, 50)
                .padding(.bottom, 0)
            }
                
            .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WelcomeScreen: View {
    var body: some View {
        Text("Clonebook")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.purple)
    }
}

struct UserImage: View {
    var body: some View {
        Image("ClonebookLogo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 10)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("Login")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.purple)
            .cornerRadius(15.0)
    }
}

struct RegisterButtonContent: View {
    var body: some View {
        Text("Register")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.purple)
            .cornerRadius(15.0)
    }
}
