//
//  IMCView.swift
//  MyFirstApp
//
//  Created by David Massana on 12/7/24.
//

import SwiftUI

struct IMCView: View {
    
    // init(){
    //  UINavigationBar.appearance().titleTextAttributes =      [.foregroundColor: UIColor.white]
    // }
    
    @State var gender: Int = 0
    @State var height:Double = 150
    @State var age: Int = 18
    @State var weight: Int = 80
    
    var body: some View {
        VStack {
            HStack {
                ToggleButton(text: "Hombre", imageName: "star.fill", index: 0, selectedIndex: $gender)
                ToggleButton(text: "Mujer", imageName: "heart.fill", index: 1, selectedIndex: $gender)
            }
            
            HeightCalculator(selectedHeight: $height)
            
            HStack {
                CounterButton(text: "Edad", number: $age)
                CounterButton(text: "Peso", number: $weight)
            }
            
            IMCButtonCalculator(userWeight: Double(weight), userHeight: height)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.backgroundApp)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator").bold().foregroundColor(.white)
            }
        }
        // .navigationBarBackButtonHidden()
        // .navigationTitle("Imc Calculator")
    }
}

struct ToggleButton: View {
    
    let text: String
    let imageName: String
    let index: Int
    @Binding var selectedIndex: Int
    
    var body: some View {
        
        let color = if selectedIndex == index {
            Color.backgroundComponentSelected
        } else {
            Color.backgroundComponent
        }
        
        Button(action: {
            selectedIndex = index
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                InformationText(text: text)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(color)
        })
    }
}

struct InformationText: View {
    
    let text: String
    
    var body: some View {
        Text(text).font(.largeTitle).bold().foregroundColor(.white)
    }
}

struct TitleText:View {
    let text:String

    var body: some View {
        Text(text).font(.title2).foregroundColor(.gray)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in:100...220, step: 1).accentColor(.purple).padding(.horizontal, 16)
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct CounterButton: View {
    let text: String
    @Binding var number: Int
    
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: String(number))
            HStack {
                Button(action: {
                    if number > 0 {
                        number -= 1
                    }
                }) {
                    ZStack {
                        Circle().frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                }
                Button(action: {
                    if number < 100 {
                        number += 1
                    }
                }) {
                    ZStack {
                        Circle().frame(width: 70, height: 70)
                            .foregroundColor(.purple)
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                }
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity).background(.backgroundComponent)
    }
}

struct IMCButtonCalculator: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {IMCResultView(userWeight: userWeight, userHeight: userHeight)}) {
                Text("Calcular").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold().foregroundColor(.purple)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}

#Preview {
    IMCView()
}
