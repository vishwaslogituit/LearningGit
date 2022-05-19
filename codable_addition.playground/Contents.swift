import UIKit

let Json = """
        {
        "last_modified":1643262597,
        "response":{
        "musicalbum":{"content_id":16056292,"images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"title":"Ram - The Essential Prayers","release_year":2014,"language":"Hindi","description":" ","label":"Strumm Entertainment","artist":[{"artist_id":"6867","artist_name":"Shankar Mahadevan","image":{"image_50x50":["https:\\images.hungama.com\\a\\1\\9cd\\782\\6867\\6867_50x50.jpg","https:\\images.hungama.com\\a\\1\\9cd\\782\\6867\\6867_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\a\\1\\9cd\\782\\6867\\6867_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\a\\1\\9cd\\782\\6867\\6867_200x200.jpg","https:\\images.hungama.com\\a\\1\\9cd\\782\\6867\\6867_200x200.jpg"]}},{"artist_id":"6605440","artist_name":"Chorus","image":{"image_50x50":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"],"image_200x200":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"]}},{"artist_id":"508","artist_name":"Anuradha Paudwal","image":{"image_50x50":["https:\\images.hungama.com\\a\\1\\389\\bc7\\508\\508_50x50.jpg","https:\\images.hungama.com\\a\\1\\389\\bc7\\508\\508_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\a\\1\\389\\bc7\\508\\508_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\a\\1\\389\\bc7\\508\\508_200x200.jpg","https:\\images.hungama.com\\a\\1\\389\\bc7\\508\\508_200x200.jpg"]}},{"artist_id":"8132","artist_name":"Vijay Prakash","image":{"image_100x100":["https:\\images.hungama.com\\a\\1\\867\\706\\8132\\8132_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\a\\1\\867\\706\\8132\\8132_200x200.jpg","https:\\images.hungama.com\\a\\1\\867\\706\\8132\\8132_200x200.jpg"],"image_50x50":["https:\\images.hungama.com\\a\\1\\867\\706\\8132\\8132_50x50.jpg","https:\\images.hungama.com\\a\\1\\867\\706\\8132\\8132_50x50.jpg"]}},{"artist_id":"6283","artist_name":"Sadhana Sargam","image":{"image_50x50":["https:\\images.hungama.com\\a\\1\\8a9\\c8a\\6283\\6283_50x50.jpg","https:\\images.hungama.com\\a\\1\\8a9\\c8a\\6283\\6283_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\a\\1\\8a9\\c8a\\6283\\6283_200x200.jpg","https:\\images.hungama.com\\a\\1\\8a9\\c8a\\6283\\6283_200x200.jpg"],"image_100x100":["https:\\images.hungama.com\\a\\1\\8a9\\c8a\\6283\\6283_100x100.jpg"]}},{"artist_id":"97418","artist_name":"P. Unnikrishnan","image":{"image_50x50":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"],"image_200x200":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"]}},{"artist_id":"29059","artist_name":"Rattan Mohan Sharma",
            "image":{"image_50x50":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"],"image_200x200":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"]}},{"artist_id":"6485","artist_name":"Sanjeev Abhyankar","image":{"image_50x50":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"],"image_200x200":["http:\\dev-resws-hungamatech-com.storage.googleapis.com\\featured_content\\2382200896a5a881321eafcfa33032bf.jpg"]}}],"vendor":"Strumm Entertainment","attribute_tempo":"M","music_tracks_count":10,"has_video":1,"video_tracks_count":5,"plays_count":7794711,"duration":0,"count_favorite":9102,"user_fav":0},
            "musiclisting":{"track":[{"content_id":16056271,"title":"Raghupati Raghav Raja Ram - a Famous Ram Bhajan","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Shankar Mahadevan","images":{"image_50x50":["https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_50x50.jpg","https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_200x200.jpg","https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_500x500.jpg"],"image_800x800":["https:\\images.hungama.com\\c\\1\\c7c\\f06\\16056271\\16056271_800x800.jpg"]},"video_id":0},{"content_id":16056293,"title":"Ram Raksha Stotra","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Chorus","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0},{"content_id":16056238,"title":"Shri Ramchandra Kripalu Bhaj Mann","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Anuradha Paudwal","images":{"image_50x50":["https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_50x50.jpg","https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_200x200.jpg","https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_500x500.jpg"],"image_800x800":["https:\\images.hungama.com\\c\\1\\c5e\\cf0\\16056238\\16056238_800x800.jpg"]},"video_id":0},{"content_id":16056294,"title":"Mangal Bhavan Amangal Haari","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Vijay Prakash","images":{"image_50x50":["https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_50x50.jpg","https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_200x200.jpg","https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_500x500.jpg"],"image_800x800":["https:\\images.hungama.com\\c\\1\\50b\\c4e\\16056294\\16056294_800x800.jpg"]},"video_id":0},{"content_id":16056295,"title":"Payoji Maine Ram Ratan","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Sadhana Sargam","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0},{"content_id":16056211,"title":"Ramaya Ram Bhadraya","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"P. Unnikrishnan",
            "images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0},{"content_id":16056248,"title":"Thumak Chalat Ramchandra","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Sadhana Sargam","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0},{"content_id":16056296,"title":"Bhay Pragat Kripala","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Vijay Prakash","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0},{"content_id":16056297,"title":"Aarti Shri Ramayanji Ki","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Rattan Mohan Sharma","images":{"image_50x50":["https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_50x50.jpg","https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_100x100.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_200x200.jpg","https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_500x500.jpg"],"image_800x800":["https:\\images.hungama.com\\c\\1\\b02\\805\\16056297\\16056297_800x800.jpg"]},"video_id":0},{"content_id":16056298,"title":"Shri Ram Jai Ram","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Sanjeev Abhyankar","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_100x100.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_50x50.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg","https:\\images.hungama.com\\c\\1\\feb\\71c\\16056292\\16056292_200x200.jpg"]},"video_id":0}]},
            "videolisting":{"track":[{"content_id":16407407,"title":"Payoji Maine Ram Ratan","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Sadhana Sargam","images":{"image_200x200":["https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_200x200.jpg","https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_100x100.jpg"],"image_700x394":["https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_700x394.jpg","https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_700x394.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_50x50.jpg","https:\\images.hungama.com\\c\\1\\db1\\bb2\\16407407\\16407407_50x50.jpg"]},"duration":318},{"content_id":16407405,"title":"Bhay Pragat Kripala","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Vijay Prakash","images":{"image_500x500":["https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_500x500.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_200x200.jpg","https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_200x200.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_50x50.jpg","https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_50x50.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_100x100.jpg"],"image_700x394":["https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_700x394.jpg","https:\\images.hungama.com\\c\\1\\567\\485\\16407405\\16407405_700x394.jpg"]},"duration":292},{"content_id":16407408,"title":"Ram Raksha Stotra","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Rattan Mohan Sharma","images":{"image_50x50":["https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_50x50.jpg","https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_50x50.jpg"],"image_700x394":["https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_700x394.jpg","https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_700x394.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_100x100.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_500x500.jpg"],"image_200x200":["https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_200x200.jpg","https:\\images.hungama.com\\c\\1\\8fb\\84f\\16407408\\16407408_200x200.jpg"]},"duration":704},{"content_id":16407409,"title":"Shri Ram Jai Ram Dhun","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Sanjeev Abhyankar","images":{"image_200x200":["https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_200x200.jpg","https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_200x200.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_500x500.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_100x100.jpg"],"image_700x394":["https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_700x394.jpg","https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_700x394.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_50x50.jpg","https:\\images.hungama.com\\c\\1\\78f\\6a1\\16407409\\16407409_50x50.jpg"]},"duration":338},{"content_id":16407406,"title":"Mangal Bhavan Amangal Haari","album_id":16056292,"album_name":"Ram - The Essential Prayers","singers":"Vijay Prakash","images":{"image_200x200":["https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_200x200.jpg","https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_200x200.jpg"],"image_100x100":["https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_100x100.jpg"],"image_500x500":["https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_500x500.jpg"],"image_50x50":["https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_50x50.jpg","https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_50x50.jpg"],"image_700x394":["https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_700x394.jpg","https:\\images.hungama.com\\c\\1\\d45\\e69\\16407406\\16407406_700x394.jpg"]},"duration":465}]}},
            "status_code":200
        }
        """
var Json1 = """
    {
        "last_modified":1643262597,
        "response":{
                "musicalbum":
                    {"content_id":16056292,
                    "title":"Ram - The Essential Prayers",
                    "release_year":2014,
                    "language":"Hindi",
                    "description":" ",
                    "label":"Strumm Entertainment",
                    "vendor":"Strum Entertainment",
                    "attribute_tempo":"M",
                    "music_tracks_count":10,
                    "has_video":1,
                    "video_tracks_count":5,
                    "plays_count":7794711,
                    "duration":0,
                    "count_favorite":9102,
                    "user_fav":0}
        },
        "status_code":200
    }
    """
struct overall: Codable{
    let last_modified: Int?
    var response: response?
    let status_code: Int?
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
let products = try! JSONDecoder().decode(overall.self, from: Json1.data(using: .utf8)!)
print(products)
