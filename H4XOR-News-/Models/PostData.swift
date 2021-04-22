//
//  PostData.swift
//  H4XOR-News-
//
//  Created by Arbaaz on 22/04/21.
//



import Foundation



struct Results: Decodable {
    
    let hits: [post]
    
    
}



//Identifiable allow our list to be able to recoqnize the order of the post objects, based on this id.
struct post: Decodable, Identifiable {
    
    var id: String{
        return objectID
        
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    
}
