import SwiftUI

struct AmountInputView: View {
    @State private var selectedAmount: Double? // Store the selected amount
    @State private var customAmount: String = "" // Store the custom input as a string

    let numberList: [Int] = [10, 20, 50, 100, 200] // List of predefined numbers

    var body: some View {
        VStack {
            // Picker for selecting from predefined numbers
            Picker("Select Amount", selection: $selectedAmount) {
                ForEach(numberList, id: \.self) { number in
                    Text("\(number)")
                }
            }
            .pickerStyle(SegmentedPickerStyle())

            // Custom amount input
            TextField("Custom Amount", text: $customAmount)
                .keyboardType(.decimalPad)

            // Display the selected amount or custom input
            Text("Selected Amount: \(selectedAmount != nil ? String(format: "%.2f", selectedAmount!) : customAmount)")
        }
        .padding()
    }
}

struct AmountInputView_Previews: PreviewProvider {
    static var previews: some View {
        AmountInputView()
    }
}

