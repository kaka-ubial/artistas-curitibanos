//
//  ObraDeArte.swift
//  ArtistasCuritibanos
//
//  Created by user276492 on 5/22/25.
//


import Foundation

struct ObraDeArte: Identifiable {
    let id = UUID()
    let titulo: String
    let artista: String
    let ano: Int
    let estilo: String
    let imagemNome: String
    let descricao: String
}
