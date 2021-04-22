//
//  NetworkManager.swift
//  H4XOR-News-
//
//  Created by Arbaaz on 22/04/21.
//



import Foundation



//by ObservableObject,we can start to broadcast one or many of its properties to any interested parties.
class NetworkManager: ObservableObject {
    
    
    //By Published keyword,it publish our posts to interested parties.
    //SO,now if u subscribe to this posts variable,then interested or subscribed parties will able to hear from it whenever the contents changes.
    @Published var posts = [post]()
    
    
    
    
    
    func fetchData() {
        
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { (data, response, error) in
                
                if error == nil{
                    let decoder = JSONDecoder()
                    
                    if let safeData = data{
                        do {
                           let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.posts = results.hits
                            }
                        }
                        catch{
                        print(error)
                        }
                    }
               }
            }
            task.resume()
       }
    }
    
    
    
    
    
    
}
