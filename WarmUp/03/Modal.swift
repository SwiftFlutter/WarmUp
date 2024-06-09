//
//  Modal.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct Modal: View {

    @State var showModal: Bool = false
    var body: some View {
        VStack {
            Text("메일 페이지입니다")
            Button(action: {
                showModal = true

            }, label: {
                Text("Modal 화면 전환")
            })


        }
        .sheet(isPresented: $showModal){
            Detail(isPresented: $showModal)
        }

    }
}

#Preview {
    Modal()
}
