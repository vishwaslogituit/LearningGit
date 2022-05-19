import UIKit

/*
struct overall: Codable{

let last_modified: Int?
var response: response?
let status_code: Int?

}

struct response: Codable{
    var playlist: playlist?
    var musiclisting: musiclisting?
}

struct playlist: Codable{
    let content_id: Int?
    var images: images?
    let title: String?
    let release_year: Int?
    let music_tracks_count: Int?
    let comment_count: Int?
    let fav_count: Int?
    let plays_count: Int?
    var playlist_artwork: URL?
    var artist: [artist]?
    let user_fav: Int?
}

struct images: Codable {
    let image_500x500: [URL]?
    let image_100x100: [URL]?
    let image_50x50: [URL]?
    let image_200x200: [URL]?
    let image_800x800: [URL]?
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
    var content_id: Int?
    var title: String
    var album_id: Int?
    var album_name:String?
    var artist: String?
    //let singers:String?
    var images: images?
    //let video_id: Int?

enum CodingKeys: String, CodingKey {
        case title, album_name//, artist,images//, singers, video_id
    }

init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        //content_id = try values.decode(Int.self, forKey: .content_id)
        title = try values.decode(String.self, forKey: .title)
        //album_id = try values.decode(Int.self, forKey: .album_id)
        album_name = try values.decode(String.self, forKey: .album_name)
        //artist = try values.decode(String.self, forKey: .artist)
        //singers = try values.decode(String.self, forKey: .singers)
        //images = try values.decode(images.self, forKey: .images)
        //video_id = try values.decode(Int.self, forKey: .video_id)
        
    }
}


struct videolisting: Codable{
    var track: [track]?

 
 func string_check(name_title: String) -> String
 {
     return name_title.replacingOccurrences(of: "\\", with: "",options: NSString.CompareOptions.literal, range: nil)
 }
}*/

// MARK: - SongsDetails
struct SongsDetails: Codable {
    let lastModified: Int?
    let response: Response1?
    let statusCode: Int?

    enum CodingKeys: String, CodingKey {
        case lastModified = "last_modified"
        case response
        case statusCode = "status_code"
    }
}

// MARK: SongsDetails convenience initializers and mutators

