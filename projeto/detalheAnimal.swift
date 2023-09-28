import SwiftUI

struct detalheAnimal: View {
    let selectedAnimal: Animal
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let marrom = Color("marrom")

    var body: some View {
        VStack(alignment: .leading) { // Alinhe o texto à esquerda
            if let imageURL = URL(string: selectedAnimal.url ?? "") {
                AsyncImage(url: imageURL) { phase in
                    switch phase {
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200, alignment: .center) 
                    case .failure(let error):
                        Text("Erro ao carregar a imagem: \(error.localizedDescription)")
                    case .empty:
                        ProgressView()
                    @unknown default:
                        EmptyView()
                    }
                }
                .frame(width: 200, height: 200)
            }
            
            Text("Nome: \(selectedAnimal.nome ?? "")")
            Text("Nome Científico: \(selectedAnimal.nomec ?? "")")
            Text("Local: \(selectedAnimal.local ?? "")")
            Text("Dieta: \(selectedAnimal.dieta ?? "")")
            Text("Cor: \(selectedAnimal.cor ?? "")")
            Text("Peso: \(selectedAnimal.peso ?? "")")
            Text("Altura: \(selectedAnimal.altura ?? "")")
            Text("Tempo de Vida: \(selectedAnimal.tempovida ?? "")")
            Text("População: \(selectedAnimal.populacao ?? "")")
        }
        .navigationBarTitle("Detalhes do Animal")
    }
}
