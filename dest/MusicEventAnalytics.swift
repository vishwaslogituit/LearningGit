

public class MusicEventAnalytics {
    var source: String? = nil
    var sourceDetails: String? = nil
    var contentName: String? = nil
    var contentId: Int64 = 0
    var playlistName: String? = nil
    var playlistId: Int64 = 0
    var originalAlbumName: String? = nil
    var genre: String? = nil
    var mood: String? = nil
    var language: String? = nil
    var yearOfRelease: String? = nil
    var tempo: String? = nil
    var singer: String? = nil
    var actor: String? = nil
    var composer: String? = nil
    var lyricist: String? = nil
    var loginStatus: String? = nil
    var audioQuality: String? = nil
    var consumptionType: String? = nil
    var contentType: String? = nil
    var duration: String? = nil
    var albumId: String? = nil
    var tab: String? = nil
    var carousel: String? = nil
    var contentPosition: String? = nil
    var playBackType: String? = nil
    var playerType: String? = nil
    var lastSource: String? = nil
    var shuffle: String? = nil
    var repeat: String? = nil
    var playBackSource: String? = nil
    var moduleTrackId: String? = nil
    var moduleTrackingName: String? = nil
    var category: String? = nil
    var videoQuality: String? = nil
    var connectionType: String? = nil
    var label: String? = nil
    var labelId: String? = nil
    var contentTypeId: String? = nil
    var subGenre: String? = nil
    var lyricsType: String? = nil
    var rating: String? = nil
    var criticRating: String? = nil
    var keywords: String? = nil
    private var pType: String? = nil
    private var pId: String? = nil
    private var pName: String? = nil
    var releaseDate: String? = nil
    var userRating: String? = nil
    var durationConsumed: String? = nil
    var duration_Fg: String? = nil
    var duration_Bg: String? = nil
    var percentageCompletion = 0
    var albumName: String? = nil
    var downloadQuality: String? = nil
    var carousel_Position: String? = nil
    var is_Original: String? = nil
    var cast_Enabled: String? = nil
    var age_Rating: String? = nil
    var critic_Rating: String? = nil
    var error_Type: String? = nil
    private var sCode: String? = nil
    private var pCode: String? = nil
    var sourcePage: String? = nil
    var noOfContent: String? = nil
    var playListDuration: String? = nil
    var artWorkType: String? = nil
    var bucketName: String? = nil
    var bucketId: String? = nil
    var positionWithBucket: String? = nil
    var coreTab: String? = nil
    var subTab: String? = nil
    var action: String? = nil
    var size: String? = nil
    func getsCode() -> String? {
        return sCode
    }

    func setsCode(sCode: String?) {
        self.sCode = sCode
    }

    func getpCode() -> String? {
        return pCode
    }

    func setpCode(pCode: String?) {
        self.pCode = pCode
    }

    func getpType() -> String? {
        return pType
    }

    func setpType(pType: String?) {
        self.pType = pType
    }

    func getpId() -> String? {
        return pId
    }

    func setpId(pId: String?) {
        self.pId = pId
    }

    func getpName() -> String? {
        return pName
    }

    func setpName(pName: String?) {
        self.pName = pName
    }

    override func toString() -> String {
        return "MusicEventAnalytics{" +
                "source='" + source + '\'' +
                ", sourceDetails='" + sourceDetails + '\'' +
                ", contentName='" + contentName + '\'' +
                ", contentId=" + contentId +
                ", playlistName='" + playlistName + '\'' +
                ", playlistId=" + playlistId +
                ", originalAlbumName='" + originalAlbumName + '\'' +
                ", genre='" + genre + '\'' +
                ", mood='" + mood + '\'' +
                ", language='" + language + '\'' +
                ", yearOfRelease='" + yearOfRelease + '\'' +
                ", tempo='" + tempo + '\'' +
                ", singer='" + singer + '\'' +
                ", actor='" + actor + '\'' +
                ", composer='" + composer + '\'' +
                ", lyricist='" + lyricist + '\'' +
                ", loginStatus='" + loginStatus + '\'' +
                ", audioQuality='" + audioQuality + '\'' +
                ", consumptionType='" + consumptionType + '\'' +
                ", contentType='" + contentType + '\'' +
                ", duration='" + duration + '\'' +
                ", albumId='" + albumId + '\'' +
                ", tab='" + tab + '\'' +
                ", carousel='" + carousel + '\'' +
                ", contentPosition='" + contentPosition + '\'' +
                ", playBackType='" + playBackType + '\'' +
                ", playerType='" + playerType + '\'' +
                ", lastSource='" + lastSource + '\'' +
                ", shuffle='" + shuffle + '\'' +
                ", repeat='" + repeat + '\'' +
                ", playBackSource='" + playBackSource + '\'' +
                ", moduleTrackId='" + moduleTrackId + '\'' +
                ", moduleTrackingName='" + moduleTrackingName + '\'' +
                ", category='" + category + '\'' +
                ", videoQuality='" + videoQuality + '\'' +
                ", connectionType='" + connectionType + '\'' +
                ", label='" + label + '\'' +
                ", labelId='" + labelId + '\'' +
                ", contentTypeId='" + contentTypeId + '\'' +
                ", subGenre='" + subGenre + '\'' +
                ", lyricsType='" + lyricsType + '\'' +
                ", rating='" + rating + '\'' +
                ", criticRating='" + criticRating + '\'' +
                ", keywords='" + keywords + '\'' +
                ", pType='" + pType + '\'' +
                ", pId='" + pId + '\'' +
                ", pName='" + pName + '\'' +
                ", releaseDate='" + releaseDate + '\'' +
                ", userRating='" + userRating + '\'' +
                ", durationConsumed='" + durationConsumed + '\'' +
                ", duration_Fg='" + duration_Fg + '\'' +
                ", duration_Bg='" + duration_Bg + '\'' +
                ", percentageCompletion='" + percentageCompletion + '\'' +
                ", albumName='" + albumName + '\'' +
                ", downloadQuality='" + downloadQuality + '\'' +
                ", carousel_Position='" + carousel_Position + '\'' +
                ", is_Original='" + is_Original + '\'' +
                ", cast_Enabled='" + cast_Enabled + '\'' +
                ", age_Rating='" + age_Rating + '\'' +
                ", critic_Rating='" + critic_Rating + '\'' +
                ", error_Type='" + error_Type + '\'' +
                ", sCode='" + sCode + '\'' +
                ", pCode='" + pCode + '\'' +
                ", sourcePage='" + sourcePage + '\'' +
                ", noOfContent='" + noOfContent + '\'' +
                ", playListDuration='" + playListDuration + '\'' +
                ", artWorkType='" + artWorkType + '\'' +
                ", bucketName='" + bucketName + '\'' +
                ", bucketId='" + bucketId + '\'' +
                ", positionWithBucket='" + positionWithBucket + '\'' +
                ", coreTab='" + coreTab + '\'' +
                ", subTab='" + subTab + '\'' +
                ", action='" + action + '\'' +
                '}'
  init() {
  }
    }

