//
//  UserAccountView.swift
//  UniPass
//
//  Created by 이민준 on 10/14/23.
//
import SwiftUI

struct UserAccountView: View {
    var user: String
    @State private var isNavigatedCard = false
    @State private var isNavigatedResources = false
    @State private var isNavigatedSafety = false
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("", destination: CardView(), isActive: $isNavigatedCard)
                NavigationLink("", destination: ResourcesView(), isActive: $isNavigatedResources)
                NavigationLink("", destination: CampusSafetyView(), isActive: $isNavigatedSafety)
                HStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 150)
                    Image("lawrencelogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding([.leading, .bottom], 13.0)
                        .frame(width: 130, height: 75)
                }
                
                Button(action: {
                    isNavigatedCard = true
                }) {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .opacity(0.5)
                        .frame(width: 375, height: 250)
                        .shadow(radius: 10)
                        .overlay(
                            VStack(alignment: .leading, spacing: 5) {
                                Text("LAWRENCE UNIVERSITY")
                                    .font(.title)
                                    .foregroundColor(Color(red: 0.18, green: 0.23, blue: 0.65))
                                HStack(spacing: 5.0) {
                                    Image("profile")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 110, height: 150)
                                    
                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("Minjun Lee")
                                            .foregroundColor(Color.black)
                                            .font(.system(size: 26))
                                        Text("Student(L01210646)")
                                            .font(.system(size: 15))
                                            .foregroundColor(Color.black)
                                            .padding(.bottom, 17)
                                        
                                        Image("barcode")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 170, height: 70)
                                        
                                    }
                                    .padding(.leading, 20.0)
                                }
                                .padding(.vertical, 0)
                                
                            }
                        )
                        .hoverEffect(.lift)
                }
                
                
                Spacer()
                    .frame(height: 30)
                
                Button(action: {
                    isNavigatedResources = true
                }) {
                    ZStack(alignment: .topTrailing) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .opacity(0.5)
                            .frame(width: 350, height: 200)
                            .shadow(radius: 10)
                            .overlay(
                                VStack(alignment: .leading) {
                                    Spacer()
                                        .frame(height: 40)
                                    Text("Cullinary Cash: $175.00")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .padding(.bottom, 17)
                                    Text("Viking Gold: $30.00")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .padding(.bottom, 17)
                                    Text("Meal Swipes: 14")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .padding(.bottom, 17)
                                }
                                
                            )
                            .hoverEffect(/*@START_MENU_TOKEN@*/.lift/*@END_MENU_TOKEN@*/)
                        
                        Image("lawrencelogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(/*@START_MENU_TOKEN@*/.top, -15.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 15)
                            .frame(width: 100, height: 75)
                    }
                }
                
                Button(action: {
                    isNavigatedSafety = true
                }) {
                    ZStack(alignment: .topTrailing) {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                            .opacity(0.5)
                            .frame(width: 350, height: 150)
                            .shadow(radius: 10)
                            .overlay(
                                VStack {
                                    Text("CAMPUS SAFETY")
                                        .font(.system(size: 15))
                                        .foregroundColor(Color.black)
                                        .padding(.bottom, 17)
                                }
                                
                            )
                            .hoverEffect(/*@START_MENU_TOKEN@*/.lift/*@END_MENU_TOKEN@*/)
                        
                        Image("lawrencelogo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(/*@START_MENU_TOKEN@*/.top, -15.0/*@END_MENU_TOKEN@*/)
                            .padding(.trailing, 15)
                            .frame(width: 100, height: 75)
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
        }
    }
}

#Preview {
    UserAccountView(user: "mj2000")
}
