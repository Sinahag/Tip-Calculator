//
//  ContentView.swift
//  First Project
//
//  Created by Sina Haghighi on 2022-12-29.
//

import SwiftUI

struct ContentView: View {
    @State var amount = "100"
    @State var tipPercent = 15.0
    var body: some View {
        VStack {
            HStack{
                Text("Tip Calculator")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Image(systemName: "target")
                    .frame(width: 10.0, height: 10.0)
                    .imageScale(.large)
            }
            
            HStack{
                Text("$")
                TextField("Amount", text:$amount)
            }.padding(.leading)

            HStack{
                Slider(value: $tipPercent, in: 1...30,step: 1.0)
                Text("\(Int(tipPercent))%")
            }
            .padding(.all)
            
            if (Double(amount) != nil){
                Text("Tip Amount: $ \(Double(amount)! * tipPercent / 100.0, specifier: "%0.2f")")
            }else{
                Text("Please enter a numerical value" )
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
