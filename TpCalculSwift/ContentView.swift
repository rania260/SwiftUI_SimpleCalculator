//
//  ContentView.swift
//  TpCalculSwift
//
//  Created by azertt on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var numberone = ""
    @State private var number = ""
    @State private var result = "0"
    
    var body: some View {
        VStack(spacing: 20){
            Image("cal")
                    .resizable()
                    .frame(width: 200, height:100)
            TextField("Num 1", text: $numberone)
            TextField("Num 2", text: $number)
            
            HStack {
                Button("+") {
                    if let val1 = Double (self.numberone),
                       let val2 = Double (self.number){
                        self.result = String( val1 + val2)
                    }
            }
            Button("-") {
                if let val1 = Double (self.numberone),
                   let val2 = Double (self.number){
                    self.result = String( val1 - val2)
                }
            }
            Button("*") {
                if let val1 = Double (self.numberone),
                   let val2 = Double (self.number){
                    self.result = String( val1 * val2)
                }
            }
            Button("/") {
                if let val1 = Double (self.numberone),
                   let val2 = Double (self.number){
                    self.result = String( val1 / val2)
                }
            }
            }
            
            Text("Result: \(result)")
                .font(.title)
            
        
        }
        .padding()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
