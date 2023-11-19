//
//  ResourcesView.swift
//  UniPass
//
//  Created by 이민준 on 10/30/23.
//

import SwiftUI

struct ResourcesView: View {
    @State private var selectedAmountC: Double?
    @State private var customAmountC: String = ""
    @State private var selectedAmountV: Double?
    @State private var customAmountV: String = ""
    @State private var selectedAmountM: Double?
    @State private var customAmountM: String = ""
    
    var body: some View {
        NavigationView{
            VStack{
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
                            
                            // Custom amount input
                            TextField("Custom Amount", text: $customAmountC)
                                .keyboardType(.decimalPad)

                            // Display the selected amount or custom input
                            Text("Selected Amount: \(selectedAmountC != nil ? String(format: "%.2f", selectedAmountC!) : customAmountC)")
                        }
                    )
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 350, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        VStack(alignment: .leading) {
                            Spacer()
                                .frame(height: 40)
                            Text("Viking Gold: $30.00")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                                .padding(.bottom, 17)
                            
                            // Custom amount input
                            TextField("Custom Amount", text: $customAmountV)
                                .keyboardType(.decimalPad)

                            // Display the selected amount or custom input
                            Text("Selected Amount: \(selectedAmountV != nil ? String(format: "%.2f", selectedAmountV!) : customAmountV)")
                        }
                    )
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
                    .opacity(0.5)
                    .frame(width: 350, height: 200)
                    .shadow(radius: 10)
                    .overlay(
                        VStack(alignment: .leading) {
                            Spacer()
                                .frame(height: 40)
                            Text("Meal Swipes: 14")
                                .font(.system(size: 15))
                                .foregroundColor(Color.black)
                                .padding(.bottom, 17)
                            
                            // Custom amount input
                            TextField("Custom Amount", text: $customAmountM)
                                .keyboardType(.decimalPad)

                            // Display the selected amount or custom input
                            Text("Selected Amount: \(selectedAmountM != nil ? String(format: "%.2f", selectedAmountM!) : customAmountM)")
                        }
                    )
                    .padding(.bottom, 30)
                Button(action: {
                                // Navigate to the payment view or perform the payment logic here
                            }) {
                                Text("Purchase")
                                    .padding()
                                    .frame(width: 300)
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
            }
        }
    }
}

#Preview {
    ResourcesView()
}
