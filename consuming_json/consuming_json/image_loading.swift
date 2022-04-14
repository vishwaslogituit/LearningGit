//
//  image_loading.swift
//  consuming_json
//
//  Created by Vishwas Anandani on 09/03/22.
//

import SwiftUI
import UIKit

class var_track_details{
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
    
}
