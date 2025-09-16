//
// Assignment: Partner Lab 1
// Group #: Lab 1 Partner 2
// Partners: Stephen David & Nicholas Chow
// Date: September 15, 2025
//

import SwiftUI

struct ContentView: View {
    // These will be filled in by your partner
    let dogNames: [String] = []
    let dogDict: [String: String] = [:]
    
    @State private var selectedDog: String? = nil

    var body: some View {
        VStack {
            Text("Tap a dog to learn more!")
                .font(.title2)
                .padding()

            ScrollView(.horizontal) {
                HStack {
                    ForEach(dogNames, id: \.self) { name in
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .shadow(radius: 4)
                            .padding(4)
                            .onTapGesture {
                                selectedDog = name
                            }
                    }
                }
            }

            Spacer()

            if let dog = selectedDog {
                Text(dogDict[dog] ?? "")
                    .padding()
                    .multilineTextAlignment(.center)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
