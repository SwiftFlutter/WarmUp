//
//  Detail.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct Detail: View {

    @Binding var isPresented: Bool

    var body: some View {
        Text("모달 페이지 입니다2")
        Button(action: {
            isPresented = false

        }, label: {
            Text("닫기")
        })
    }
}

#Preview {
    Detail(isPresented: .constant(true))
}
