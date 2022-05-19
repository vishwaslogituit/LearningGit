import UIKit
import Foundation


struct overall: Codable{
    var response: [response]
    let status_code: Int
}
struct response: Codable{
    let product: String
    let store: String
    let section: String
    //var data: [data]
    let epoch: Int
    let current_page: Int
    let total_page: Int
    }
struct data : Codable{
    let bucket_id: String
    let bucket_name: String
    let bucket_auto_type: String
    let content_type: String
    let content_label: String
    let user_recommendation:String
    var specification: specification
    var content: [content]
}
struct specification : Codable{
    let is_weekly: String
    let is_shuffle: String
}
struct content : Codable{
    let id: Int
    let content_title: String
    let typeid: String
    let lang: String
    let store_id: String
    let image: String
    let playcount: Int
    let fav_count: Int
    var tracks: [tracks]
    let description: String
}
struct tracks : Codable{
    let id: String
    let title: String
    let artist: String
}

let products = try! JSONDecoder().decode([overall].self, from: productsJson.data(using: .utf8)!)
print(products)
