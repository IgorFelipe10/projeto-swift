//
//  Win.swift
//  projeto-tela2
//
//  Created by Student on 26/09/23.
//

import SwiftUI


struct Win: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let Marrom = Color("Marrom")
    
    var body: some View {
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
                    
                    VStack {
                        Text("Parabéns! Você ganhou!")
                            .font(.custom("JockeyOne-Regular", size: 35))
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        Text("Pontos: 000000")
                            .font(.custom("JockeyOne-Regular", size: 30))
                            .foregroundColor(.white)
                            .shadow(radius: 20)
                        Rectangle()
                            .frame(width: 200, height: 40)
                            .foregroundColor(Marrom)
                            .shadow(color: Color.black, radius: 2, x: 0, y: 2)
                            .padding(.bottom, 10)
                            .overlay(
                                Text("Voltar ao início")
                                    .font(.custom("JockeyOne-Regular", size:22))
                                    .foregroundColor(.white)
                                    .padding(.bottom))
                        Image("Monk")
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 20)
                    }
                    Spacer()
                }
            }
        }
    }
    
    struct Win_Previews: PreviewProvider {
        static var previews: some View {
            Win()
        }
    }
}
