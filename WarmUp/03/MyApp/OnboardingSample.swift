//
//  OnboardingSample.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct OnboardingSample: View {

//    var onboardingTitle: String = "온보딩"
//    var backgroundColor: Color = .brown



    let onboardingTitle: String
    let backgroundColor: Color
    var thirdPageOrNot: Bool?
    @Binding var showModal: Bool



    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            VStack {
                Text(onboardingTitle)
                if thirdPageOrNot ?? false {
                    Button(action: {
                        showModal = false
                        
                    }, label: {
                        Text("Start")
                            .foregroundStyle(.white)
                    })
                }
            }
        }
    }
}

#Preview {
    OnboardingSample(onboardingTitle: "온보딩 테스트", backgroundColor: .brown, thirdPageOrNot: false, showModal: .constant(true))
}
