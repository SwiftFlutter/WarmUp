//
//  Onboarding.swift
//  WarmUp
//
//  Created by JK on 6/8/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35))
                .bold()
                .padding()
                .padding(.top, 50)
                .padding(.bottom, 30)

            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundStyle(.gray)

                }
                .padding(.trailing)

            }

            HStack {
                Image(systemName: "slider.horizontal.2.square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Copy & Paste Edits")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundStyle(.gray)

                }
                .padding(.trailing)

            }
            .padding(.vertical)

            HStack {
                Image(systemName: "square.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35)
                    .padding(.horizontal, 7)
                    .foregroundColor(.blue)
                VStack(alignment: .leading) {
                    Text("Merge Duplicates")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundStyle(.gray)

                }
                .padding(.trailing)

            }
            Spacer()

            Button(action: {

            }, label: {
                Text("Continue")
                    .padding()
                    //.frame(maxWidth:.infinity)
                    .frame(width: 350)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
            .padding(.bottom, 60)



        }
    }
}

#Preview {
    Onboarding()
}
