

import UIKit


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
        self = try newJSONDecoder().decode(SongsDetails.self, from: data)
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
        return try newJSONEncoder().encode(self)
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
        self = try newJSONDecoder().decode(Response1.self, from: data)
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
        return try newJSONEncoder().encode(self)
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
        self = try newJSONDecoder().decode(Artist.self, from: data)
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
        return try newJSONEncoder().encode(self)
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
        self = try newJSONDecoder().decode(Images1.self, from: data)
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
        return try newJSONEncoder().encode(self)
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

/// Basic Auth
///
/// GET https://postman-echo.com/basic-auth
///
/// This endpoint simulates a **basic-auth** protected endpoint.
/// The endpoint accepts a default username and password and returns a status code of `200
/// ok` only if the same is provided.
/// Otherwise it will return a status code `401 unauthorized`.
///
/// > Username: `postman`
/// >
/// > Password: `password`
///
/// To use this endpoint, send a request with the header `Authorization: Basic
/// cG9zdG1hbjpwYXNzd29yZA==`.
/// The cryptic latter half of the header value is a base64 encoded concatenation of the
/// default username and password.
/// Using Postman, to send this request, you can simply fill in the username and password in
/// the "Authorization" tab and Postman will do the rest for you.
///
/// To know more about basic authentication, refer to the [Basic Access
/// Authentication](https://en.wikipedia.org/wiki/Basic_access_authentication) wikipedia
/// article.
/// The article on [authentication
///
/// helpers](https://www.getpostman.com/docs/helpers#basic-auth?source=echo-collection-app-onboarding)
/// elaborates how to use the same within the Postman app.
// MARK: - BasicAuth
struct BasicAuth: Codable {
    let authenticated: Bool?
}

// MARK: BasicAuth convenience initializers and mutators

