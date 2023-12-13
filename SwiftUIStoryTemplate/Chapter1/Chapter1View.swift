import SwiftUI

struct Chapter1View: View {
    var body: some View {
        NavigationStack {
            // my ability to scroll inside of the Scroll view
            ScrollView {
                // creates a side by side grid with the LazyVGrid
                LazyVGrid(columns: [GridItem(.flexible(), spacing: 16), GridItem(.flexible(), spacing: 16)], spacing: 16) {
                    
                    //Creates a list of the religions with the religions array
                    ForEach(Religion.religions) { religion in
                        
                        //provides the link to the said religion destination
                        NavigationLink(destination: DetailView1(religion: religion)){
                            // label of each navigation link
                            VStack {
                                Image(religion.imageName[0])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text(religion.name)
                                    .font(.headline)
                                Text(religion.age)
                                    .font(.caption)
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
struct Religion: Identifiable {
    let id = UUID()
    let imageName: [String]
    let name: String
    let age: String
    let prophet: String
    let summary: String
    let symbol: String
    
    //array of religions
    static var religions: [Religion] = [
        Religion(imageName: ["Zoroastrianism","fire","zoroastrianism fire"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Farhavor"),
        Religion(imageName: ["hindu","zoroastrianism fire"], name: "Hinduism", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Om"),
        Religion(imageName: ["judaism","zoroastrianism fire"], name: "Judaism", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Star of David"),
        Religion(imageName: ["jainism","zoroastrianism fire"], name: "Jainism", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "23"),
        Religion(imageName: ["christian","zoroastrianism fire"], name: "Christianity", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Crucifix"),
        Religion(imageName: ["buddhism","zoroastrianism fire"], name: "Buddhism", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Wheel"),
        Religion(imageName: ["islam","zoroastrianism fire"], name: "Islam", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Star and Cresent"),
        Religion(imageName: ["sikh","zoroastrianism fire"], name: "Sikhism", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Safe"),
        Religion(imageName: ["bahai","zoroastrianism fire"], name: "Baha'i", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Iraq"),
        Religion(imageName: ["jainism","zoroastrianism fire"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Hand"),
        Religion(imageName: ["jainism","zoroastrianism fire"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Hand"),
        Religion(imageName: ["jainism","zoroastrianism fire"], name: "Zoroastriansim", age: "3000BC", prophet: "Zoroaster", summary: "Two Sects. Clothing isn't part of human nature, they are naked. The other group, they use a white cloth to represent purity of being naked. If the priest isn't offered food, they dont eat. No set day of worship. Worship everyday. After shower you pray. Either do it 9 or 108 times. Namo Antonum (peace to my inner), Namo Sidhanum (calmness to the mind), Namo Arianum(body), Nami Jahanum(aura), Namo Loi Sauv Sav Dhnum(everybody I interact with, I want to spread that energy to", symbol: "Hand")]
}

// the destination and details from the chapter1view
struct DetailView1: View {
    
    let religion: Religion
    
    var body: some View {
        ScrollView {
            Text(religion.name)
                .font(.title)
                .padding()
            Image(religion.imageName[0])
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            Text("Symbol: \(religion.symbol)")
                .font(.largeTitle)
            Image(religion.imageName[1])
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)

                VStack(alignment: .leading, spacing: 20){
                    Text("Name: \(religion.name)")
                        .font(.largeTitle)
                    Text("Age: \(religion.age)")
                        .font(.largeTitle)
                    Text("Prophet: \(religion.prophet)")
                        .font(.largeTitle)
                    Text(religion.summary)
                }
            // Add more details as needed
        }.multilineTextAlignment(.leading)
            .padding()
    }
}

struct Chapter1View_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1View()
    }
}
