//
//  ContentView.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import SwiftUI

struct ContentView: View {

    // configuração da grade com colunas adaptáveis
    let colunas = [GridItem(.adaptive(minimum: 150))]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 16) {

                    // loop para exibir cada obra na grade
                    ForEach(obrasDeArte) { obra in

                    // ao tocar em uma obra, navega para os detalhes
                        NavigationLink(destination: DetalhesObraView(obra: obra)) {
                            VStack {

                                // exibição da imagem usando SF Symbol
                                Image(obra.imagemNome)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .frame(maxWidth: .infinity)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding()


                    // título da obra
                        Text(obra.titulo)
                        .font(.system(size: 20, weight: .bold, design: .rounded)) 
                        .foregroundColor(.black) 

                    // nome do artista
                        Text(obra.artista)
                        .font(.system(size: 16, weight: .light, design: .monospaced))
                        .foregroundColor(.blue)            
                            }
                            .padding()
                        }
                    }
                }
                .padding() // padding da grade
            }
            .navigationTitle("Artistas Curitibanos")
        }
    }
}
