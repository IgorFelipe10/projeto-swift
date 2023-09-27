import SwiftUI

struct paginaRegras: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let botao = Color("botao")
    
    var body: some View {
        ZStack{
            verdeFundo
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Rectangle()
                    .frame(width: 320, height: 480)
                    .border(Color.brown, width: 2)
                    .cornerRadius(25)
                    .foregroundColor(verdeAmarelo)
                    .overlay(
                        VStack(alignment: .leading, spacing: 24) {
                            HStack {
                                Text("Regras e Como Jogar")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(.bottom, 8)
                            Text("• Responda o quiz sobre diversos animais.")
                                .font(.title3)
                                .foregroundColor(.black)
                            
                            Text("• Acerte as respostas para acumular bananas.")
                                .font(.title3)
                                .foregroundColor(.black)
                            
                            Text("• Use as dicas com sabedoria.")
                                .font(.title3)
                                .foregroundColor(.black)
                            
                            Text("• Em caso de erro o quiz será reiniciado")
                                .font(.title3)
                                .foregroundColor(.black)
                            
                            Text("• Acumule um milhão de bananas para vencer!")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                        .padding()
                    )
                
            }
        }
    }
}

struct paginaRegras_Previews: PreviewProvider {
    static var previews: some View {
        paginaRegras()
    }
}
