import SwiftUI

struct Chapter3View: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(searchText: $searchText)
                List {
                    ForEach(filteredResults(searchText: searchText), id: \.self) { result in
                        Text(result)
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
            .navigationBarTitle("Search")
        }
    }

    private func filteredResults(searchText: String) -> [String] {
        // Placeholder results; replace with your actual data
        let allResults = ["Zoroaster 1", "Zoroaster 2", "Zoroaster 3"]
        
        if searchText.isEmpty {
            return []
        } else {
            return allResults.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
}

struct SearchBar: View {
    @Binding var searchText: String

    var body: some View {
        HStack {
            TextField("Search", text: $searchText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                // Perform search action (not implemented in this example)
            }) {
                Image(systemName: "magnifyingglass")
                    .imageScale(.large)
            }
        }
        .padding(.horizontal)
    }
}

struct Chapter3View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter3View()
    }
}
