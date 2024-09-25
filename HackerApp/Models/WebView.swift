//
//  WebView.swift
//  HackerApp
//
//  Created by Disha Limbani on 2024-09-07.
//

import Foundation
import WebKit
import SwiftUI

struct Webview :  UIViewRepresentable { //  ,  { NSViewRepresentable

 
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString {
            if let urll = URL(string: safeURL){
                let request = URLRequest(url: urll)
                uiView.load(request)
            }
        }
    }
//    func makeNSView(context: Context) -> WKWebView {
//        return WKWebView()
//    }
//    
//    func updateNSView(_ nsView: WKWebView, context: Context) {
//        if let safeURL = urlString {
//            if let urll = URL(string: safeURL){
//                let request = URLRequest(url: urll)
//                print(request)
//               
//                nsView.load(request)
//            }
//        }
//    }
    
   
    
    
}