extension SongsDetails {
    init(data: Data) throws {
        self = try JSONDecoder().decode(SongsDetails.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        lastModified: Int?? = nil,
        response: Response1?? = nil,
        statusCode: Int?? = nil
    ) -> SongsDetails {
        return SongsDetails(
            lastModified: lastModified ?? self.lastModified,
            response: response ?? self.response,
            statusCode: statusCode ?? self.statusCode
        )
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Response
struct Response1: Codable {
    let contentID, albumID: Int?
    let albumName, title: String?
    let images: Images1?
    let attributeTempo, attributeType: String?
    let relyear: Int?
    let genre, language, label, mood: String?
    let musicDirector, singers, lyricist, cast: String?
    let hasLyrics, hasTrivia, hasVideo, hasDownload: Int?
    let commentsCount, favCount, playsCount, intlContent: Int?
    let lyrics: String?
    let lrc, songTags: String?
    let artist: [Artist]?
    let userFav: Int?
    var taggedVideoId : Int?
    var videoId : Int?
    enum CodingKeys: String, CodingKey {
        case contentID = "content_id"
        case albumID = "album_id"
        case albumName = "album_name"
        case title, images
        case attributeTempo = "attribute_tempo"
        case attributeType = "attribute_type"
        case relyear, genre, language, label, mood
        case musicDirector = "music_director"
        case singers, lyricist, cast
        case hasLyrics = "has_lyrics"
        case hasTrivia = "has_trivia"
        case hasVideo = "has_video"
        case hasDownload = "has_download"
        case commentsCount = "comments_count"
        case favCount = "fav_count"
        case playsCount = "plays_count"
        case intlContent = "intl_content"
        case lyrics, lrc
        case songTags = "song_tags"
        case artist
        case userFav = "user_fav"
        case taggedVideoId = "tagged_video_id"
        case videoId = "video_id"
    }
    func getHasVideo() -> String {
        return "\(self.hasVideo ?? 0)"
    }
    func getTaggedVideoId()-> String {
        return "\(self.taggedVideoId ?? 0)"
    }
    func getVideosIds() -> String {
        return "\(self.videoId ?? 0)"
    }
}

// MARK: Response convenience initializers and mutators

extension Response1 {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Response1.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        contentID: Int?? = nil,
        albumID: Int?? = nil,
        albumName: String?? = nil,
        title: String?? = nil,
        images: Images1?? = nil,
        attributeTempo: String?? = nil,
        attributeType: String?? = nil,
        relyear: Int?? = nil,
        genre: String?? = nil,
        language: String?? = nil,
        label: String?? = nil,
        mood: String?? = nil,
        musicDirector: String?? = nil,
        singers: String?? = nil,
        lyricist: String?? = nil,
        cast: String?? = nil,
        hasLyrics: Int?? = nil,
        hasTrivia: Int?? = nil,
        hasVideo: Int?? = nil,
        hasDownload: Int?? = nil,
        commentsCount: Int?? = nil,
        favCount: Int?? = nil,
        playsCount: Int?? = nil,
        intlContent: Int?? = nil,
        lyrics: String?? = nil,
        lrc: String?? = nil,
        songTags: String?? = nil,
        artist: [Artist]?? = nil,
        userFav: Int?? = nil,
        taggedVideoId : Int?? = nil,
        videoId : Int?? = nil
    ) -> Response1 {
        return Response1(
            contentID: contentID ?? self.contentID,
            albumID: albumID ?? self.albumID,
            albumName: albumName ?? self.albumName,
            title: title ?? self.title,
            images: images ?? self.images,
            attributeTempo: attributeTempo ?? self.attributeTempo,
            attributeType: attributeType ?? self.attributeType,
            relyear: relyear ?? self.relyear,
            genre: genre ?? self.genre,
            language: language ?? self.language,
            label: label ?? self.label,
            mood: mood ?? self.mood,
            musicDirector: musicDirector ?? self.musicDirector,
            singers: singers ?? self.singers,
            lyricist: lyricist ?? self.lyricist,
            cast: cast ?? self.cast,
            hasLyrics: hasLyrics ?? self.hasLyrics,
            hasTrivia: hasTrivia ?? self.hasTrivia,
            hasVideo: hasVideo ?? self.hasVideo,
            hasDownload: hasDownload ?? self.hasDownload,
            commentsCount: commentsCount ?? self.commentsCount,
            favCount: favCount ?? self.favCount,
            playsCount: playsCount ?? self.playsCount,
            intlContent: intlContent ?? self.intlContent,
            lyrics: lyrics ?? self.lyrics,
            lrc: lrc ?? self.lrc,
            songTags: songTags ?? self.songTags,
            artist: artist ?? self.artist,
            userFav: userFav ?? self.userFav,
            taggedVideoId: taggedVideoId ?? self.taggedVideoId,
            videoId: videoId ?? self.videoId
        )
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Postman Echo is service you can use to test your REST clients and make sample API calls.
// It provides endpoints for `GET`, `POST`, `PUT`, various auth mechanisms and other utility
// endpoints.
//
// The documentation for the endpoints as well as example responses can be found at
// [https://postman-echo.com](https://postman-echo.com/?source=echo-collection-app-onboarding)

// MARK: - Artist
struct Artist: Codable {
    let artistID, artistName: String?

    enum CodingKeys: String, CodingKey {
        case artistID = "artist_id"
        case artistName = "artist_name"
    }
}

// MARK: Artist convenience initializers and mutators

extension Artist {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Artist.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        artistID: String?? = nil,
        artistName: String?? = nil
    ) -> Artist {
        return Artist(
            artistID: artistID ?? self.artistID,
            artistName: artistName ?? self.artistName
        )
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// Postman Echo is service you can use to test your REST clients and make sample API calls.
// It provides endpoints for `GET`, `POST`, `PUT`, various auth mechanisms and other utility
// endpoints.
//
// The documentation for the endpoints as well as example responses can be found at
// [https://postman-echo.com](https://postman-echo.com/?source=echo-collection-app-onboarding)

// MARK: - Images
struct Images1: Codable {
    let image50X50, image500X500, image100X100, image200X200: [String]?
    let image800X800: [String]?

    enum CodingKeys: String, CodingKey {
        case image50X50 = "image_50x50"
        case image500X500 = "image_500x500"
        case image100X100 = "image_100x100"
        case image200X200 = "image_200x200"
        case image800X800 = "image_800x800"
    }
}

// MARK: Images convenience initializers and mutators

extension Images1 {
    init(data: Data) throws {
        self = try JSONDecoder().decode(Images1.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        image50X50: [String]?? = nil,
        image500X500: [String]?? = nil,
        image100X100: [String]?? = nil,
        image200X200: [String]?? = nil,
        image800X800: [String]?? = nil
    ) -> Images1 {
        return Images1(
            image50X50: image50X50 ?? self.image50X50,
            image500X500: image500X500 ?? self.image500X500,
            image100X100: image100X100 ?? self.image100X100,
            image200X200: image200X200 ?? self.image200X200,
            image800X800: image800X800 ?? self.image800X800
        )
    }

    func jsonData() throws -> Data {
        return try JSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}


/*
import Foundation
// MARK: - Song
struct Song: Codable {
    let lastModified: Int
    let response: Response
    let statusCode: Int
    enum CodingKeys: String, CodingKey {
        case lastModified = "last_modified"
        case response
        case statusCode = "status_code"
    }
}
// MARK: - Response
struct Response: Codable {
    let playlist: Playlist
    let musiclisting: Musiclisting
}
// MARK: - Musiclisting
struct Musiclisting: Codable {
    let track: [Track]
}
// MARK: - Track
struct Track: Codable {
    let contentID: Int
    let title: String
    let albumID: Int
    let albumName, artist, singers: String
    let images: Images
    let videoID: Int
    enum CodingKeys: String, CodingKey {
        case contentID = "content_id"
        case title
        case albumID = "album_id"
        case albumName = "album_name"
        case artist, singers, images
        case videoID = "video_id"
    }
}
// MARK: - Images
struct Images: Codable {
    let image500X500, image800X800, image50X50, image100X100: [String]
    let image200X200: [String]
    enum CodingKeys: String, CodingKey {
        case image500X500 = "image_500x500"
        case image800X800 = "image_800x800"
        case image50X50 = "image_50x50"
        case image100X100 = "image_100x100"
        case image200X200 = "image_200x200"
    }
}
// MARK: - Playlist
struct Playlist: Codable {
    let contentID: Int
    let images: Images
    let title: String
    let releaseYear, musicTracksCount, commentsCount, favCount: Int
    let playsCount: Int
    let playlistArtwork: String
    let artist: [Artist]
    let userFav: Int
    enum CodingKeys: String, CodingKey {
        case contentID = "content_id"
        case images, title
        case releaseYear = "release_year"
        case musicTracksCount = "music_tracks_count"
        case commentsCount = "comments_count"
        case favCount = "fav_count"
        case playsCount = "plays_count"
        case playlistArtwork = "playlist_artwork"
        case artist
        case userFav = "user_fav"
    }
}
// MARK: - Artist
struct Artist: Codable {
    let artistID, artistName: String
    let image: Image
    enum CodingKeys: String, CodingKey {
        case artistID = "artist_id"
        case artistName = "artist_name"
        case image
    }
}
// MARK: - Image
struct Image: Codable {
    let image50X50: [String]?
    let image100X100: [String]?
    let image200X200: [String]
    enum CodingKeys: String, CodingKey {
        case image50X50 = "image_50x50"
        case image100X100 = "image_100x100"
        case image200X200 = "image_200x200"
    }
}
*/
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

func loadJson(fromURLString urlString: String,
              completion: @escaping (Result<Data, Error>) -> Void) {
    
    if let url = URL(string: urlString) {
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("VI", forHTTPHeaderField: "PRODUCT")
        //request.timeoutInterval = 60.0
        
        /*URLSession.shared.dataTask(with: request){
         (jsondata: Data?, response: URLResponse?, Error: Error?) -> Void in
         print("aaa")
         parse(jsonData: jsondata!)
         }*/
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            print("check")
            do{if error == nil{
                print("check2")
                print(data)
                let json = try JSONDecoder().decode(SongsDetails.self, from: data!)
                print("check3")
                print(json.response)
            }
            }catch
            {
                print("GetSongDetails Error in  get json data")
                // MusicPlayerAnalytics.sharedInstance.musicFailed(songDetails: appDelegate.songsDetails)
            }
            
        }.resume()
    }
    
}

func parse(jsonData: Data) {
    print("hjhj")
    do {
        let decodedData = try JSONDecoder().decode(SongsDetails.self,
                                                   from: jsonData)
        
        //print("last_modified ", decodedData.last_modified)
        print("hey")
        //print("Status_code: ", decodedData.status_code)
        print("===================================")
    } catch {
        print("decode error")
    }
}

let urlString = "http://capi.hungama.com/webservice/thirdparty/content/music/playlist_details?store=1&country=IN&content=39596&user=135450561&product=VI"


loadJson(fromURLString: urlString) { (result) in
    switch result {
    case .success(let data):
        print("hey")
        parse(jsonData: data)
    case .failure(let error):
        print(error)
    }
}
//var check = string_check(name_title: "Hoye Ishq Na (From \"Tadap\")")
//print(check)

