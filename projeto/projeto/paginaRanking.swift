import SwiftUI

extension Color {
    static let verdeAmarelo = Color("verdeAmarelo")
}

struct paginaRanking: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let marrom = Color("marrom")
    @StateObject var vm = ViewModel()
    @State private var selectedAnimal: Animal? = nil
    
    var body: some View {
        NavigationView{
            ZStack {
                verdeFundo
                    .edgesIgnoringSafeArea(.all)
                
                ZStack {
                    Rectangle()
                        .frame(width: 300, height: 550)
                        .foregroundColor(verdeAmarelo)
                        .cornerRadius(20)
                    VStack(alignment: .leading, spacing: 8) { 
                        ForEach(vm.animals) { animal in
                            NavigationLink(destination: detalheAnimal(selectedAnimal: animal)){
                                Text(animal.nome!)
                                    .font(.subheadline)
                            }
                        }
                    }
                    .cornerRadius(10)
                    .padding()
                    
                    if let selectedAnimal = selectedAnimal {
                        Text("Nome: \(selectedAnimal.nome!)")
                        Text("Nome Científico: \(selectedAnimal.nomec!)")
                        Text("Local: \(selectedAnimal.local!)")
                        Text("Dieta: \(selectedAnimal.dieta!)")
                        Text("Cor: \(selectedAnimal.cor!)")
                        Text("Peso: \(selectedAnimal.peso!)")
                        Text("Altura: \(selectedAnimal.altura!)")
                        Text("Tempo de Vida: \(selectedAnimal.tempovida!)")
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
}
