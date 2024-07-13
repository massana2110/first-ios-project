//
//  MenuView.swift
//  MyFirstApp
//
//  Created by David Massana on 12/7/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: IMCView()) {
                    Text("IMC Calculator")
                }
                
                Text("APP 2")
                Text("APP 3")
                Text("APP 4")
                Text("APP 5")
            }
        }
    }
}

#Preview {
    MenuView()
}
