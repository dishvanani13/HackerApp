//
//  DetailView.swift
//  HackerApp
//
//  Created by Disha Limbani on 2024-09-07.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    var body: some View {
        Webview(urlString: url)
    }
}



#Preview {
    DetailView(url: "https://www.google.com")
}


