//
//  ObraDeArte.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import Foundation

// modelo de dados que representa uma obra de arte
struct ObraDeArte: Identifiable {
    let id = UUID() // identificador único automático
    let titulo: String // titulo da obra
    let artista: String // nome do artista
    let ano: Int // ano de criação da obra
    let estilo: String // estilo artístico
    let imagemNome: String // nome do ícone da imagem
    let descricao: String // descrição da obra ou do artista
}
