import SwiftUI

struct Lose: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let marrom = Color("marrom")
    
    @State private var showingContentView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                verdeFundo
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    VStack{
                        
                        Rectangle()
                            .frame(width: .infinity, height: 100)
                            .foregroundColor(verdeAmarelo)
                            .shadow(radius: 5)
                            .overlay(){
                                Image("Abidle")
                                    .shadow(radius: 4, x:0, y:4)
                            }  .ignoresSafeArea()
                        VStack(spacing: 0) {
                            Text("Você perdeu!")
                                .font(.custom("JockeyOne-Regular", size: 40))
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                            Text("As bananas foram")
                                .font(.custom("JockeyOne-Regular", size: 35))
                                .foregroundColor(.white)
                                .shadow(radius: 20)
                            
                            HStack {
                                Text("perdidas!")
                                    .font(.custom("JockeyOne-Regular", size: 35))
                                    .foregroundColor(.white)
                                    .shadow(radius: 20)
                                Image("Banana")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .scaledToFill()
                            }
                            Spacer()
                            Button(action: {
                                showingContentView.toggle()
                            }) {
                                // Este botão abrirá ContentView em tela cheia
                                ZStack {
                                                            Rectangle()
                                                                .fill(marrom)
                                                            
                                                            Rectangle()
                                                                .strokeBorder(Color(.black), lineWidth: 2)
                                                        }
                                                        .compositingGroup()
                                                        .frame(width: 214, height: 43)
                                                        .shadow(radius:4, x:0, y:4)
                                                        .padding(.bottom, 10)
                                                        .overlay(
                                                            Text("Voltar ao início")
                                                                .font(.custom("JockeyOne-Regular", size:22))
                                                                .foregroundColor(.white)
                                                                .padding(.bottom))
                                                        .padding(.bottom, 10)
                                                        
                                                        
                                                    }
                            .fullScreenCover(isPresented: $showingContentView) {
                                ContentView()
                            }
                            
                            VStack(spacing: 0){
                                Image("macacoThink")
                                    .resizable()
                                    .frame(width: 340, height: 320)
                            }
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}
struct Lose_Previews: PreviewProvider {
    static var previews: some View {
        Lose()
    }
}

