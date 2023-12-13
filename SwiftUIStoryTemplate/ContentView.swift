import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {
        TabView {
            Chapter1View()
                .tabItem {
                    Label("G-D", systemImage: "sun.max")
                }
            Chapter2View()
                .tabItem {
                    Label("Stories", systemImage: "book")
                }
            Chapter3View()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
             Chapter4View()
            .tabItem {
               Label("History", systemImage: "clock")
                }
            Chapter5View()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
