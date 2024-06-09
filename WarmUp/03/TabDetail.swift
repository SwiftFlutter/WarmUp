//
//  TabDetail.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct TabDetail: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is Detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is Detail2")
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("This is Detail3")
        }
    }
}

#Preview {
    TabDetail()
}
