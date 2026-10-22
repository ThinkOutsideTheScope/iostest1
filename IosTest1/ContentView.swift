import SwiftUI

struct ContentView: View {
    @State private var counter = Counter()

    var body: some View {
        VStack(spacing: 24) {
            Text("Count: \(counter.value)")
                .font(.largeTitle)

            HStack(spacing: 16) {
                Button("Increment") { counter.increment() }
                    .buttonStyle(.borderedProminent)

                Button("Reset") { counter.reset() }
                    .buttonStyle(.bordered)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}