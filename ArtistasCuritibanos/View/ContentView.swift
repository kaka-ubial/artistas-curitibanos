//
//  ContentView.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import SwiftUI

struct ContentView: View {
    let colunas = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 16) {
                    ForEach(obrasDeArte) { obra in
                        NavigationLink(destination: DetalhesObraView(obra: obra)) {
                            VStack {
                                Image(obra.imagemNome)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .frame(maxWidth: .infinity)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding()
                                Text(obra.titulo)
                                    .font(.headline)
                                Text(obra.artista)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Artistas Curitibanos")
        }
    }
}
