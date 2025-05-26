//
//  ObraCardView.swift
//  artistas-curitibanos
//
//  Created by user276492 on 5/26/25.
//


import SwiftUI

struct ObraCardView: View {
    let obra: ObraDeArte // Obra de arte recebida como parâmetro para exibição no card
    @State private var isPressed = false // Estado para controlar o efeito de escala ao pressionar

    var body: some View {
        VStack { // Organiza os elementos verticalmente
            // Imagem da obra de arte
            Image(obra.imagemNome)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            
           // Título da obra
            Text(obra.titulo)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)

            // Nome do artista
            Text(obra.artista)
                .font(.system(size: 16, weight: .light, design: .monospaced))
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
        .scaleEffect(isPressed ? 0.95 : 1) // Efeito de escala quando pressionado (reduz o tamanho)
        .animation(.easeInOut(duration: 0.2), value: isPressed) // Animação suave para o efeito de escala
        .onLongPressGesture(minimumDuration: 0.1, pressing: { pressing in 
            isPressed = pressing // Define o estado isPressed durante o pressionamento longo
        }, perform: {}) // Nenhuma ação adicional ao finalizar o pressionamento
    }
}
