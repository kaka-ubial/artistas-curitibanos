//
//  DetalhesObraView.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte  // Recebe uma obra de arte como parâmetro para exibir os detalhes

    var body: some View {
        ScrollView { // Permite rolar o conteúdo da tela
            VStack { // Organiza os elementos verticalmente
                // Título da obra
                Text(obra.titulo)
                    .font(.system(size: 22, weight: .bold, design: .rounded))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                // Imagem da obra
                Image(obra.imagemNome)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()

                // Nome do artista
                Text("Artista: \(obra.artista)")
                    .font(.system(size: 18, weight: .medium, design: .rounded))
                    .foregroundColor(.blue)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 4)

                // Ano da obra
                Text("Ano: \(obra.ano)")
                    .font(.system(size: 16, weight: .regular, design: .monospaced))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 4)

                // Estilo da obra
                Text("Estilo: \(obra.estilo)")
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 4)

                // Descrição da obra
                Text(obra.descricao)
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
            }
            .frame(maxWidth: .infinity) // Expande o conteúdo para preencher horizontalmente
            .padding() // Espaçamento interno geral


        }
        .navigationTitle(obra.titulo) // Define o título da barra de navegação com o título da obra
        .navigationBarTitleDisplayMode(.inline) // Exibe o título no modo "inline" (ao lado do botão de voltar)
    }
}
