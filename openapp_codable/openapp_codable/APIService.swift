//
//  json_loading.swift
//  openapp_codable
//
//  Created by Vishwas Anandani on 24/03/22.
//

import Foundation
class APIService:NSObject{
    
 func get_response(fromURLString urlString: String,completion: @escaping (Result<RouteInformation, Error>) -> Void){
    
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            
            if let data = data {
                print(data)
                do {
                    let decodedData = try JSONDecoder().decode(RouteInformation.self,
                                                               from: data)
                    
                    print(decodedData)
                    completion(.success(decodedData))
                } catch(let error) {
                    print(error.localizedDescription)
                    print("decode error")
                }
                
            }
            
        }.resume()
    }
    
}}

