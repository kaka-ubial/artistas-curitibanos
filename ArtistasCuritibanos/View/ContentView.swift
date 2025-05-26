import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel() // Instancia o ViewModel como um objeto de estado para gerenciar os dados e atualizações de tela

    let colunas = [GridItem(.adaptive(minimum: 150))] // Define uma grade adaptativa com largura mínima de 150 pontos para cada item
    @State private var isPressed = false // Estado para controlar a interação (não usado no momento, mas pode ser para animações ou ações futuras)

    var body: some View {
        NavigationStack { // Cria uma pilha de navegação para transição entre as telas
            VStack { // Empilha os elementos verticalmente
                Text("Artistas Curitibanos")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)

                 // Barra de pesquisa para filtrar as obras de arte
                TextField("Pesquisar título ou artista...", text: $viewModel.searchText) // usar searchText
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)

                ScrollView { // Área de rolagem para exibir as obras de arte
                    LazyVGrid(columns: colunas, spacing: 16) {  // Cria uma grade adaptativa com as colunas definidas e espaçamento entre os itens
                        ForEach(viewModel.obrasFiltradas) { obra in // Itera sobre a lista de obras filtradas
                            NavigationLink(destination: DetalhesObraView(obra: obra)) { // Link para navegar até a tela de detalhes da obra
                                ObraCardView(obra: obra) // Exibe o cartão visual da obra
                            }
                        }
                    }
                    .padding() // Espaçamento interno para a grade 
                }
            }
            .navigationBarHidden(true) // Oculta a barra de navegação na tela principal
        }
    }
}
