//
//  ViewModel.swift
//  artistas-curitibanos
//
//  Created by user276492 on 5/26/25.
//


import Foundation
import SwiftUI

// Classe ViewModel que gerencia os dados e o estado da aplicação
class ViewModel: ObservableObject {

    // Lista de obras de arte, publicada para que a interface atualize automaticamente quando for alterada
    @Published var obras: [ObraDeArte] = [
        ObraDeArte(titulo: "Preta do Sul", artista: "Rimon Guimaraes", ano: 2017, estilo: "Abstrato", imagemNome: "obra1", descricao: "Mulher negra vestida com um turbante e roupas coloridas, diante de uma bela paisagem"),
        ObraDeArte(titulo: "Araucaria", artista: "Lucas Noal de Farias", ano: 2025, estilo: "Contemporaneo", imagemNome: "obra2", descricao: "Um dos principais simbolos da cidade: a Araucaria"),
        ObraDeArte(titulo: "Nebulosa de Baco", artista: "Rosana Stavis", ano: 2025, estilo: "Impressionismo", imagemNome: "obra3", descricao: "A atriz curitibana Rosana Stavis estrela a produ;'ao Nebulosa de Baco"),
        ObraDeArte(titulo: "Um, dois, tres, quatro", artista: "Denise Roman", ano: 1985, estilo: "Modernismo", imagemNome: "obra4", descricao: "Essa gravura fez parte de uma serie de 10 gravuras enviadas para a Suica numa exposicao itinerante em comemoracao ao Ano Internacional da Juventude"),
        ObraDeArte(titulo: "O Teatro do Mundo", artista: "Potty Lazzarotto", ano: 1952, estilo: "Estilo de Relevos", imagemNome: "obra5", descricao: "Painel de concreto que traz referencias a figuras importantes da dramaturgia e companhias famosas"),
        ObraDeArte(titulo: "Lua Diurna", artista: "Rimon Guimaraes", ano: 2015, estilo: "Abstrato", imagemNome: "obra6", descricao: "Arte de Rimon Guimaraes exposta pelo mundo: um de seus paineis na Republica da Bielorrussia"),
        ObraDeArte(titulo: "Deriva", artista: "Domicio Pedroso", ano: 2015, estilo: "Modernismo", imagemNome: "obra7", descricao: "Obra em oleo sobre tela que representa o velejar"),
        ObraDeArte(titulo: "Passeio Publico de Curitiba", artista: "Alfredo Andersen", ano: 2015, estilo: "Realismo", imagemNome: "obra8", descricao: "Alfredo Andersen dedicou boa parte de sua pintua aos retratos e paisagens de Curitiba e arredores, sendo considerado o pai da pintura paranaense. Esta obra retrata o passeio publico"),
        ObraDeArte(titulo: "O mito da vida", artista: "Michael Devis e Neto Vetorello", ano: 2016, estilo: "Grafitti", imagemNome: "obra9", descricao: "Está no TECPUC da PUC-PR o maior mural vertical no estilo graffiti de Curitiba!"),
        ObraDeArte(titulo: "Cortina corta-fogo do Guairao", artista: "Potty Lazzarotto", ano: 1998, estilo: "Modernismo", imagemNome: "obra10", descricao: "Cortinas corta-fogo, acionadas apenas em caso de incendio. A intencao era servir de cenario para apresentacoes, mas hoje ainda e mantida apenas para casos de fogo no teatro")
    ]

    // Campo para armazenar o texto da pesquisa digitado pelo usuário
    @Published var searchText: String = ""

    // Computed property: retorna a lista de obras filtradas com base no searchText
    var obrasFiltradas: [ObraDeArte] {
        if searchText.isEmpty {
            return obras // Se a busca estiver vazia, retorna todas as obras
        } else {
            // Filtra as obras onde o título ou artista contenham o texto da pesquisa (ignora maiúsculas/minúsculas)
            return obras.filter { $0.titulo.localizedCaseInsensitiveContains(searchText) || $0.artista.localizedCaseInsensitiveContains(searchText) }
        }
    }
}
