//
//  TextExample.swift
//  MyFirstApp
//
//  Created by David Massana on 11/7/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.headline)
            Text("Custom")
                .font(.system(size: 40, weight: .bold, design: .serif))
                .underline()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("David David David David David")
                .frame(width: 60)
                .lineLimit(3)
                .lineSpacing(2.0)
        }
    }
}

#Preview {
    TextExample()
}