    object Utils {
        func validateString(givenString: String?) -> String {
            return if givenString != nil && !givenString.isEmpty() {
                givenString
            } else {
                ""
            }
        }

        func validateLong(givenLong: Int64?) -> Int64 {
            return givenLong ?? Int64.valueOf(0)
        }
    }

        fun musicStartedEvent(contentMetadata: ContentMetadata?, songDetail: SongDetail?, isDownloaded: Bool,
                              audioQualityPojo: AudioQualityPojo?): MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            if let songDetail = songDetail {
                events.originalAlbumName = songDetail.getAlbumName()
                events.albumId = String.valueOf(songDetail.getAlbumId())
                events.contentId = songDetail.getContentId()
                events.language = songDetail.getLanguage()
                events.genre = songDetail.getGenre()
                events.label = songDetail.getLabel()
                events.lyricist = songDetail.getLyricist()
                events.yearOfRelease = String.valueOf(songDetail.getRelyear())
                events.tempo = songDetail.getAttributeTempo()
                events.tab = songDetail.getSongTags()
                events.singer = songDetail.getSingers()
                events.mood = songDetail.getMood()
            } else {
                events.originalAlbumName = ""
                events.albumId = ""
                events.language = ""
                events.genre = ""
                events.label = ""
                events.lyricist = ""
                events.yearOfRelease = ""
                events.tempo = ""
                events.tab = ""
                events.singer = ""
                events.mood = ""
            }
            events.contentName = contentMetadata != nil ? Utils.validateString(contentMetadata.getTitle()) : ""
            events.contentType = contentMetadata != nil ? Utils.validateString(contentMetadata.getContainerType()) : "song"
            events.source = ""
            events.sourceDetails = ""
            events.contentId = contentMetadata != nil ? Utils.validateLong(Int64.parseLong(contentMetadata.getContentId())) : 0
            events.playlistName = ""
            events.actor = ""
            events.carousel = ""
            events.category = contentMetadata != nil ? Utils.validateString(contentMetadata.getTypeid()) : "song"
            events.composer = ""
            events.audioQuality = audioQualityPojo != nil ? audioQualityPojo.getQualityTitle() : ""
            events.consumptionType = isDownloaded ? "Download" : "Stream"
            events.contentPosition = ""
            events.duration = ""
            events.connectionType = ""
            events.criticRating = ""
            events.keywords = ""
            events.lastSource = ""
            events.labelId = ""
            events.loginStatus = ""
            events.lyricsType = ""
            events.moduleTrackId = ""
            events.moduleTrackingName = ""
            events.originalAlbumName = ""
            events.setpId("")
            events.playBackSource = ""
            events.playlistId = 0
            events.playBackSource = ""
            events.playBackType = ""
            events.playerType = ""
            events.playlistName = ""
            events.releaseDate = ""
            events.setpName("")
            events.shuffle = ""
            events.videoQuality = ""
            events.subGenre = ""
            events.sourceDetails = ""
            events.repeat = ""
            Log.v("EVENTs data", "musicStartedEvent : \(events)")
            return events
        }

        static func getEventMusicStartedValues(event: MusicEventAnalytics) -> Hash[String: Object] {
            static let values: Hash[String: Object] = HashMap()
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.CONTENT_ID, String.valueOf(event.contentId))
            values.put(Property.PLAYLIST_ID, String.valueOf(event.playlistId))
            values.put(Property.ORIGINAL_ALBUM_NAME, event.originalAlbumName)
            values.put(Property.GENRE, event.genre)
            values.put(Property.MOOD, event.mood)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTOR, event.actor)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.LOGIN_STATUS, event.loginStatus)
            values.put(Property.AUDIO_QUALITY, event.audioQuality)
            values.put(Property.CONSUMPTION_TYPE, event.consumptionType)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.DURATION, event.duration)
            values.put(Property.ALBUM_ID, event.albumId)
            values.put(Property.ALBUM_NAME, event.originalAlbumName)
            values.put(Property.TAB, event.tab)
            values.put(Property.CAROUSEL_POSITION, event.carousel)
            values.put(Property.CONTENT_POSITION, event.contentPosition)
            values.put(Property.PLAYBACK_TYPE, event.playBackType)
            values.put(Property.PLAYER_TYPE, event.playerType)
            values.put(Property.LAST_SOURCE, event.lastSource)
            values.put(Property.SHUFFLE, event.shuffle)
            values.put(Property.REPEAT, event.repeat)
            values.put(Property.PLAYBACK_SOURCE, event.playBackSource)
            values.put(Property.CATEGORY, event.category)
            values.put(Property.VIDEO_QUALITY, event.videoQuality)
            values.put(Property.CONNECTION_TYPE, event.connectionType)
            values.put(Property.LABEL, event.label)
            values.put(Property.LABEL_ID, event.labelId)
            values.put(Property.CONTENT_TYPE_ID, event.contentId)
            values.put(Property.SUB_GENRE, event.subGenre)
            values.put(Property.LYRICS_TYPE, event.lyricsType)
            values.put(Property.RATING, event.rating)
            values.put(Property.IS_ORIGINAL, "")
            values.put(Property.CAST_ENABLED, "")
            values.put(Property.AGE_RATING, "")
            values.put(Property.CRITIC_RATING, "")
            values.put(Property.KEYWORDS, event.keywords)
            values.put(Property.PTYPE, event.getpType())
            values.put(Property.PID, event.getpId())
            values.put(Property.PNAME, event.getpName())
            values.put(Property.RELEASE_DATE, event.releaseDate)
            values.put(Property.USER_RATING, event.userRating)
            return values
        }

        // for musicStopped Event
        fun musicStoppedEvent(contentMetadata: ContentMetadata, songDetail: SongDetail?, currentPosition: Int64, duration: Int64, isDownloaded: Bool,
                              audioQualityPojo: AudioQualityPojo?): MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            if let songDetail = songDetail {
                events.originalAlbumName = Utils.validateString(songDetail.getAlbumName())
                events.genre = Utils.validateString(songDetail.getGenre())
                events.mood = Utils.validateString(songDetail.getMood())
                events.language = Utils.validateString(songDetail.getLanguage())
                events.yearOfRelease = "" + Utils.validateLong(songDetail.getRelyear())
                events.tempo = Utils.validateString(songDetail.getAttributeTempo())
                events.singer = Utils.validateString(songDetail.getSingers())
                events.lyricist = Utils.validateString(songDetail.getLyricist())
                events.albumId = "" + Utils.validateLong(songDetail.getAlbumId())
                events.albumName = Utils.validateString(songDetail.getAlbumName())
                events.tab = Utils.validateString(songDetail.getSongTags())
                events.label = Utils.validateString(songDetail.getLabel())
                events.contentId = Utils.validateLong(songDetail.getContentId())
            } else {
                events.originalAlbumName = ""
                events.genre = ""
                events.mood = ""
                events.language = ""
                events.yearOfRelease = ""
                events.tempo = ""
                events.singer = ""
                events.lyricist = ""
                events.albumId = ""
                events.albumName = ""
                events.tab = ""
                events.label = ""
                events.contentId = Int64.parseLong("-1")
            }
            events.source = ""
            events.sourceDetails = ""
            events.contentId = Int64.parseLong(contentMetadata.getContentId())
            events.contentName = contentMetadata.getTitle()
            events.playlistId = -1
            events.playlistName = ""
            /*events.setOriginalAlbumName(songDetail.getAlbumName());
        events.setGenre(songDetail.getGenre());
        events.setMood(songDetail.getMood());
        events.setLanguage(songDetail.getLanguage());
        events.setYearOfRelease(String.valueOf(songDetail.getRelyear()));
        events.setTempo(songDetail.getAttributeTempo());
        events.setSinger(songDetail.getSingers());*/events.actor = ""
            events.composer = ""
            //    events.setLyricist(songDetail.getLyricist());
            events.loginStatus = ""
            events.audioQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            events.consumptionType = if (isDownloaded) "Download" else "Stream"
            events.contentType = "" + contentMetadata.getTypeid()
            if (contentMetadata.getContainerType() == null) {
                events.contentType = "song"
            }
            events.duration = "" + if (duration < 0) 0 else duration / 1000
            events.durationConsumed = "" + currentPosition / 1000
            events.duration_Fg = "" + currentPosition / 1000
            events.duration_Bg = "" + currentPosition / 1000
            if (duration != 0) {
                val percentageComp = (currentPosition * 100 / duration).toDouble()
                events.percentageCompletion = percentageComp.toFloat()
            } else {
                events.percentageCompletion = 0f
            }
            /*events.setAlbumId(String.valueOf(songDetail.getAlbumId()));
        events.setAlbumName(songDetail.getAlbumName());*/events.downloadQuality = ""
            //     events.setTab(songDetail.getSongTags());
            events.carousel_Position = ""
            events.contentPosition = ""
            events.playBackType = ""
            events.playerType = ""
            events.lastSource = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.moduleTrackId = ""
            events.moduleTrackingName = ""
            events.category = contentMetadata.getTypeid()
            if (contentMetadata.getTypeid() == null) {
                events.category = "song"
            }
            events.videoQuality = ""
            //    events.setLabel(songDetail.getLabel());
            events.labelId = ""
            //     events.setContentId(songDetail.getContentId());
            events.subGenre = ""
            events.lyricsType = ""
            events.rating = ""
            events.is_Original = ""
            events.age_Rating = ""
            events.criticRating = ""
            events.keywords = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.releaseDate = ""
            events.userRating = ""
            Log.v("EVENTs data", "musicStoppedEvent : $events")
            return events
        }

        fun getMusicStoppedEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.CONTENT_ID, String.valueOf(event.contentId))
            values.put(Property.PLAYLIST_ID, String.valueOf(event.playlistId))
            values.put(Property.PLAYLIST_NAME, String.valueOf(event.playlistName))
            values.put(Property.ORIGINAL_ALBUM_NAME, event.originalAlbumName)
            values.put(Property.GENRE, event.genre)
            values.put(Property.MOOD, event.mood)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTOR, event.actor)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.LOGIN_STATUS, event.loginStatus)
            values.put(Property.AUDIO_QUALITY, event.audioQuality)
            values.put(Property.CONSUMPTION_TYPE, event.consumptionType)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.DURATION, event.duration)
            values.put(Property.DURATION_CONSUMED, event.durationConsumed)
            values.put(Property.DURATION_FG, event.duration_Fg)
            values.put(Property.DURATION_BG, event.duration_Bg)
            values.put(Property.PERCENTAGE_COMPLETION, event.percentageCompletion)
            values.put(Property.ALBUM_ID, event.albumId)
            values.put(Property.ALBUM_NAME, event.albumName)
            values.put(Property.DOWNLOAD_QUALITY, event.downloadQuality)
            values.put(Property.TAB, event.tab)
            values.put(Property.CAROUSEL_POSITION, event.carousel)
            values.put(Property.CONTENT_POSITION, event.contentPosition)
            values.put(Property.PLAYBACK_TYPE, event.playBackType)
            values.put(Property.PLAYER_TYPE, event.playerType)
            values.put(Property.LAST_SOURCE, event.lastSource)
            values.put(Property.SHUFFLE, event.shuffle)
            values.put(Property.REPEAT, event.repeat)
            values.put(Property.PLAYBACK_SOURCE, event.playBackSource)
            /*values.put(Property.MODULETRACKING,event.getModuleTrackingName());*/values.put(Property.CATEGORY, event.category)
            values.put(Property.VIDEO_QUALITY, event.videoQuality)
            values.put(Property.LABEL, event.label)
            values.put(Property.LABEL_ID, event.labelId)
            values.put(Property.CONTENT_TYPE_ID, event.contentId)
            values.put(Property.SUB_GENRE, event.subGenre)
            values.put(Property.LYRICS_TYPE, event.lyricsType)
            values.put(Property.RATING, event.rating)
            values.put(Property.IS_ORIGINAL, "")
            values.put(Property.AGE_RATING, "")
            values.put(Property.CRITIC_RATING, "")
            values.put(Property.KEYWORDS, event.keywords)
            values.put(Property.PTYPE, event.getpType())
            values.put(Property.PID, event.getpId())
            values.put(Property.PNAME, event.getpName())
            values.put(Property.RELEASE_DATE, event.releaseDate)
            values.put(Property.USER_RATING, event.userRating)
            //Log.v("EVENTs data", "getMusicStoppedEventValues : " + values.toString());
            return values
        }

        // musicFailed Event
        fun musicFailedEvent(contentMetadata: ContentMetadata, songDetail: SongDetail, logixException: String?, currentPosition: Long, duration: Long, isDownloaded: Boolean,
                             audioQualityPojo: AudioQualityPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.contentType = "" + contentMetadata.getTypeid()
            events.consumptionType = if (isDownloaded) "Download" else "Stream"
            events.contentName = contentMetadata.getTitle()
            events.contentId = songDetail.getContentId()
            events.error_Type = logixException
            events.setsCode("")
            events.setpCode("")
            events.source = ""
            events.sourceDetails = ""
            events.tab = songDetail.getSongTags()
            events.category = ""
            events.source = ""
            events.actor = ""
            events.audioQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            events.duration_Fg = "" + currentPosition / 1000
            events.duration_Bg = "" + currentPosition / 1000
            events.duration = "" + if (duration < 0) 0 else duration / 1000
            events.genre = songDetail.getGenre()
            events.label = songDetail.getLabel()
            events.labelId = ""
            events.language = songDetail.getLanguage()
            events.lyricist = songDetail.getLyricist()
            events.mood = songDetail.getMood()
            events.composer = ""
            events.originalAlbumName = songDetail.getAlbumName()
            if (duration != 0) {
                val percentageComp = (currentPosition * 100 / duration).toDouble()
                events.percentageCompletion = percentageComp.toFloat()
            } else {
                events.percentageCompletion = 0f
            }
            events.singer = songDetail.getSingers()
            events.contentId = Long.parseLong(contentMetadata.getContentId())
            events.subGenre = ""
            events.lyricsType = ""
            events.tempo = songDetail.getAttributeTempo()
            events.yearOfRelease = String.valueOf(songDetail.getRelyear())
            events.rating = ""
            events.is_Original = ""
            events.cast_Enabled = ""
            events.age_Rating = ""
            events.criticRating = ""
            events.keywords = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.releaseDate = ""
            events.userRating = ""
            events.videoQuality = ""
            Log.v("EVENTs data", "musicFailedEvent : $events")
            return events
        }

        fun getMusicFailedEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.CONSUMPTION_TYPE, event.consumptionType)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.ERROR_TYPE, String.valueOf(event.error_Type))
            values.put(Property.S_CODE, String.valueOf(event.getsCode()))
            values.put(Property.P_CODE, String.valueOf(event.getpCode()))
            values.put(Property.SOURCE_DETAILS, String.valueOf(event.sourceDetails))
            values.put(Property.TAB, String.valueOf(event.tab))
            values.put(Property.SOURCE, event.source)
            values.put(Property.CATEGORY, event.category)
            values.put(Property.ACTOR, String.valueOf(event.actor))
            values.put(Property.AUDIO_QUALITY, event.audioQuality)
            values.put(Property.DURATION, event.duration)
            values.put(Property.DURATION_BG, event.duration_Bg)
            values.put(Property.DURATION_FG, event.duration_Fg)
            values.put(Property.GENRE, event.genre)
            values.put(Property.LABEL, event.label)
            values.put(Property.LABEL_ID, event.labelId)
            values.put(Property.MOOD, event.mood)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.ORIGINAL_ALBUM_NAME, event.originalAlbumName)
            values.put(Property.PERCENTAGE_COMPLETION, event.percentageCompletion)
            values.put(Property.SINGER, event.singer)
            values.put(Property.CONTENT_ID, event.contentId)
            values.put(Property.SUB_GENRE, event.subGenre)
            values.put(Property.LYRICS_TYPE, event.lyricsType)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.RATING, event.rating)
            values.put(Property.IS_ORIGINAL, event.is_Original)
            values.put(Property.CAST_ENABLED, event.cast_Enabled)
            values.put(Property.AGE_RATING, event.age_Rating)
            values.put(Property.CRITIC_RATING, event.critic_Rating)
            values.put(Property.KEYWORDS, event.keywords)
            values.put(Property.PTYPE, event.getpType())
            values.put(Property.PID, event.getpId())
            values.put(Property.PNAME, event.getpName())
            values.put(Property.USER_RATING, event.userRating)
            values.put(Property.VIDEO_QUALITY, event.videoQuality)
            return values
        }

        // Created deleted Playlist
        fun createdDeletedPlaylistEvent(action: String?, playListName: String?, noOfContent: String?, totalPlaylistDuration: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.playlistName = playListName
            events.contentType = ""
            events.noOfContent = ""
            events.playListDuration = ""
            events.action = action
            Log.v("EVENTs data", "createdDeletedPlaylistEvent : $events")
            return events
        }

        fun getCreatedDeletedPlaylistEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.PLAYLIST_NAME, event.playlistName)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.NO_OF_CONTENTS, event.noOfContent)
            values.put(Property.PLAYLIST_DURATION, event.playListDuration)
            values.put(Property.ACTION, event.action)
            return values
        }

        // Music Artwork Tapped.
        fun musicArtworkTappedEvent(song: Song?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (song != null) song.getTitle() else ""
            events.bucketName = ""
            events.bucketId = if (song != null) song.getBucketId() else ""
            events.contentId = if (song != null) Long.parseLong(String.valueOf(song.getSongId())) else Long.parseLong("0")
            events.positionWithBucket = ""
            events.source = if (song != null) song.getSource() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "musicArtworkTappedEvent : $events")
            return events
        }

        fun getMusicArtworkTappedEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.ARTWORK_TYPE, event.artWorkType)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.BUCKET_NAME, event.bucketName)
            values.put(Property.BUCKET_ID, event.bucketId)
            values.put(Property.CONTENT_ID, event.contentId)
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            return values
        }

        // Added to Playlist
        fun addedToPlaylistEvent(action: String, playlistTitle: String?, playListId: String?, type: String?, songDetail: SongDetail?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.action = action
            events.playlistName = "" + (playlistTitle ?: "")
            events.playlistId = if (playListId != null) Utils.validateLong(Long.parseLong(playListId)) else 0
            events.contentName = if (songDetail != null) songDetail.getTitle() else ""
            events.genre = if (songDetail != null) Utils.validateString(songDetail.getGenre()) else ""
            events.mood = if (songDetail != null) Utils.validateString(songDetail.getMood()) else ""
            events.language = if (songDetail != null) Utils.validateString(songDetail.getLanguage()) else ""
            events.yearOfRelease = if (songDetail != null) "" + Utils.validateLong(songDetail.getRelyear()) else ""
            events.tempo = if (songDetail != null) Utils.validateString(songDetail.getAttributeTempo()) else ""
            events.singer = if (songDetail != null) Utils.validateString(songDetail.getSingers()) else ""
            events.actor = ""
            events.composer = if (songDetail != null) Utils.validateString(songDetail.getMusicDirector()) else ""
            events.lyricist = if (songDetail != null) Utils.validateString(songDetail.getLyricist()) else ""
            events.tab = if (songDetail != null) Utils.validateString(songDetail.getSongTags()) else ""
            events.source = ""
            events.sourceDetails = ""
            events.contentId = Utils.validateLong(songDetail.getContentId())
            events.coreTab = ""
            events.subTab = ""
            events.contentType = type ?: ""
            Log.v("EVENTs data", "$action : $events")
            return events
        }

        fun addedToPlaylistEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.ACTION, event.action)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.PLAYLIST_NAME, event.playlistName)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.GENRE, event.genre)
            values.put(Property.MOOD, event.mood)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTOR, event.actor)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.TAB, event.tab)
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.CONTENT_ID, event.contentId)
            return values
        }

        // Add to favourites
        fun addedToFavouriteEvent(songDetail: SongDetail?, category: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = category
            events.playlistName = if (songDetail != null) songDetail.getTitle() else ""
            events.contentType = ""
            events.genre = if (songDetail != null) songDetail.getGenre() else ""
            events.mood = if (songDetail != null) songDetail.getMood() else ""
            events.language = if (songDetail != null) songDetail.getLanguage() else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = if (songDetail != null) Long.valueOf(songDetail.getContentId()) else Long.parseLong("0")
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : $events")
            return events
        }

        fun getAddedToFavouriteEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
            values.put(Property.CATEGORY, event.category)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.PLAYLIST_NAME, event.playlistName)
            values.put(Property.GENRE, event.genre)
            values.put(Property.MOOD, event.mood)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTOR, event.actor)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.TAB, event.tab)
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.CONTENT_ID, event.contentId)
            return values
        }

        /**
         * get music Player Action Events
         */
        static func getMusicPlayerActionEvent(event: MusicEventAnalytics) -> Hash[String: Object] {
            static let values: Hash[String: Object] = HashMap()
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.ACTION, event.contentType)
            values.put(Property.PLAYER_TYPE, event.playerType)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.CONTENT_ID, event.contentId)
            values.put(Property.CATEGORY, event.category)
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.GENRE, event.genre)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTOR, event.actor)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.PTYPE, event.getpType())
            values.put(Property.PID, event.getpId())
            values.put(Property.PNAME, event.getpName())
            return values
        }

        /**
         * set Music Player Actions events
         */
        fun setMusicPlayerEvents(contentMetadata: ContentMetadata?,
                                 songDetail: SongDetail?,
                                 playerEvent: String?): MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = songDetail != nil ? Utils.validateString(songDetail.getTitle()) : ""
            events.contentId = songDetail != nil ? songDetail.getContentId() : 0
            events.category = ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = songDetail != nil ? Utils.validateString(songDetail.getGenre()) : ""
            events.language = songDetail != nil ? Utils.validateString(songDetail.getLanguage()) : ""
            events.yearOfRelease = songDetail != nil ? "" + Utils.validateLong(songDetail.getRelyear()) : ""
            events.tempo = songDetail != nil ? Utils.validateString(songDetail.getAttributeTempo()) : ""
            events.singer = songDetail != nil ? Utils.validateString(songDetail.getSingers()) : ""
            events.actor = ""
            events.composer = songDetail != nil ? Utils.validateString(songDetail.getMusicDirector()) : ""
            events.lyricist = songDetail != nil ? Utils.validateString(songDetail.getLyricist()) : ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            return events
        }

        /**
         * set Radio Player Actions events
         */
        fun setRadioPlayerEvents(contentMetadata: ContentMetadata?,
                                 playerEvent: String?): MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = contentMetadata != nil ? Utils.validateString(contentMetadata.getTitle()) : ""
            events.contentId = contentMetadata != nil ? Int64.parseLong(Utils.validateString(contentMetadata.getContentId())) : 0
            events.category = ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = ""
            events.language = contentMetadata != nil ? Utils.validateString(contentMetadata.getLang()) : ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = contentMetadata != nil ? Utils.validateString(contentMetadata.getSingers()) : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            return events
        }

        /**
         * set Podcast Player Actions events
         */
        fun setPodcastPlayerEvents(contentMetadata: ContentMetadata?,
                                   podcast: Podcast?,
                                   playerEvent: String?): MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = podcast != nil ? Utils.validateString(podcast.getTitle()) : ""
            events.contentId = podcast != nil ? podcast.getContentId() : 0
            events.category = podcast != nil ? "" + podcast.getCategory() : ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = ""
            events.language = podcast != nil ? "" + podcast.getLanguage() : ""
            events.yearOfRelease = podcast != nil ? "" + podcast.getRelease_year() : ""
            events.tempo = ""
            events.singer = contentMetadata != nil ? Utils.validateString(contentMetadata.getSingers()) : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            return events
        }

        /**
         * set MyMusic song tab
         */
        static func myMusicSongArtworkTappedEvent(content: Content?, song: Song?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = content != nil ? Utils.validateString(content.getTitle()) : ""
            events.bucketName = ""
            events.bucketId = content != nil ? song.getBucketId() : ""
            events.contentId = song != nil ? Int64.parseLong(String.valueOf(content.getContentId())) : 0
            events.positionWithBucket = ""
            events.source = song != nil ? song.getSource() : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "music song tab ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * Content MyMusic Album Tapped  */
        static func myMusicAlbumAndPlaylistArtWorkTappedEvent(content: Content?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = content != nil ? Utils.validateString(content.getTitle()) : ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = content != nil ? content.getContentId() : 0
            events.positionWithBucket = ""
            events.source = content != nil ? Utils.validateString(content.getType()) : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "playlist Album tab ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * Podcast Artwork Tapped  */
        static func myMusicPodcastAlbumArtworkTappedEvent(podcastContent: PodcastContent?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType ?? ""
            events.contentName = podcastContent != nil ? Utils.validateString(podcastContent.getTitle()) : ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = podcastContent != nil ? Utils.validateLong(Int64.parseLong(podcastContent.getContent_id())) : 0
            events.positionWithBucket = ""
            events.source = artWorkType
            events.sourceDetails = ""
            Log.v("EVENTs data", "podcast music tab ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * Playlist and Album artwork tapped event
         */
        static func playlistAndAlbumTabArtWorkEvent(song: Song?, track: Track?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = song != nil ? song.getTitle() : ""
            events.bucketName = ""
            events.bucketId = song != nil ? song.getBucketId() : ""
            events.contentId = track != nil ? Int64.parseLong(String.valueOf(track.getContentId())) : 0
            events.positionWithBucket = ""
            events.source = song != nil ? song.getSource() : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "playlist And Album Tab ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * podcastItems Artwork Tapped from tab
         */
        static func podcastItemsAlbumArtworkTappedEvent(song: Song?, podcastDetails: Podcast?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = song != nil ? song.getTitle() : ""
            events.bucketName = ""
            events.bucketId = song != nil ? song.getBucketId() : ""
            events.contentId = podcastDetails != nil ? Int64.parseLong(String.valueOf(podcastDetails.getContentId())) : 0
            events.positionWithBucket = ""
            events.source = song != nil ? song.getSource() : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "podcast Tab ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * Personal Playlist ArtWork
         */
        static func PersonalPlayListArtworkTappedEvent(song: Song?, track: UserPlaylistResponse.Tracks?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = ""
            events.bucketName = ""
            events.bucketId = song != nil ? song.getBucketId() : ""
            events.contentId = track != nil ? Int64.parseLong(String.valueOf(track.getId())) : 0
            events.positionWithBucket = ""
            events.source = song != nil ? song.getSource() : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "personal playlist ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * topCharts artwork tapped
         */
        static func topChartsArtWorkEvent(song: Song?, chartTrack: ChartTrack?, topCharts: Topcharts?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = topCharts != nil ? topCharts.getTitle() : ""
            events.bucketName = ""
            events.bucketId = song != nil ? song.getBucketId() : ""
            events.contentId = topCharts != nil ? Int64.parseLong(String.valueOf(topCharts.getContent_id())) : 0
            events.positionWithBucket = ""
            events.source = topCharts != nil ? topCharts.getTitle() : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Top Charts ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * Artist bucket on ArtWork Tapped
         */
        static func musicArtistBucketArtworkTappedEvent(song: ArtistBucketSong?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = song != nil ? song.getTitle() : ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = song != nil ? Int64.parseLong(String.valueOf(song.getContent_id())) : 0
            events.positionWithBucket = ""
            events.source = artWorkType
            events.sourceDetails = ""
            Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * radio player on Artwork Tapped
         */
        static func radioPlayerArtWorkEvent(data: RadioModel.Response.Data?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = data != nil ? Utils.validateString(data.getContentTitle()) : ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = data != nil ? Int64.parseLong(data.getId()) : 0
            events.positionWithBucket = ""
            events.source = ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Radio Player ArtworkTappedEvent : \(events)")
            return events
        }

        /**
         * playlist AddToFavourite Event
         */
        static func playlistAddedToFavouriteEvent(playlist: Playlist?, category: String?, contentId: String?, typeId: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = category
            events.playlistName = playlist != nil ? playlist.getTitle() : ""
            events.contentType = playlist != nil ? playlist.getTitle() : ""
            events.genre = ""
            events.mood = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Int64.parseLong(contentId))
            events.tab = ""
            events.source = typeId
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "playlist addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * top Charts AddToFavourites
         */
        static func topChartsAddedToFavouriteEvent(topCharts: Topcharts?, contentId: String?, typeId: String?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = topCharts != nil ? topCharts.getTitle() : ""
            events.contentType = typeId
            events.genre = ""
            events.mood = ""
            events.language = topCharts != nil ? Utils.validateString(topCharts.getLanguage()) : ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Int64.parseLong(contentId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "topCharts addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * podcast AddToFavourites
         */
        static func podCastAddedToFavouriteEvent(podcastDetails: Podcast?, contentId: String?, typeId: String?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = podcastDetails != nil ? podcastDetails.getTitle() : ""
            events.contentType = typeId
            events.genre = ""
            events.mood = ""
            events.language = podcastDetails != nil ? Utils.validateString(podcastDetails.getLanguage()) : ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Int64.parseLong(contentId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "podcast addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * Artist bucket AddToFavourites
         */
        static func artistAddedToFavouriteEvent(artistBucket: ArtistBucketResponse?, mArtistId: String?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = ""
            events.contentType = ""
            events.genre = ""
            events.mood = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Int64.parseLong(mArtistId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * album AddToFavourites
         */
        static func albumAddedToFavouriteEvent(albumDetails: AlbumDetail?, album: String?, contentId: String?, contentMetadata: ContentMetadata) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = contentMetadata.getContainerType()
            events.playlistName = ""
            events.contentType = albumDetails != nil ? albumDetails.getMusicalbum().getTitle() : ""
            events.genre = ""
            events.mood = ""
            events.language = albumDetails != nil ? albumDetails.getMusicalbum().getLanguage() : ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = albumDetails != nil ? Utils.validateLong(albumDetails.getMusicalbum().getContentId()) : 0
            events.tab = ""
            events.source = album
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * songQueue add to favourites
         */
        static func addedToFavouriteSongQueueEvent(contentMetadata: ContentMetadata?, songs: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = contentMetadata.getContainerType()
            events.playlistName = ""
            events.contentType = contentMetadata != nil ? contentMetadata.getContentTitle() : ""
            events.genre = ""
            events.mood = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = contentMetadata != nil ? Int64.parseLong(contentMetadata.getContentId()) : 0
            events.tab = ""
            events.source = songs
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * MyDownloads SongTab ArtWorkTapped
         */
        static func downloadSongArtWorkTappedEvent(song: Song?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = ""
            events.bucketName = ""
            events.bucketId = song != nil ? Utils.validateString(song.getBucketId()) : ""
            events.contentId = song != nil ? Int64.parseLong(String.valueOf(song.getSongId())) : 0
            events.positionWithBucket = ""
            events.source = song != nil ? Utils.validateString(song.getBucketId()) : ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : \(events)")
            return events
        }

        static func artistListArtWorkTappedEvent(artistBucketSong: ArtistBucketSong?, artWorkType: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = artistBucketSong != nil ? artistBucketSong.getTitle() : ""
            events.contentType = ""
            events.genre = artistBucketSong != nil ? Utils.validateString(artistBucketSong.getGenre()) : ""
            events.mood = artistBucketSong != nil ? Utils.validateString(artistBucketSong.getGenre()) : ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Int64.parseLong(artistBucketSong.getContent_id()))
            events.tab = ""
            events.source = artWorkType
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "podcast addedToFavouriteEvent : \(events)")
            return events
        }

        /**
         * Music Download Events by PlaylistAndAlbumFragment
         */
        static func musicDownloadByPlaylistAndAlbumEvent(playlist: Playlist?, contentMetadata: ContentMetadata?, audioQualityPojo: AudioQualityPojo?, contentType: String?, offlineDLPojo: OfflineDLPojo?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackTitle()) : ""
            events.contentId = offlineDLPojo.getTrackId() != nil ? Int64.parseLong(offlineDLPojo.getTrackId()) : 0
            events.playlistName = playlist != nil ? Utils.validateString(playlist.getTitle()) : ""
            events.playlistId = playlist != nil ? playlist.getContentId() : 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = playlist != nil ? String.valueOf(playlist.getReleaseYear()) : ""
            events.tempo = ""
            events.singer = offlineDLPojo != nil ? offlineDLPojo.getTrackSubTitle() : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = audioQualityPojo != nil ? audioQualityPojo.getQualityTitle() : ""
            if contentMetadata.getContainerType() == nil {
                events.contentType = "Audio"
            } else {
                events.contentType = contentMetadata.getContainerType()
            }
            events.albumId = contentMetadata != nil ? String.valueOf(contentMetadata.getAlbumId()) : ""
            events.albumName = contentMetadata != nil ? contentMetadata.getAlbumName() : ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "playlist downloadEvent : \(events)")
            return events
        }

        /**
         * topCharts for download
         */
        static func musicDownloadByTopChartsEvent(topCharts: Topcharts?, typeId: String?, audioQualityPojo: AudioQualityPojo?, chartTrack: ContentMetadata?, offlineDLPojo: OfflineDLPojo?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackTitle()) : ""
            events.contentId = offlineDLPojo.getTrackId() != nil ? Int64.parseLong(offlineDLPojo.getTrackId()) : 0
            events.playlistName = ""
            events.playlistId = 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = topCharts != nil ? topCharts.getLanguage() : ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = offlineDLPojo.getTrackSubTitle() != nil ? Utils.validateString(offlineDLPojo.getTrackSubTitle()) : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = audioQualityPojo != nil ? audioQualityPojo.getQualityTitle() : ""
            events.contentType = typeId
            events.albumId = chartTrack != nil ? String.valueOf(chartTrack.getAlbumId()) : ""
            events.albumName = chartTrack != nil ? Utils.validateString(chartTrack.getAlbumName()) : ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = topCharts != nil ? String.valueOf(topCharts.getTracks_count()) : ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "music downloadEvent : \(events)")
            return events
        }

        /**
         * set download from Nowplaying screen
         */
        static func musicDownloadNowPlayingEvent(contentMetadata: ContentMetadata?, podcastDetails: Podcast?, audioQualityPojo: AudioQualityPojo?, typeIdSong: String?, offlineDLPojo: OfflineDLPojo?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = Utils.validateString(typeIdSong)
            events.sourceDetails = ""
            events.contentName = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackTitle()) : ""
            events.contentId = offlineDLPojo.getTrackId() != nil ? Int64.parseLong(offlineDLPojo.getTrackId()) : 0
            events.playlistName = ""
            events.playlistId = contentMetadata.getAlbumId()
            events.originalAlbumName = ""
            events.genre = ""
            events.language = contentMetadata.getLang()
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = offlineDLPojo != nil ? offlineDLPojo.getTrackSubTitle() : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = audioQualityPojo != nil ? audioQualityPojo.getQualityTitle() : ""
            events.contentType = "Audio"
            events.albumId = contentMetadata != nil ? String.valueOf(contentMetadata.getAlbumId()) : ""
            events.albumName = contentMetadata != nil ? contentMetadata.getAlbumName() : ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "music downloadEvent : \(events)")
            return events
        }

        /**
         * download from album screen
         */
        static func musicDownloadAlbumEvent(albumDetails: AlbumDetail?, contentMetadata: ContentMetadata?, playlist: Playlist?, downloadQualityPojo: AudioQualityPojo?, contentType: String?, offlineDLPojo: OfflineDLPojo?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackTitle()) : ""
            events.contentId = offlineDLPojo != nil ? Utils.validateLong(Int64.valueOf(offlineDLPojo.getTrackId())) : 0
            events.playlistName = playlist != nil ? playlist.getTitle() : ""
            events.playlistId = playlist != nil ? playlist.getContentId() : 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = albumDetails != nil ? albumDetails.getMusicalbum().getLanguage() : ""
            events.yearOfRelease = albumDetails != nil ? String.valueOf(albumDetails.getMusicalbum().getReleaseYear()) : ""
            events.tempo = ""
            events.singer = contentMetadata != nil ? contentMetadata.getSingers() : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = downloadQualityPojo != nil ? downloadQualityPojo.getQualityTitle() : ""
            events.contentType = "Audio"
            events.albumId = albumDetails != nil ? String.valueOf(albumDetails.getMusicalbum().getContentId()) : ""
            events.albumName = albumDetails != nil ? albumDetails.getMusicalbum().getTitle() : ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "album music downloadEvent : \(events)")
            return events
        }

        /**
         * download event for personal playlist frag.
         */
        static func musicDownloadByPersonalPlaylistEvent(userPlaylistTracks: UserPlaylistResponse.Tracks?, downloadQualityPojo: AudioQualityPojo?, typeIdPlaylist: String?, playlistID: String?, playlistTitle: String?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = Utils.validateString(typeIdPlaylist)
            events.sourceDetails = ""
            events.contentName = Utils.validateString(userPlaylistTracks.getName())
            events.contentId = userPlaylistTracks != nil ? Int64.parseLong(userPlaylistTracks.getId()) : 0
            events.playlistName = playlistTitle
            events.playlistId = playlistID != nil && !playlistID.isEmpty() ? Int64.parseLong(playlistID) : 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = downloadQualityPojo != nil ? downloadQualityPojo.getQualityTitle() : ""
            events.contentType = "Audio"
            events.albumId = ""
            events.albumName = ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "album music downloadEvent : \(events)")
            return events
        }

        static func getMusicDownloadedEventValues(event: MusicEventAnalytics) -> Hash[String: Object] {
            static let values: Hash[String: Object] = HashMap()
            values.put(Property.SOURCE, event.source)
            values.put(Property.SOURCE_DETAILS, event.sourceDetails)
            values.put(Property.CONTENT_NAME, event.contentName)
            values.put(Property.CONTENT_ID, event.contentId)
            values.put(Property.PLAYLIST_NAME, event.playlistName)
            values.put(Property.PLAYLIST_ID, event.playlistId)
            values.put(Property.ORIGINAL_ALBUM_NAME, event.originalAlbumName)
            values.put(Property.GENRE, event.genre)
            values.put(Property.LANGUAGE, event.language)
            values.put(Property.YEAR_OF_RELEASE, event.yearOfRelease)
            values.put(Property.TEMPO, event.tempo)
            values.put(Property.SINGER, event.singer)
            values.put(Property.ACTION, event.action)
            values.put(Property.MUSIC_DIRECTOR, event.composer)
            values.put(Property.LYRICIST, event.lyricist)
            values.put(Property.DOWNLOAD_QUALITY, event.downloadQuality)
            values.put(Property.CONTENT_TYPE, event.contentType)
            values.put(Property.ALBUM_ID, event.albumId)
            values.put(Property.ALBUM_NAME, event.albumName)
            values.put(Property.TAB, event.tab)
            values.put(Property.CAROUSEL_POSITION, event.carousel_Position)
            values.put(Property.CONTENT_POSITION, event.contentPosition)
            values.put(Property.SHUFFLE, event.shuffle)
            values.put(Property.REPEAT, event.repeat)
            values.put(Property.PLAYBACK_SOURCE, event.playBackSource)
            values.put(Property.PTYPE, event.getpType())
            values.put(Property.PID, event.getpId())
            values.put(Property.PNAME, event.getpName())
            return values
        }

        /**
         * Music download completed
         */
        static func musicDownloadReceiverEvent(mContentMetadata: ContentMetadata?, mSongDetail: SongDetail?, downloadQualityPojo: AudioQualityPojo?, downloadStatus: String, offlineDLPojo: OfflineDLPojo?) -> MusicEventAnalytics {
            static let events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackTitle()) : ""
            events.contentId = offlineDLPojo.getTrackId() != nil ? Int64.parseLong(offlineDLPojo.getTrackId()) : 0
            events.playlistName = ""
            events.playlistId = 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = offlineDLPojo != nil ? Utils.validateString(offlineDLPojo.getTrackSubTitle()) : ""
            events.actor = ""
            events.composer = ""
            events.lyricist = mSongDetail != nil ? Utils.validateString(mSongDetail.getLyricist()) : ""
            events.downloadQuality = downloadQualityPojo != nil ? downloadQualityPojo.getQualityTitle() : ""
            events.contentType = "Audio"
            events.albumId = mSongDetail != nil ? "" + Utils.validateLong(mSongDetail.getAlbumId()) : ""
            events.albumName = mSongDetail != nil ? Utils.validateString(mSongDetail.getAlbumName()) : ""
            events.tab = mSongDetail != nil ? Utils.validateString(mSongDetail.getSongTags()) : ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "downloadStatus : \(downloadStatus).....\(events)")
            return events
        }
    }
