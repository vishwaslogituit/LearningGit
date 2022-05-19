//
//  APIService.swift
//  BikeRental
//
//  Created by Vishwas Anandani on 28/03/22.
//

import Foundation

class APIService:NSObject{
    
 func get_response(fromURLString urlString: String,completion: @escaping (Result<BikeRental, Error>) -> Void){
    
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            
            if let data = data {
                //print(data)
                do {
                    let decodedData = try JSONDecoder().decode(BikeRental.self,
                                                               from: data)
                    
                    //print(decodedData)
                    completion(.success(decodedData))
                } catch let error as DecodingError {
                    switch error {
                    case .typeMismatch(let key, let value):
                        print("error \(key), value \(value) and ERROR: \(error.localizedDescription)")
                    case .valueNotFound(let key, let value):
                        print("error \(key) , value \(value) and ERROR: \(error.localizedDescription)")
                    case .keyNotFound(let key, let value):
                        print("error \(key), value \(value) and ERROR: \(error.localizedDescription)")
                    case .dataCorrupted(let key):
                        print("error \(key), and ERROR: \(error.localizedDescription)")
                    default:
                        print("ERROR: \(error.localizedDescription)")
                    }
                    //return nil
                }catch let error {
                    print(error)
                    //return nil
                }
                
            }
            
        }.resume()
    }
    
}}

