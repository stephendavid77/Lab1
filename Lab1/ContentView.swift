//
// Assignment: Partner Lab 1
// Group #: Lab 1 Partner 2
// Partners: Stephen David & Nicholas Chow
// Date: September 15, 2025
//

import SwiftUI

struct ContentView: View {
    
    // State variable to keep track of which dog image was tapped by the user
    @State private var selectedDog: String? = nil
    
    var body: some View {
        VStack {
            // Instruction text shown at the top of the screen
            Text("Tap a dog to learn more!")
                .font(.title2) // Use a slightly larger font
                .padding() // Add space around the text
            
            // Horizontal scroll view containing dog images
            ScrollView(.horizontal) {
                HStack {
                    // Loop through all dog names to create images dynamically
                    ForEach(dogNames, id: \.self) { name in
                        Image(name) // Display the dog image from Assets using the name
                            .resizable() // Allow resizing the image
                            .scaledToFit() // Maintain aspect ratio while fitting within the frame
                            .frame(width: 120, height: 120) // Set image size
                            .clipShape(RoundedRectangle(cornerRadius: 12)) // Rounded corners
                            .shadow(radius: 4) // Add subtle shadow for visual depth
                            .padding(4) // Space between images
                            .onTapGesture { // Action when user taps the image
                                selectedDog = name // Update selectedDog with the tapped dog's name
                            }
                    }
                }
            }
            
            Spacer() // Pushes content above up, adds flexible space
            
            // Conditionally show description text if a dog has been selected
            if let dog = selectedDog {
                Text(dogDict[dog] ?? "") // Display description from dogDict dictionary
                    .padding() // Padding around the text
                    .multilineTextAlignment(.center) // Center-align multiple lines of text
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
