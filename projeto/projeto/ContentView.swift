import SwiftUI

struct ContentView: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let marrom = Color("marrom")
    
    var body: some View {
           NavigationView {
               ZStack {
                   verdeFundo
                       .edgesIgnoringSafeArea(.all)
                   
                   VStack{
                       VStack {
                           Rectangle()
                               .frame(width: .infinity, height: 100)
                               .foregroundColor(verdeAmarelo)
                               .shadow(radius: 5)
                               .overlay(){
                                   Image("Abidle")
                                       .shadow(radius: 4, x:0, y:4)
                               }  .ignoresSafeArea()
                       }
                       Spacer()
                       
                       NavigationLink(destination: paginaJogo()) {
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
                                   Text("Jogar")
                                       .font(.custom("JockeyOne-Regular", size:22))
                                       .foregroundColor(.white)
                                       .padding(.bottom))
                               .padding(.bottom, 10)
                       }
                       
                       NavigationLink(destination: paginaRegras()) {
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
                                   Text("Regras")
                                       .font(.custom("JockeyOne-Regular", size:22))
                                       .foregroundColor(.white)
                                       .padding(.bottom))
                               .padding(.bottom, 10)
                               
                       }
                       
                       NavigationLink(destination: paginaRanking()) {
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
                                   Text("Aprenda mais")
                                       .font(.custom("JockeyOne-Regular", size:22))
                                       .foregroundColor(.white)
                                       .padding(.bottom))
                           
                       }
                       Image("macacosurf")
                       .resizable()
                   }
               }
           }
       }
   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



