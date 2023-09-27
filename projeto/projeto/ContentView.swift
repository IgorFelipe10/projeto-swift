import SwiftUI

struct ContentView: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let botao = Color("botao")
    
    var body: some View {
        NavigationView {
            ZStack {
                verdeFundo
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(width: 375, height: 120)
                        .foregroundColor(verdeAmarelo)
                        .edgesIgnoringSafeArea(.top)
                    
                    Spacer()
                    
                    NavigationLink(destination: paginaJogo()) {
                        Rectangle()
                        
                            .frame(width: 214, height: 43)
                            .foregroundColor(botao)
                            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                            .padding(.bottom, 20)
                            .overlay(
                                Text("Jogar")
                                    .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                                    .font(.custom("JockeyOne-Regular", size:24))
                                    .foregroundColor(.white)
                                    .padding(.bottom)
                            )
                    }
                    
                    NavigationLink(destination: paginaRegras()) {
                        Rectangle()
                            .frame(width: 214, height: 43)
                            .foregroundColor(botao)
                            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                            .padding(.bottom, 20)
                            .overlay(
                                Text("Regras")
                                    .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                                    .font(.custom("JockeyOne-Regular", size:24))
                                    .foregroundColor(.white)
                                    .padding(.bottom)
                            )
                    }
                    
                    NavigationLink(destination: paginaRanking()) {
                        Rectangle()
                            .frame(width: 214, height: 43)
                            .foregroundColor(botao)
                            .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                            .padding(.bottom, 20)
                            .overlay(
                                Text("Estude mais")
                                    .shadow(color: Color.black, radius: 5, x: 0, y: 5)
                                    .font(.custom("JockeyOne-Regular", size:24))
                                    .foregroundColor(.white)
                                    .padding(.bottom)
                            )
                    }
                }
                .padding(.bottom, 200)
                
                Text("Abidle")
                    .shadow(color: Color.black, radius: 5, x:0 , y: 5)
                    .foregroundColor(botao)
                    .font(.custom("JockeyOne-Regular", size:32))
                    .padding(.bottom, 570)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



