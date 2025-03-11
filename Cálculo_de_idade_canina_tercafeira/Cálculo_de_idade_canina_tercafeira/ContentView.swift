
import SwiftUI

struct ContentView: View {
    @State  private var idadehumana:String = ""
    @State var idadecanina:Int=0
    var body: some View {
        VStack {
            Image("fotocachorro")
             .resizable()
             .scaledToFit()
             .frame(width: 100, height: 100)
             .imageScale(.large)
             .foregroundColor(.accentColor)
            Text("Cálculo de idade canina ")
            
            TextField("Digite a idade em anos humanos", text: $idadehumana)
                  .multilineTextAlignment(.center)
            if idadecanina>0{
                Text("Idade canina = \(idadecanina) anos")
            }
            if let idade = Int(idadehumana), idade>0{
                Button("Calcular"){
                    idadecanina=idade*7
                    
                }
                    .padding()
            
            
            }
            
              }
            

        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
