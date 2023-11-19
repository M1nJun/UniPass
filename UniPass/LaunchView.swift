//
//  UniPass-Launch.swift
//  UniPass
//
//  Created by Youssef Ben Nasr on 10/15/23.
//

import Foundation
import SwiftUI

struct LaunchView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack{
                VStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 300, height: 500) // Adjust the width and height as needed
                        .foregroundColor(.blue)
                        .position(x: UIScreen.main.bounds.size.width / 2, y: UIScreen.main.bounds.size.height / 2.5)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    self.isActive = true
                }
            }
        }
        

            
    }
}

#Preview {
    LaunchView()
}
