import SwiftUI

struct ContentView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Text("\(count)")
            Button.init("Increment") {
                self.count += 1
            }
        }
        
    }
    
}
