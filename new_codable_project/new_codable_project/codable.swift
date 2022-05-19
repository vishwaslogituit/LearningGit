//
//  codable.swift
//  new_codable_project
//
//  Created by Vishwas Anandani on 24/03/22.
//

import Foundation
struct overall:Codable {
    let response: Response
}
struct Response:Codable{
    let numFound: Int?
    let Start: Int?
    let docs: [Docs]
    
}
struct Docs:Codable {
    let id: String?
}
