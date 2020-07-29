//
//  WebView.swift
//  H4XOR-News
//
//  Created by Gobble Veda on 7/28/20.
//  Copyright © 2020 Gobble Veda. All rights reserved.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let urlString: String?

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
 
}
