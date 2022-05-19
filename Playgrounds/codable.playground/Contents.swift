import UIKit
import Foundation


struct response: Codable{
    let product: String
    let store: String
    let section: String
    let data: [data]
    let status_code: Int
    enum CodingKeys: String, CodingKey {
            case product
            case store
            case section
            case data
            case status_code
        }
    enum DataKeys: String, CodingKey {
            case data
        }
     
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
     
            name = try values.decode(String.self, forKey: .name)
     
            let location = try values.nestedContainer(keyedBy: LocationKeys.self, forKey: .country)
            country = try location.decode(String.self, forKey: .country)
     
            use = try values.decode(String.self, forKey: .use)
            amount = try values.decode(Int.self, forKey: .amount)
     
        }
    }
struct data {
    let bucket_id: String
    let bucket_name: String
    let bucket_auto_type: String
    let content_type: String
    let content_label: String
    let user_recommendation:String
    let specification: specification
    let content: [content]
    let epoch: Int?
    let current_page: Int?
    let total_page: Int?
}
struct specification {
    var is_weekly: String
    var is_shuffle: String
}
struct content {
    let id: Int
    let content_title: String
    let typeid: String
    let lang: String
    let store_id: String
    let image: String
    let playcount: Int
    let fav_count: Int
    let tracks: [tracks]
    let description: String
}
struct tracks {
    let id: String
    let title: String
    let artist: String
}


do {
    let json = """
        {
            "response":
            {
                "product":"Hungama",
                "store":"India",
                "section":"Top Charts",
                "data":
                [
                    {
                        "bucket_id":"253",
                        "bucket_name":"Today 2019s Top Hits",
                        "bucket_auto_type":"1",
                        "content_type":"dailytopcharts",
                        "content_label":"Daily",
                        "user_recommendation":"0",
                        "specification":{"is_weekly":"0","is_shuffle":"0"},
                        "content":[
                        {
                            "id":"38937",
                            "content_title":"Today's Top Hits - Hindi",
                            "typeid":"topcharts",
                            "lang":"Hindi",
                            "store_id":"1",
                            "image":"https:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\0656fa0f8496f162f6c3fd7da697d056.jpg",
                            "playcount":22198186,
                            "fav_count":1123854,
                            "tracks":[
                                {"id":"62418416","title":"Thoda Thoda Pyaar","artist":"Stebin Ben,Nilesh Ahuja"},
                                {"id":"66196899","title":"Paani Paani","artist":"Badshah,Aastha Gill"},
                                {"id":"70437709","title":"Jannat Ve","artist":"Darshan Raval"}
                                    ],
                            "description":""},
                            }]
                        "epoch":1642483050,
                        "current_page":1,
                        "total_page":1}
                    ],
                "status_code":200}
            }
    """

    let data = Data(json.utf8)

    let decoder = JSONDecoder()
    //decoder.keyDecodingStrategy = .convertFromSnakeCase

    let user_data = try decoder.decode(response.self, from: data)
    //let user = codingData.response

    print("user data:", user_data)
} catch {
    print("Whoops, an error occured: \(error)")
}
