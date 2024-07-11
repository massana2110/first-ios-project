//
//  ImageExample.swift
//  MyFirstApp
//
//  Created by David Massana on 11/7/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        VStack {
            Image("jardin_peludos_logo")
                .resizable()
                .scaledToFill()
            .frame(width: 100, height: 100)
            
            Image(systemName: "person")
                .resizable()
                .frame(width: 48, height: 48)
        }
    
    }
}

#Preview {
    ImageExample()
}
