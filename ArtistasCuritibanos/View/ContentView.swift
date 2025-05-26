import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel() // Correção aqui: ViewModel no lugar de DetalhesObraView

    let colunas = [GridItem(.adaptive(minimum: 150))]
    @State private var isPressed = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Artistas Curitibanos")
                    .font(.system(size: 34, weight: .bold, design: .rounded))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding(.top, 20)

                // Barra de pesquisa
                TextField("Pesquisar título ou artista...", text: $viewModel.searchText) // usar searchText
                    .padding(8)
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)

                ScrollView {
                    LazyVGrid(columns: colunas, spacing: 16) {
                        ForEach(viewModel.obrasFiltradas) { obra in
                            NavigationLink(destination: DetalhesObraView(obra: obra)) {
                                ObraCardView(obra: obra)
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationBarHidden(true)
        }
    }
}
