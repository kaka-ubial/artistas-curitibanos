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
            VStack {
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
            .frame(maxWidth: .infinity)
            .padding()


        }
        .navigationTitle(obra.titulo) // titulo na navigation bar
        .navigationBarTitleDisplayMode(.inline)
    }
}
