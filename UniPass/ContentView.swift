//
//  ContentView.swift
//  UniPass
//
//  Created by 이민준 on 10/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height:50)
            Spacer()
                .frame(height: 30)
            Text("Login")
                .font(.largeTitle)
                .bold()
                .padding()
            TextField("Username", text: $username)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongUsername))
            SecureField("Password", text: $password)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .border(.red, width: CGFloat(wrongPassword))
            
            Button("Login"){
                authenticateUser(username: username, password: password)
            }
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            .sheet(isPresented: $showingLoginScreen) {
                UserAccountView(user: username)
            }

//            NavigationLink(destination: Text("You are logged in @\(username)"), isActive: $showingLoginScreen) {
//                EmptyView()
//            }
        }
//        .navigationBarHidden(true)
    }
    
    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "mj2000" {
            wrongUsername = 0
            if password.lowercased() == "1234" {
                wrongPassword = 0
                showingLoginScreen = true
            }
            else {
                wrongPassword = 2
            }
        }
        else {
            wrongUsername = 2
        }
    }
}

#Preview {
    ContentView()
}
