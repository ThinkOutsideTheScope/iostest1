import SwiftUI

struct ContentView: View {
    @State private var temperature = Temperature()

    var body: some View {
        VStack(spacing: 24) {
            Text("Temperature: \(temperature.value)℃")
                .font(.largeTitle)

            HStack(spacing: 16) {
                Button("Increment") { temperature.increment() }
                    .buttonStyle(.borderedProminent)

                Button("Reset") { temperature.reset() }
                    .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}