//
//  json_loading.swift
//  consuming_json
//
//  Created by Vishwas Anandani on 09/03/22.
//

import Foundation

class loading_json{

    func newJSONDecoder() -> JSONDecoder {

        let decoder = JSONDecoder()

        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {

            decoder.dateDecodingStrategy = .iso8601

        }

        return decoder

    }



    func newJSONEncoder() -> JSONEncoder {

        let encoder = JSONEncoder()

        if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {

            encoder.dateEncodingStrategy = .iso8601

        }

        return encoder

    }

    func loadJson(fromURLString urlString: String,completion: @escaping (Result<Song, Error>) -> Void){
        
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.setValue("VI", forHTTPHeaderField: "PRODUCT")
            URLSession.shared.dataTask(with: request) { (data, response, error) in
                print("check")
                if let error = error {
                    completion(.failure(error))
                }
                
                if let data = data {
                    print(data)
                    do {
                        let decodedData = try JSONDecoder().decode(Song.self,
                                                                   from: data)
                        
                        print(decodedData)
                        completion(.success(decodedData))
                    } catch {
                        print("decode error")
                    }
                    
                }
                
            }.resume()
        }
        
    }




}
