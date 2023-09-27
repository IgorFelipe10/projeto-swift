import SwiftUI



extension Color {
    static let verdeAmarelo = Color("verdeAmarelo")
}

struct paginaRanking: View {
    let verdeFundo = Color("verdeFundo")
    let botao = Color("botao")
    

    
    @StateObject var vm = ViewModel()
    
    @State private var selectedAnimal: Animal? = nil

    var body: some View {
        ZStack {
            verdeFundo
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                List(vm.animals) { animal in
                    Button(action: {
                       
                        selectedAnimal = animal
                    }) {
                        Text(animal.nome!)
                    }
                }
                .cornerRadius(10)
                .padding()
                
                if let selectedAnimal = selectedAnimal {
                    Text("Nome: \(selectedAnimal.nome!)")
                    Text("Nome Científico: \(selectedAnimal.nome_c!)")
                    Text("Local: \(selectedAnimal.local!)")
                    Text("Dieta: \(selectedAnimal.dieta!)")
                    Text("Cor: \(selectedAnimal.cor!)")
                    Text("Peso: \(selectedAnimal.peso!)")
                    Text("Altura: \(selectedAnimal.altura!)")
                    Text("Tempo de Vida: \(selectedAnimal.tempo_vida!)")
                    Text("População: \(selectedAnimal.populacao!)")
                    Text("Período: \(selectedAnimal.periodo!)")
                }
            }
            .onAppear {
                vm.fetchDataFromAPI()
            }
        }
       
    }

   
}   

struct paginaRanking_Previews: PreviewProvider {
    static var previews: some View {
        paginaRanking()
    }
}
