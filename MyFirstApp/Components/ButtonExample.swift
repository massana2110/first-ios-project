//
//  ButtonExample.swift
//  MyFirstApp
//
//  Created by David Massana on 11/7/24.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        // Boton con un texto
        Button("Button") {
            print("Hello")
        }
        
        // Boton con background
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("Hola")
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 48)
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8)))
        })
    }
}

struct Counter: View {
    
    @State var subscribers = 0
    
    var body: some View {
        Button(action: {
            subscribers += 1
        }, label: {
            Text("Suscriptores: \(subscribers)")
                .frame(height: 48)
                .foregroundColor(.white)
                .background(.red)
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 8, height: 8)))
        })
    }
}

#Preview {
    ButtonExample()
}

#Preview {
    Counter()
}
