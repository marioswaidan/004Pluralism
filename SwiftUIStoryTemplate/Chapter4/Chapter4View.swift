import SwiftUI

struct Chapter4View: View {
    var body: some View {
        NavigationStack {
            // my ability to scroll inside of the Scroll view
            ScrollView {
                // creates a side by side grid with the LazyVGrid
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    
                    //Creates a list of the religions with the religions array
                    ForEach(Religion4.religions) { religion in
                        
                        //provides the link to the said religion destination
                        NavigationLink(destination: DetailView(religion: religion)){
                            // label of each navigation link
                            VStack {
                                Image(religion.imageName[0])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text(religion.name)
                                Text(religion.age)
                            }
                        }
                        
                    }
                    .padding()
                    
                }
                .navigationBarTitle("Religions")
                .navigationBarTitle("AD")
            }
            .padding()
        }
    }
}
//Structure called religion
struct Religion4: Identifiable {
    let id = UUID()
    let imageName: [String]
    let name: String
    let age: String
    let prophet: String
    let summary: String
    
    //array of religions
    static var religions: [Religion4] = [
        Religion4(imageName: ["Zoroastrianism","zoroastrianism fire"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Summary"),
        Religion4(imageName: ["Zoroastrianism"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Summary"),
        Religion4(imageName: ["Zoroastrianism"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Summary"),
        Religion4(imageName: ["Zoroastrianism"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Summary"),
        Religion4(imageName: ["Zoroastrianism"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Summary")]
}

// the destination and details from the chapter1view
struct DetailView: View {
    
    let religion: Religion4
    
    var body: some View {
        ScrollView {
            Text(religion.name)
                .font(.title)
                .padding()
            Image(religion.imageName[0])
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Image(religion.imageName[1])
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text(religion.name)
            Text(religion.age)
            Text(religion.prophet)
            Text(religion.summary)
            
            
            // Add more details as needed
        }
    }
}

struct Chapter4View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
