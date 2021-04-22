//
//  DetailView.swift
//  H4XOR-News-
//
//  Created by Arbaaz on 23/04/21.
//



import SwiftUI





struct DetailView: View {
    
    
    
    let url: String?
    
    
    
    var body: some View {
        
       //creating a web view from a uikit component which is called wkWebView.
       WebView(urlString: url)
        
    }
    
   
    
    
    
}





struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}




