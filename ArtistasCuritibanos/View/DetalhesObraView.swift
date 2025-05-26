//
//  DetalhesObraView.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte // obra recebida como parametro

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {

                Image(obra.imagemNome)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()

                // titulo da obra
                Text(obra.titulo)
                    .font(.largeTitle)
                    .bold()

                // nome do artista
                Text("Artista: \(obra.artista)")
                    .font(.title2)

                // ano de criação
                Text("Ano: \(obra.ano)")
                    .font(.title3)

                // estilo artistico
                Text("Estilo: \(obra.estilo)")
                    .font(.title3)

                // descrição da obra
                Text(obra.descricao)
                    .padding(.top)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(obra.titulo) // titulo na navigation bar
        .navigationBarTitleDisplayMode(.inline)
    }
}
