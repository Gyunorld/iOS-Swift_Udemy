//
//  ContentView.swift
//  GyunorldCard
//
//  Created by 김민규 on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("appleLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("김민규")
                    .font(Font.custom("BlackHanSans-Regular", size: 70))
                    .bold()
                    .foregroundStyle(.white)
                Text("iOS Developer")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "010 9428 6648", imageName: "phone.fill")
                InfoView(text: "mingyu324@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
