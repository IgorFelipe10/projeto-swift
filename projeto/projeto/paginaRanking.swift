import SwiftUI

struct paginaRanking: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let botao = Color("botao")
  
    
    var body: some View {
        ZStack {
            verdeFundo
                .edgesIgnoringSafeArea(.all)
            
            List {
                Text("Aprenda mais sobre os animais!")
                    .font(.largeTitle)
                    .foregroundColor(Color.black)
                    .padding()
                
                Text("A List Item 1")
                Text("A Second List Item 2")
                Text("A Third List Item 3")
            }
            .background(Color.white)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct paginaRanking_Previews: PreviewProvider {
    static var previews: some View {
        paginaRanking()
    }
}
