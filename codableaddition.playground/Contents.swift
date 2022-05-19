import UIKit

var request = URLRequest(url: URL(string: "http://capi.hungama.com/webservice/thirdparty/content/music/album_details?store=1&country=IN&content=16056292&user=135450561&product=VI")!,timeoutInterval: Double.infinity)

request.addValue("VI", forHTTPHeaderField: "PRODUCT")
request.httpMethod = "GET"

let task = URLSession.shared.dataTask(with: request) { data, response, error in

guard let data = data else {
print(String(describing: error))
//semaphore.signal()
return

}
print(data)
print(String(data: data, encoding: .utf8)!)}
print(task)
"""
let json =
            {
            "response": {
                        "message": "Missing header PRODUCT"
                        },
            "status_code": 400
}

struct overall: Codable{
        var response: response?
        let status_code: Int?
}
struct response: Codable{
    let message: String?
}

let products = try! JSONDecoder().decode(overall.self, from: data)
print(products)
"""

struct overall: Codable{
    let last_modified: Int?
    var response: response?
    let status_code: Int
}
struct response: Codable{
    var musicalbum: musicalbum?
    var musiclisting: musiclisting?
    var videolisting: videolisting?
    
}
struct musicalbum: Codable{
    let content_id: Int?
    var images: images?
    let title: String?
    let release_year: Int?
    let language: String?
    let description: String?
    let label: String?
    var artist: [artist]?
    let vendor: String?
    let attribute_tempo: String?
    let music_tracks_count: Int?
    let has_video: Int?
    let video_tracks_count: Int?
    let plays_count: Int?
    let duration: Int?
    let count_favorite: Int?
    let user_fav: Int?
}
struct images: Codable {
    let image_500x500: [URL]?
    let image_100x100: [URL]?
    let image_50x50: [URL]?
    let image_200x200: [URL]?
}

struct artist: Codable {
    var artist_id: String?
    var artist_name: String?
    var images: images?
}

struct musiclisting: Codable{
    var track: [track]?
    
}

struct track: Codable{
    let content_id: Int?
    let title: String?
    let album_id: Int?
    let album_name:String?
    let singers:String?
    var images: images?
    let video_id: Int?
    let duration: Int?
}

struct videolisting: Codable{
    var track: [track]?
}
