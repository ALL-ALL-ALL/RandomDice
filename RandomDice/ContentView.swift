import SwiftUI

struct ContentView: View {
    
    @State private var diceValue = 1

    var body: some View {
        VStack {
            Spacer()

            Image("dice\(diceValue)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 100)

            Spacer()

            Button("roll the dice ") {
                
                diceValue = Int.random(in: 1...6)  // Générer l'action aléatoire entre 1 et 6 pour lancer le dés
            }
            .frame(width: 300, height: 90)
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
            .font(.title)
            .bold()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}

