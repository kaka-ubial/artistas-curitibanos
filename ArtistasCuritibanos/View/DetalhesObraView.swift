//
//  DetalhesObraView.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Image(obra.imagemNome)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding()

                Text(obra.titulo)
                    .font(.largeTitle)
                    .bold()

                Text("Artista: \(obra.artista)")
                    .font(.title2)

                Text("Ano: \(obra.ano)")
                    .font(.title3)

                Text("Estilo: \(obra.estilo)")
                    .font(.title3)

                Text(obra.descricao)
                    .padding(.top)

                Spacer()
            }
            .padding()
        }
        .navigationTitle(obra.titulo)
        .navigationBarTitleDisplayMode(.inline)
    }
}
