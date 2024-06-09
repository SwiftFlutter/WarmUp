//
//  MyApp.swift
//  WarmUp
//
//  Created by JK on 6/9/24.
//

import SwiftUI

struct MyApp: View {

    @State var showModal: Bool = false

    var body: some View {
        TabView {
            FirstList()
            .tabItem {
                Label("first", systemImage: "tray.and.arrow.up.fill")
            }

                Text("두 번째 페이지")
                .tabItem {
                    Label("second", systemImage: "tray.and.arrow.up.fill")
                }

                Text("세 번째 페이지")
                .tabItem {
                    Label("third", systemImage: "tray.and.arrow.up.fill")
                }
                Text("네 번째 페이지")
                .tabItem {
                    Label("fourth", systemImage: "tray.and.arrow.up.fill")
                }





        }
        .sheet(isPresented: $showModal, content: {
            TabView {
                TabView {
                    OnboardingSample(onboardingTitle: "온보딩1", backgroundColor: .green, thirdPageOrNot: false, showModal: $showModal)

                    OnboardingSample(onboardingTitle: "온보딩2", backgroundColor: .blue, thirdPageOrNot: false, showModal: $showModal)

                    OnboardingSample(onboardingTitle: "온보딩3", backgroundColor: .blue, thirdPageOrNot: true, showModal: $showModal)
                }
                //선생님이 버튼도 추가해보라고해서 그냥 지피티 이용해서만들어본거
            }
            .tabViewStyle(.page)
        })
        .onAppear() {
            showModal = true
        }
    }
}

#Preview {
    MyApp()
}
