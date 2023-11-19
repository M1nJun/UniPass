//
//  CampusSafetyView.swift
//  UniPass
//
import SwiftUI

struct CampusSafetyView: View {
    @State private var shareLocation = false
    var body: some View {
        VStack(spacing:30){
            HStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
            }
            VStack(spacing: 30){
                RoundedRectangle(cornerRadius: 15) // Create a rounded rectangle
                    .fill(Color.white) // Fill the card with a white background
                    .frame(width: 350, height: 100) // Set the size of the card
                    .shadow(color: Color.gray, radius: 5, x: 0, y: 2)
                    .overlay(
                        VStack{
                            Text("Contact Campus Safety 24 hours a day")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size:18))
                            Text(" - On Campus: 6999")
                            Text(" - Off Campus: 920-832-6999")
                            Text(" - Email: security@lawrence.edu")
                        }
                    )
                RoundedRectangle(cornerRadius: 15) // Create a rounded rectangle
                    .fill(Color.white) // Fill the card with a white background
                    .frame(width: 350, height: 100) // Set the size of the card
                    .shadow(color: Color.gray, radius: 5, x: 0, y: 2)
                    .overlay(
                        VStack{
                            Text("Contact Emergency Services")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .font(.system(size:20))
                            
                            Text(" - Police, Fire & Ambulance: 911")
                            Text(" - 24/7 Medical Advice: 920-738-2230")
                            Text(" - 24/7 LU Counseling Line: 920-419-8167")
                        }
                    )
                
                RoundedRectangle(cornerRadius: 15) // Create a rounded rectangle
                    .fill(Color.white) // Fill the card with a white background
                    .frame(width: 350, height: 250) // Set the size of the card
                    .shadow(color: Color.gray, radius: 5, x: 0, y: 2)
                    .overlay(
                        MapView()
                    )
                    .padding(.vertical, 5)
                HStack {
                    Toggle(isOn: $shareLocation) {
                        Text("Share Current Location")
                    }
                    .toggleStyle(SwitchToggleStyle(tint: .green))
                    .foregroundColor(.blue)
                }
                .padding(.horizontal, 70)
                .foregroundColor(.blue)
                if shareLocation {
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green)
                        Text("Location Shared Temporarily")
                    }
                }

                
                
                
            }
        }
    }
}

struct CampusSafetyView_Previews: PreviewProvider {
    static var previews: some View {
        CampusSafetyView()
    }
}
