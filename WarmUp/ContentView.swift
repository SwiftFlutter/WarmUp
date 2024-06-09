//
//  ContentView.swift
//  WarmUp
//
//  Created by JK on 6/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")

            Image(systemName: "globe")
                .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .foregroundColor(.accentColor)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.green)
                .padding(.top)
            Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Range@*/1...10/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
            }

                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
