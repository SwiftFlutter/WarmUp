//
//  ListLoop.swift
//  WarmUp
//
//  Created by JK on 6/8/24.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {

    @State var favoriteFruits = [
        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 1000),

        Fruit(name: "Banana",
              matchFruitName: "Banana",
              price: 2000),

        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 3000),

        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 4000),

        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 5000),


    ]

    @State var fruitName: String = ""


    var body: some View {

        NavigationStack{
            VStack {
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button(action: {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    }, label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
                .padding()

                List {
                    ForEach(favoriteFruits, id: \.self) { fruit in
                        VStack(alignment: .leading) {
                            Text("name: \(fruit.name)")
                            Text("matchFruitName: \(fruit.matchFruitName)")
                            Text("price: \(fruit.price)")
                        }


                    }.onDelete { indexSet in
                        favoriteFruits.remove(atOffsets: indexSet)

                    }


                }
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoop()
}
