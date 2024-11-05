//
//  DetailView.swift
//  HackerNews
//
//  Created by 김민규 on 11/5/24.
//

import SwiftUI

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

#Preview {
    DetailView(url: "https://www.naver.com")
}
