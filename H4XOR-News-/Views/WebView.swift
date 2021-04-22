//
//  WebView.swift
//  H4XOR-News-
//
//  Created by Arbaaz on 23/04/21.
//



import Foundation
import WebKit
import SwiftUI





//There is no web view for SWIFTUI, so instead , we have to go to UIkit and borrow some of the tools.
struct WebView: UIViewRepresentable {
   
    
    
    let urlString: String?
    
    
    
    
    
    func makeUIView(context: Context) -> WKWebView {
        //created web view from uikit component wkwebview
        return WKWebView()
    }
    
    
    
    
    
    //updating the web view by loading the url.
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
        if let safeString = urlString {
            
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
    
    
    
    
}
