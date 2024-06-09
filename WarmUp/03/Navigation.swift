//
//  Navigation.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct Navigation: View {

    @State var showModal: Bool = false

    let titles = ["디테일뷰로 이동하기1", "디테일뷰로 이동하기2"]
    let description = ["데스티네이션 입니다1", "데스티네이션 입니다2"]

    var body: some View {
        NavigationStack {
            List {
                ForEach([0, 1], id: \.self) { index in
                    NavigationLink {
                        Text(description[index])
                    } label: {
                        Text(titles[index])
                    }

                }

            }
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Button(action: {
                        showModal = true

                    }, label: {
                        Text("Add")
                    })
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지입니다.")
            })
            .navigationTitle("네비게이션")

        }
    }
}

#Preview {
    Navigation()
}
