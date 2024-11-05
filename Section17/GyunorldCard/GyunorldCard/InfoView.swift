//
//  InfoView.swift
//  GyunorldCard
//
//  Created by 김민규 on 11/5/24.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundStyle(.green)
                Text(text)
            })
            .padding(.all)
    }
}

#Preview(traits: .sizeThatFitsLayout){
    InfoView(text: "HELLO", imageName: "phone.fill")
}
