import SwiftUI

struct paginaJogo: View {
    @State private var apresentaPopUp = false
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let botao = Color("botao")
    
    var body: some View {
        ZStack{
            verdeFundo
                .edgesIgnoringSafeArea(.all)
                
            }
        }
    }
struct paginaJogo_Previews: PreviewProvider {
    static var previews: some View {
        paginaJogo()
    }
}
