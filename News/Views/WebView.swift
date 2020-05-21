//
//  WebView.swift
//  News
//
//  Created by Marcin Magiera on 09/05/2020.
//  Copyright © 2020 Magme Agency. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let request: URLRequest
    
    func makeUIView(context: Context) -> WKWebView {
        let WebView = WKWebView(frame: .zero)
        return WebView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(request)
    }
}

struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView(request: URLRequest(url: URL(string:"https://magme.dev/lorem.html")!))
    }
}
