import SwiftUI

struct ContentView: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let Marrom = Color("Marrom")
    
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
                        .overlay(){
                            Text("Abidle")
                                .font(.custom("JockeyOne-Regular", size: 40))
                                .fontWeight(.heavy)
                                .foregroundColor(Marrom)
                                .padding(20)
                                .shadow(radius: 3, x:0, y:5)
                              
                        }  .ignoresSafeArea()
                            
                        }
                    Spacer()
                    VStack {
                        Rectangle()
                            .frame(width: 230, height:230)
                        Spacer()
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor?")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                        Rectangle()
                            .frame(width: 200, height: 40)
                            .foregroundColor(Marrom)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 2)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Resposta 1")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                        Rectangle()
                            .frame(width: 200, height: 40)
                            .foregroundColor(Marrom)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 2)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Resposta 2")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                        Rectangle()
                            .frame(width: 200, height: 40)
                            .foregroundColor(Marrom)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 2)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Resposta 3")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                        Rectangle()
                            .frame(width: 200, height: 40)
                            .foregroundColor(Marrom)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 2)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Resposta 4")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                        Spacer()
                    }
                    
                    Spacer()
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
