//
//  WebView.swift
//  H4CK0R News SwiftUI
//
//  Created by Esteban Rafael Trivino Guerra on 8/02/22.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    typealias UIViewType = WKWebView
    let urlString: String?
    
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let safeString = urlString else { return }
        guard let url = URL(string: safeString) else { return }
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
