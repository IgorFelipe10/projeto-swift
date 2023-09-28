import SwiftUI

struct Question: Identifiable {
    let id = UUID()
    let pergunta: String
    let url: String
    var respostas : [Resp]
}


struct Resp {
    var resp : String
    var valid : Bool
}


var perguntas = [
    Question(
        pergunta: "Em quais continentes o guepardo pode ser encontrado?",
        url: "https://s10.s3c.es/imag/_v0/770x420/8/d/9/600x400_formula-e-vs-guepardo.jpg",
        respostas: [Resp(resp: "Ásia e África", valid: true), Resp(resp: "África e Europa", valid: false),  Resp(resp: "América do sul e América do norte", valid: false), Resp(resp: "África do sul e Antártica", valid: false)]
    ),
    Question(
        pergunta: "Qual a dieta principal dos cangurus?",
        url: "https://st5.depositphotos.com/1303658/62711/i/450/depositphotos_627119676-stock-photo-the-red-kangaroo-is-a.jpg",
        respostas: [Resp(resp: "Herbívoros", valid: true), Resp(resp: "Carnívoros", valid: false),  Resp(resp: "Onívoros", valid: false), Resp(resp: "Insetívoros", valid: false)]
    ),
    Question(
        pergunta: "Quais são as cores mais comuns encontradas nos Pinguins-de-Adélia?",
        url: "https://s2-g1.glbimg.com/rOqf4lJPLZTFpgBmoMVVeWloxYU=/0x0:6000x4000/600x0/smart/filters:gifv():strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/B/V/BPgwn5Sei0zN6Z6Wamcg/000-1c86o2.jpg",
        respostas: [Resp(resp: "Preto e Branco", valid: true), Resp(resp: "Cinza e Branco", valid: false),  Resp(resp: "Cinza e Amarelo", valid: false), Resp(resp: "Preto e Amarelo", valid: false)]
    )
    ,
    Question(
        pergunta: "O Tucano-toco é um pássaro que possui um 'bico' maior que o comum devido sua dieta, qual é a dieta do Tucano-toco?",
        url: "https://www.criadourovaleverde.com.br/wp-content/uploads/2021/04/Tucano-toco-600x400-1.jpg",
        respostas: [Resp(resp: "Onívoro", valid: true), Resp(resp: "Herbívoro", valid: false),  Resp(resp: "Insetívoro", valid: false), Resp(resp: "Frugívoro", valid: false)]
    ),
    Question(
        pergunta: "Em estudos recentes, foi descoberto que os cangurus possuem uma população maior que a da população de Humanos da Austrália. Sendo assim qual a média de população dos cangurus?",
        url: "https://www.mundoecologia.com.br/wp-content/uploads/2019/10/Canguru-Saltando-na-Grama.jpg",

        respostas: [Resp(resp: "40.000.000", valid: true), Resp(resp: "4.000.000", valid: false),  Resp(resp: "1.000.000", valid: false), Resp(resp: "10.000.000", valid: false)]
    ),
    Question(
        pergunta: "Qual a estimativa de vida média do Camaleão?",
        url: "https://static.vecteezy.com/ti/fotos-gratis/t1/24115616-verde-camaleao-fechar-se-natural-gerar-ai-foto.jpg",
        
        respostas: [Resp(resp: "5 - 7 anos", valid: true), Resp(resp: "10 - 15 anos", valid: false),  Resp(resp: "1 - 3 anos", valid: false), Resp(resp: "3 - 5 anos", valid: false)]
    ),
    Question(
        pergunta: "Entre o Gorila, Tigre, Orangotango e o Panda gigante qual deles tem a média de peso maior?",
        url: "https://g1.globo.com/Noticias/Mundo/foto/0,,11090069,00.jpg",
        
        respostas: [Resp(resp: "Tigre", valid: true), Resp(resp: "Gorila", valid: false),  Resp(resp: "Orangotango", valid: false), Resp(resp: "Panda gigante", valid: false)]
    ),
    Question(
        pergunta: "Qual o período do dia que o Panda Vermelho é mais ativo?",
        url: "https://s3.static.brasilescola.uol.com.br/be/2023/03/panda-vermelho-arvore.jpg",
        
        respostas: [Resp(resp: "Crepuscular", valid: true), Resp(resp: "Diurno", valid: false),  Resp(resp: "Vespertino", valid: false), Resp(resp: "Noturno", valid: false)]
    ),
    Question(
        pergunta: "As Pumas são conhecidas por serem caçadoras versáteis e ágeis, em qual continente elas são encontradas?",
        url: "https://static.vecteezy.com/ti/fotos-gratis/t1/26442382-puma-puma-concolor-generativo-ai-foto.jpg",
        
        respostas: [Resp(resp: "Américas", valid: true), Resp(resp: "África", valid: false),  Resp(resp: "Ásia", valid: false), Resp(resp: "Oceania", valid: false)]
    )

]


struct paginaJogo: View {
    let verdeAmarelo = Color("verdeAmarelo")
    let verdeFundo = Color("verdeFundo")
    let marrom = Color("marrom")
    
    @State private var currentQuestionIndex = 0
    @State private var userAnswer = ""
    @State private var isAnswerCorrect = false
    @State private var questionImageURL: URL?
    
    var currentQuestion: Question {
        perguntas[currentQuestionIndex]
    }
    
    
    
    
    var body: some View {

        ZStack{
            verdeFundo
                .edgesIgnoringSafeArea(.all)
            VStack {
                VStack{
                    
                    Rectangle()
                        .frame(width: .infinity, height: 100)
                        .foregroundColor(verdeAmarelo)
                        .overlay(){
                            Image("Abidle")
                        }  .ignoresSafeArea()
                }
                Spacer()
                VStack {
                    AsyncImage(url: questionImageURL) { image in
                        image
                            .resizable()
                            .frame(width: 230, height: 230)
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                      
                        ProgressView()
                    }
                    .onAppear {
                     
                        questionImageURL = URL(string: currentQuestion.url)
                    }
                    
                    Spacer()
                    
                    Text(currentQuestion.pergunta)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    ForEach(0..<4 , id: \.self) { index in
//                        var teste : [Resp] = currentQuestion.respostas
//
//                       teste.shuffle()
                        
                        Button(action: {
                            checkAnswer(selectedIndex: currentQuestion.respostas[index].valid)
                            questionImageURL = URL(string: currentQuestion.url)
                        }) {
    
                            Text("\(currentQuestion.respostas[index].resp)")
                                .font(.custom("JockeyOne-Regular", size: 22))
                                .foregroundColor(.white)
                                .frame(width: 300, height: 40)
                                .background(marrom)
                                .cornerRadius(5)
                                .padding(.bottom, 10)
                        }
                    }
                    
                    Spacer()
                }.onAppear(){
                    for i in 0..<perguntas.count {
                        perguntas[i].respostas.shuffle()
                    }
                }
                Spacer()
            }
        }
    }
    
    func checkAnswer(selectedIndex: Bool) {
        if selectedIndex {
            isAnswerCorrect = true
        } else {
            isAnswerCorrect = false

            let loseView = Lose()
            UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: loseView)
        }

        if currentQuestionIndex < perguntas.count - 1 {
            currentQuestionIndex += 1
        } else {
            let WinView = Win()
            UIApplication.shared.windows.first?.rootViewController = UIHostingController(rootView: WinView)
        }

        userAnswer = ""
    }

    func loadImage(from urlString: String) -> UIImage {
        

        return UIImage()
    }
}

struct paginaJogo_Previews: PreviewProvider {
    static var previews: some View {
        paginaJogo()
    }
}
