//
//  ContentView.swift
//  H4XOR-News-
//
//  Created by Arbaaz on 22/04/21.
//



import SwiftUI





struct ContentView: View {
    
    //By ObservedObject, networkManager become listener or subscriber of NetworkManager().
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        
        NavigationView{
        
            
        //instead of using normal list initalizer, we r going to initilize the list in different way, we goona use the list which take a piece of data and compute that row using that data.
        //List(data: randomAccessCollection, rowContent: (Identifiable) -> View)
        //angela video 214-10:00
            List(networkManager.posts) { posttt in
                
                NavigationLink(destination: DetailView(url: posttt.url)) {
                    
                    HStack {
                        Text(String(posttt.points))
                        Text(posttt.title)
                    }
                    
                }
            
                }
        
        
        .navigationBarTitle("H4XOR NEWS")
        }
       
        
        
        
        
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
        
        
        
        
        
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}











