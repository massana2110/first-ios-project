//
//  LabelExample.swift
//  MyFirstApp
//
//  Created by David Massana on 11/7/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("Perritos", image: "jardin_peludos_logo")
        Label("Home", systemImage: "house")
        Label(
            title: { Text("Encender") },
            icon: { Image(systemName: "lightbulb.max") }
        )
    }
}

#Preview {
    LabelExample()
}