extension BasicAuth {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(BasicAuth.self, from: data)
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
        authenticated: Bool?? = nil
    ) -> BasicAuth {
        return BasicAuth(
            authenticated: authenticated ?? self.authenticated
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// OAuth1.0 Verify Signature
///
/// GET https://postman-echo.com/oauth1
///
/// OAuth1.0a is a specification that defines a protocol that can be used by one
/// service to access "protected" resources (endpoints) on another service. A
/// major part of OAuth1.0 is HTTP Request Signing. This endpoint allows you to
/// check whether the request calculation works properly in the client.
///
/// The endpoint supports the HTTP ``Authorization`` header. In case the signature
/// verification fails, the endpoint provides the four debug values,
///
/// * ``base_uri``
/// * ``normalized_param_string``
/// * ``base_string``
/// * ``signing_key``
///
/// For more details about these parameters, check the [OAuth1.0a
/// Specification](http://oauth.net/core/1.0a/)
///
/// In order to use this endpoint, you can set the following values:
///
/// > Consumer Key: ``RKCGzna7bv9YD57c``
/// >
/// > Consumer Secret: ``D+EdQ-gs$-%@2Nu7``
///
/// If you are using Postman, also check the "Add params to header" and
/// "Auto add parameters" boxes.
// MARK: - OAuth10VerifySignature
struct OAuth10VerifySignature: Codable {
    let status, message: String?
    let baseURI: String?
    let normalizedParamString, baseString, signingKey: String?

    enum CodingKeys: String, CodingKey {
        case status, message
        case baseURI = "base_uri"
        case normalizedParamString = "normalized_param_string"
        case baseString = "base_string"
        case signingKey = "signing_key"
    }
}

// MARK: OAuth10VerifySignature convenience initializers and mutators

extension OAuth10VerifySignature {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(OAuth10VerifySignature.self, from: data)
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
        status: String?? = nil,
        message: String?? = nil,
        baseURI: String?? = nil,
        normalizedParamString: String?? = nil,
        baseString: String?? = nil,
        signingKey: String?? = nil
    ) -> OAuth10VerifySignature {
        return OAuth10VerifySignature(
            status: status ?? self.status,
            message: message ?? self.message,
            baseURI: baseURI ?? self.baseURI,
            normalizedParamString: normalizedParamString ?? self.normalizedParamString,
            baseString: baseString ?? self.baseString,
            signingKey: signingKey ?? self.signingKey
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Hawk Auth
///
/// GET https://postman-echo.com/auth/hawk
///
/// This endpoint is a Hawk Authentication protected endpoint. [Hawk
/// authentication](https://github.com/hueniverse/hawk) is a widely used protocol for
/// protecting API endpoints. One of Hawk's main goals is to enable HTTP authentication for
/// services that do not use TLS (although it can be used in conjunction with TLS as well).
///
/// In order to use this endpoint, select the "Hawk Auth" helper inside Postman, and set the
/// following values:
///
/// Hawk Auth ID: `dh37fgj492je`
///
/// Hawk Auth Key: `werxhqb98rpaxn39848xrunpaw3489ruxnpa98w4rxn`
///
/// Algorithm: `sha256`
///
/// The rest of the values are optional, and can be left blank. Hitting send should give you
/// a response with a status code of 200 OK.
// MARK: - HawkAuth
struct HawkAuth: Codable {
    let status, message: String?
}

// MARK: HawkAuth convenience initializers and mutators

extension HawkAuth {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(HawkAuth.self, from: data)
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
        status: String?? = nil,
        message: String?? = nil
    ) -> HawkAuth {
        return HawkAuth(
            status: status ?? self.status,
            message: message ?? self.message
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Set Cookies
///
/// GET https://postman-echo.com/cookies/set?foo1=bar1&foo2=bar2
///
/// The cookie setter endpoint accepts a list of cookies and their values as part of URL
/// parameters of a `GET` request. These cookies are saved and can be subsequently retrieved
/// or deleted. The response of this request returns a JSON with all cookies listed.
///
/// To set your own set of cookies, simply replace the URL parameters "foo1=bar1&foo2=bar2"
/// with your own set of key-value pairs.
// MARK: - SetCookies
struct SetCookies: Codable {
    let cookies: SetCookiesCookies?
}

// MARK: SetCookies convenience initializers and mutators

extension SetCookies {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SetCookies.self, from: data)
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
        cookies: SetCookiesCookies?? = nil
    ) -> SetCookies {
        return SetCookies(
            cookies: cookies ?? self.cookies
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - SetCookiesCookies
struct SetCookiesCookies: Codable {
    let foo1, foo2: String?
}

// MARK: SetCookiesCookies convenience initializers and mutators

extension SetCookiesCookies {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(SetCookiesCookies.self, from: data)
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
        foo1: String?? = nil,
        foo2: String?? = nil
    ) -> SetCookiesCookies {
        return SetCookiesCookies(
            foo1: foo1 ?? self.foo1,
            foo2: foo2 ?? self.foo2
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Get Cookies
///
/// GET https://postman-echo.com/cookies
///
/// Use this endpoint to get a list of all cookies that are stored with respect to this
/// domain. Whatever key-value pairs that has been previously set by calling the "Set
/// Cookies" endpoint, will be returned as response JSON.
// MARK: - GetCookies
struct GetCookies: Codable {
    let cookies: GetCookiesCookies?
}

// MARK: GetCookies convenience initializers and mutators

extension GetCookies {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetCookies.self, from: data)
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
        cookies: GetCookiesCookies?? = nil
    ) -> GetCookies {
        return GetCookies(
            cookies: cookies ?? self.cookies
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - GetCookiesCookies
struct GetCookiesCookies: Codable {
    let foo2: String?
}

// MARK: GetCookiesCookies convenience initializers and mutators

extension GetCookiesCookies {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(GetCookiesCookies.self, from: data)
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
        foo2: String?? = nil
    ) -> GetCookiesCookies {
        return GetCookiesCookies(
            foo2: foo2 ?? self.foo2
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Delete Cookies
///
/// GET https://postman-echo.com/cookies/delete?foo1&foo2
///
/// One or more cookies that has been set for this domain can be deleted by providing the
/// cookie names as part of the URL parameter. The response of this request is a JSON
/// containing the list of currently set cookies.
// MARK: - DeleteCookies
struct DeleteCookies: Codable {
    let cookies: GetCookiesCookies?
}

// MARK: DeleteCookies convenience initializers and mutators

extension DeleteCookies {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DeleteCookies.self, from: data)
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
        cookies: GetCookiesCookies?? = nil
    ) -> DeleteCookies {
        return DeleteCookies(
            cookies: cookies ?? self.cookies
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Request Headers
///
/// GET https://postman-echo.com/headers
///
/// A `GET` request to this endpoint returns the list of all request headers as part of the
/// response JSON.
/// In Postman, sending your own set of headers through the [Headers
///
/// tab](https://www.getpostman.com/docs/requests#headers?source=echo-collection-app-onboarding)
/// will reveal the headers as part of the response.
// MARK: - RequestHeaders
struct RequestHeaders: Codable {
    let headers: Headers?
}

// MARK: RequestHeaders convenience initializers and mutators

extension RequestHeaders {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RequestHeaders.self, from: data)
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
        headers: Headers?? = nil
    ) -> RequestHeaders {
        return RequestHeaders(
            headers: headers ?? self.headers
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Headers
struct Headers: Codable {
    let host, accept, acceptEncoding, acceptLanguage: String?
    let cacheControl, mySampleHeader, postmanToken, userAgent: String?
    let xForwardedPort, xForwardedProto: String?

    enum CodingKeys: String, CodingKey {
        case host, accept
        case acceptEncoding = "accept-encoding"
        case acceptLanguage = "accept-language"
        case cacheControl = "cache-control"
        case mySampleHeader = "my-sample-header"
        case postmanToken = "postman-token"
        case userAgent = "user-agent"
        case xForwardedPort = "x-forwarded-port"
        case xForwardedProto = "x-forwarded-proto"
    }
}

// MARK: Headers convenience initializers and mutators

extension Headers {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Headers.self, from: data)
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
        host: String?? = nil,
        accept: String?? = nil,
        acceptEncoding: String?? = nil,
        acceptLanguage: String?? = nil,
        cacheControl: String?? = nil,
        mySampleHeader: String?? = nil,
        postmanToken: String?? = nil,
        userAgent: String?? = nil,
        xForwardedPort: String?? = nil,
        xForwardedProto: String?? = nil
    ) -> Headers {
        return Headers(
            host: host ?? self.host,
            accept: accept ?? self.accept,
            acceptEncoding: acceptEncoding ?? self.acceptEncoding,
            acceptLanguage: acceptLanguage ?? self.acceptLanguage,
            cacheControl: cacheControl ?? self.cacheControl,
            mySampleHeader: mySampleHeader ?? self.mySampleHeader,
            postmanToken: postmanToken ?? self.postmanToken,
            userAgent: userAgent ?? self.userAgent,
            xForwardedPort: xForwardedPort ?? self.xForwardedPort,
            xForwardedProto: xForwardedProto ?? self.xForwardedProto
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Response Headers
///
/// GET
/// https://postman-echo.com/response-headers?Content-Type=text/html&test=response_headers
///
/// This endpoint causes the server to send custom set of response headers. Providing header
/// values as part of the URL parameters of a `GET` request to this endpoint returns the same
/// as part of response header.
///
/// To send your own set of headers, simply add or replace the the URL parameters with your
/// own set.
// MARK: - ResponseHeaders
struct ResponseHeaders: Codable {
    let contentType, test: String?

    enum CodingKeys: String, CodingKey {
        case contentType = "Content-Type"
        case test
    }
}

// MARK: ResponseHeaders convenience initializers and mutators

extension ResponseHeaders {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResponseHeaders.self, from: data)
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
        contentType: String?? = nil,
        test: String?? = nil
    ) -> ResponseHeaders {
        return ResponseHeaders(
            contentType: contentType ?? self.contentType,
            test: test ?? self.test
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Response Status Code
///
/// GET https://postman-echo.com/status/200
///
/// This endpoint allows one to instruct the server which status code to respond with.
///
/// Every response is accompanied by a status code. The status code provides a summary of the
/// nature of response sent by the server. For example, a status code of `200` means
/// everything is okay with the response and a code of `404` implies that the requested URL
/// does not exist on server.
/// A list of all valid HTTP status code can be found at the [List of Status
/// Codes](https://en.wikipedia.org/wiki/List_of_HTTP_status_codes) wikipedia article. When
/// using Postman, the response status code is described for easy reference.
///
/// Note that if an invalid status code is requested to be sent, the server returns a status
/// code of `400 Bad Request`.
// MARK: - ResponseStatusCode
struct ResponseStatusCode: Codable {
    let status: Int?
}

// MARK: ResponseStatusCode convenience initializers and mutators

extension ResponseStatusCode {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ResponseStatusCode.self, from: data)
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
        status: Int?? = nil
    ) -> ResponseStatusCode {
        return ResponseStatusCode(
            status: status ?? self.status
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Delay Response
///
/// GET https://postman-echo.com/delay/3
///
/// Using this endpoint one can configure how long it takes for the server to come back with
/// a response. Appending a number to the URL defines the time (in seconds) the server will
/// wait before responding.
///
/// Note that a maximum delay of 10 seconds is accepted by the server.
// MARK: - DelayResponse
struct DelayResponse: Codable {
    let delay: String?
}

// MARK: DelayResponse convenience initializers and mutators

extension DelayResponse {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(DelayResponse.self, from: data)
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
        delay: String?? = nil
    ) -> DelayResponse {
        return DelayResponse(
            delay: delay ?? self.delay
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Timestamp validity
///
/// GET https://postman-echo.com/time/valid?timestamp=2016-10-10
///
/// A simple `GET` request to `/time/valid` to determine the validity of the timestamp,
/// (current by default).
/// This endpoint accepts `timestamp`, `locale`, `format`, and `strict` query parameters to
/// construct the date time instance to check against.
///
/// Responses are provided in JSON format, with a valid key to indicate the result. The
/// response code is `200`.
///
/// ```
/// {
/// valid: true/false
/// }
/// ```
// MARK: - TimestampValidity
struct TimestampValidity: Codable {
    let valid: Bool?
}

// MARK: TimestampValidity convenience initializers and mutators

extension TimestampValidity {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TimestampValidity.self, from: data)
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
        valid: Bool?? = nil
    ) -> TimestampValidity {
        return TimestampValidity(
            valid: valid ?? self.valid
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Transform collection from format v1 to v2
///
/// POST https://postman-echo.com/transform/collection?from=1&to=2
// MARK: - TransformCollectionFromFormatV1ToV2
struct TransformCollectionFromFormatV1ToV2: Codable {
    let variables: [JSONAny]?
    let info: Info?
    let item: [Item]?
}

// MARK: TransformCollectionFromFormatV1ToV2 convenience initializers and mutators

extension TransformCollectionFromFormatV1ToV2 {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TransformCollectionFromFormatV1ToV2.self, from: data)
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
        variables: [JSONAny]?? = nil,
        info: Info?? = nil,
        item: [Item]?? = nil
    ) -> TransformCollectionFromFormatV1ToV2 {
        return TransformCollectionFromFormatV1ToV2(
            variables: variables ?? self.variables,
            info: info ?? self.info,
            item: item ?? self.item
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Info
struct Info: Codable {
    let name, postmanID, infoDescription: String?
    let schema: String?

    enum CodingKeys: String, CodingKey {
        case name
        case postmanID = "_postman_id"
        case infoDescription = "description"
        case schema
    }
}

// MARK: Info convenience initializers and mutators

extension Info {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Info.self, from: data)
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
        name: String?? = nil,
        postmanID: String?? = nil,
        infoDescription: String?? = nil,
        schema: String?? = nil
    ) -> Info {
        return Info(
            name: name ?? self.name,
            postmanID: postmanID ?? self.postmanID,
            infoDescription: infoDescription ?? self.infoDescription,
            schema: schema ?? self.schema
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Item
struct Item: Codable {
    let name: String?
    let event: [Event]?
    let request: ItemRequest?
    let response: [JSONAny]?
}

// MARK: Item convenience initializers and mutators

extension Item {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Item.self, from: data)
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
        name: String?? = nil,
        event: [Event]?? = nil,
        request: ItemRequest?? = nil,
        response: [JSONAny]?? = nil
    ) -> Item {
        return Item(
            name: name ?? self.name,
            event: event ?? self.event,
            request: request ?? self.request,
            response: response ?? self.response
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Event
struct Event: Codable {
    let listen: String?
    let script: Script?
}

// MARK: Event convenience initializers and mutators

extension Event {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Event.self, from: data)
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
        listen: String?? = nil,
        script: Script?? = nil
    ) -> Event {
        return Event(
            listen: listen ?? self.listen,
            script: script ?? self.script
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Script
struct Script: Codable {
    let type: String?
    let exec: [String]?
}

// MARK: Script convenience initializers and mutators

extension Script {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Script.self, from: data)
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
        type: String?? = nil,
        exec: [String]?? = nil
    ) -> Script {
        return Script(
            type: type ?? self.type,
            exec: exec ?? self.exec
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - ItemRequest
struct ItemRequest: Codable {
    let url: String?
    let method: String?
    let header: [Header]?
    let body: Body?
}

// MARK: ItemRequest convenience initializers and mutators

extension ItemRequest {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(ItemRequest.self, from: data)
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
        url: String?? = nil,
        method: String?? = nil,
        header: [Header]?? = nil,
        body: Body?? = nil
    ) -> ItemRequest {
        return ItemRequest(
            url: url ?? self.url,
            method: method ?? self.method,
            header: header ?? self.header,
            body: body ?? self.body
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Body
struct Body: Codable {
    let mode, raw: String?
}

// MARK: Body convenience initializers and mutators

extension Body {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Body.self, from: data)
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
        mode: String?? = nil,
        raw: String?? = nil
    ) -> Body {
        return Body(
            mode: mode ?? self.mode,
            raw: raw ?? self.raw
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - Header
struct Header: Codable {
    let key, value, headerDescription: String?

    enum CodingKeys: String, CodingKey {
        case key, value
        case headerDescription = "description"
    }
}

// MARK: Header convenience initializers and mutators

extension Header {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Header.self, from: data)
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
        key: String?? = nil,
        value: String?? = nil,
        headerDescription: String?? = nil
    ) -> Header {
        return Header(
            key: key ?? self.key,
            value: value ?? self.value,
            headerDescription: headerDescription ?? self.headerDescription
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

/// Transform collection from format v2 to v1
///
/// POST https://postman-echo.com/transform/collection?from=2&to=1
// MARK: - TransformCollectionFromFormatV2ToV1
struct TransformCollectionFromFormatV2ToV1: Codable {
    let id, name, transformCollectionFromFormatV2ToV1Description: String?
    let order: [String]?
    let folders: [JSONAny]?
    let requests: [RequestElement]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case transformCollectionFromFormatV2ToV1Description = "description"
        case order, folders, requests
    }
}

// MARK: TransformCollectionFromFormatV2ToV1 convenience initializers and mutators

extension TransformCollectionFromFormatV2ToV1 {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(TransformCollectionFromFormatV2ToV1.self, from: data)
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
        id: String?? = nil,
        name: String?? = nil,
        transformCollectionFromFormatV2ToV1Description: String?? = nil,
        order: [String]?? = nil,
        folders: [JSONAny]?? = nil,
        requests: [RequestElement]?? = nil
    ) -> TransformCollectionFromFormatV2ToV1 {
        return TransformCollectionFromFormatV2ToV1(
            id: id ?? self.id,
            name: name ?? self.name,
            transformCollectionFromFormatV2ToV1Description: transformCollectionFromFormatV2ToV1Description ?? self.transformCollectionFromFormatV2ToV1Description,
            order: order ?? self.order,
            folders: folders ?? self.folders,
            requests: requests ?? self.requests
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
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

// MARK: - RequestElement
struct RequestElement: Codable {
    let id, name, collectionID, method: String?
    let headers: String?
    let data: [JSONAny]?
    let rawModeData, tests, preRequestScript: String?
    let url: String?
    let dataMode: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case collectionID = "collectionId"
        case method, headers, data, rawModeData, tests, preRequestScript, url, dataMode
    }
}

// MARK: RequestElement convenience initializers and mutators

extension RequestElement {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(RequestElement.self, from: data)
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
        id: String?? = nil,
        name: String?? = nil,
        collectionID: String?? = nil,
        method: String?? = nil,
        headers: String?? = nil,
        data: [JSONAny]?? = nil,
        rawModeData: String?? = nil,
        tests: String?? = nil,
        preRequestScript: String?? = nil,
        url: String?? = nil,
        dataMode: String?? = nil
    ) -> RequestElement {
        return RequestElement(
            id: id ?? self.id,
            name: name ?? self.name,
            collectionID: collectionID ?? self.collectionID,
            method: method ?? self.method,
            headers: headers ?? self.headers,
            data: data ?? self.data,
            rawModeData: rawModeData ?? self.rawModeData,
            tests: tests ?? self.tests,
            preRequestScript: preRequestScript ?? self.preRequestScript,
            url: url ?? self.url,
            dataMode: dataMode ?? self.dataMode
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Helper functions for creating encoders and decoders

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

// MARK: - URLSession response handlers

extension URLSession {
    fileprivate func codableTask<T: Codable>(with url: URL, completionHandler: @escaping (T?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                completionHandler(nil, response, error)
                return
            }
            completionHandler(try? newJSONDecoder().decode(T.self, from: data), response, nil)
        }
    }

    func songsDetailsTask(with url: URL, completionHandler: @escaping (SongsDetails?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func basicAuthTask(with url: URL, completionHandler: @escaping (BasicAuth?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func oAuth10VerifySignatureTask(with url: URL, completionHandler: @escaping (OAuth10VerifySignature?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func hawkAuthTask(with url: URL, completionHandler: @escaping (HawkAuth?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func setCookiesTask(with url: URL, completionHandler: @escaping (SetCookies?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func getCookiesTask(with url: URL, completionHandler: @escaping (GetCookies?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func deleteCookiesTask(with url: URL, completionHandler: @escaping (DeleteCookies?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func requestHeadersTask(with url: URL, completionHandler: @escaping (RequestHeaders?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func responseHeadersTask(with url: URL, completionHandler: @escaping (ResponseHeaders?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func responseStatusCodeTask(with url: URL, completionHandler: @escaping (ResponseStatusCode?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func delayResponseTask(with url: URL, completionHandler: @escaping (DelayResponse?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func timestampValidityTask(with url: URL, completionHandler: @escaping (TimestampValidity?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func transformCollectionFromFormatV1ToV2Task(with url: URL, completionHandler: @escaping (TransformCollectionFromFormatV1ToV2?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }

    func transformCollectionFromFormatV2ToV1Task(with url: URL, completionHandler: @escaping (TransformCollectionFromFormatV2ToV1?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        return self.codableTask(with: url, completionHandler: completionHandler)
    }
}

// MARK: - Encode/decode helpers

@objcMembers class JSONNull: NSObject, Codable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    override public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

@objcMembers class JSONAny: NSObject, Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
struct VideoStream : Codable {
    var encrypt : Bool?
    var full_length : String?
    var source : String?
    var data_from : String?
    var isVideoVertical : Bool?
    var url : String?
    var rendered_type : String?
    var status : Int?
}
