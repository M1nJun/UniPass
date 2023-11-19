import SwiftUI
import PassKit

struct CardView: View {
    @State private var isPassAdded = false

    var body: some View {
        VStack(spacing: 50) {
            HStack{
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height:50)
                    .padding(.bottom, -40)
            }
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
                                
//                                Text("L01210646")
//                                    .font(.system(size: 15))
//                                    .foregroundColor(Color.black)
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
            
            HStack (spacing: 100){
                if isPassAdded {
                    HStack {
                        Image(systemName: "checkmark.circle")
                            .foregroundColor(.green) // Set the checkmark color

                        Text("Added to Apple Wallet")
                    }
                } else {
                    PKAddPassButtonRepresentable(isPassAdded: $isPassAdded)
                        .frame(width: 300, height: 70)
                }
            }
           
        }
    }
}

struct PKAddPassButtonRepresentable: UIViewRepresentable {
    @Binding var isPassAdded: Bool
    var buttonHeight: CGFloat = 20.0
    
    func makeUIView(context: Context) -> PKAddPassButton {
        let button = PKAddPassButton(addPassButtonStyle: .black)
        button.frame = CGRect(x: 0, y: 0, width: buttonHeight * 2, height: buttonHeight)
        button.addTarget(context.coordinator, action: #selector(Coordinator.addToWalletButtonTapped), for: .touchUpInside)
        return button
    }
    
    func updateUIView(_ uiView: PKAddPassButton, context: Context) {
        
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject {
        var parent: PKAddPassButtonRepresentable

        init(_ parent: PKAddPassButtonRepresentable) {
            self.parent = parent
        }

        @objc func addToWalletButtonTapped() {
            // Implement your logic to add the pass to Wallet here
            parent.isPassAdded = true
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
