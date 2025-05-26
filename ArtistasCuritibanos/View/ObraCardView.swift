//
//  ObraCardView.swift
//  artistas-curitibanos
//
//  Created by user276492 on 5/26/25.
//


import SwiftUI

struct ObraCardView: View {
    let obra: ObraDeArte
    @State private var isPressed = false

    var body: some View {
        VStack {
            Image(obra.imagemNome)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(maxWidth: .infinity)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()

            Text(obra.titulo)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)

            Text(obra.artista)
                .font(.system(size: 16, weight: .light, design: .monospaced))
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 4)
        .scaleEffect(isPressed ? 0.95 : 1)
        .animation(.easeInOut(duration: 0.2), value: isPressed)
        .onLongPressGesture(minimumDuration: 0.1, pressing: { pressing in
            isPressed = pressing
        }, perform: {})
    }
}
