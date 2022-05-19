//
//  json_loading.swift
//  new_codable_project
//
//  Created by Vishwas Anandani on 24/03/22.
//

import Foundation

class json_loading{
func loadJson(fromURLString urlString: String,completion: @escaping (Result<overall, Error>) -> Void){
    
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("VI", forHTTPHeaderField: "PRODUCT")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            
            if let data = data {
                print(data)
                do {
                    let decodedData = try JSONDecoder().decode(overall.self,
                                                               from: data)
                    
                    print(decodedData)
                    completion(.success(decodedData))
                } catch {
                    print("decode error")
                }
                
            }
            
        }.resume()
    }
    
}}






