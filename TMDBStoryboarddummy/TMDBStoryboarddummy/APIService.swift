//
//  APIService.swift
//  MediacorpMovieProject
//
//  Created by Vishwas Anandani on 11/04/22.
//

import Foundation
class APIService:NSObject{
    
 func get_response(fromURLString urlString: String,completion: @escaping (Result<MovieResponse, Error>) -> Void){
    
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("YOUR API KEY", forHTTPHeaderField: "1a5ac0e3d3792ed0a5f3b9293f104204")
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
            }
            if let data = data {
                //print(data)
                do {
                    let decodedData = try JSONDecoder().decode(MovieResponse.self,
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

