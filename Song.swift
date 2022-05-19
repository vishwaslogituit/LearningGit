//
//  Song.swift
//  
//
//  Created by Subramanyam on 09/03/22.
//

 

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
