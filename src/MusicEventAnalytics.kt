package com.myplex.playerui.utils

import android.text.TextUtils
import android.util.Log
import com.android.player.data.Song
import com.android.player.offlinedl.OfflineDLPojo
import com.music.analytics.Property
import com.myplex.playerui.model.AlbumDetail
import com.myplex.playerui.model.AudioQualityPojo
import com.myplex.playerui.model.Content
import com.myplex.playerui.model.ContentMetadata
import com.myplex.playerui.model.Playlist
import com.myplex.playerui.model.SongDetail
import com.myplex.playerui.model.Track
import com.myplex.playerui.model.artistbucket.ArtistBucketResponse
import com.myplex.playerui.model.artistbucket.ArtistBucketSong
import com.myplex.playerui.model.mymusicpodcast.PodcastContent
import com.myplex.playerui.model.podcast.Podcast
import com.myplex.playerui.model.nextArtistDetail.Tracks
import com.myplex.playerui.model.radio.RadioModel
import com.myplex.playerui.model.topchart.ChartTrack
import com.myplex.playerui.model.topchart.Topcharts
import com.myplex.playerui.model.userplaylists.UserPlaylistResponse
import java.util.HashMap

class MusicEventAnalytics {
    var source: String? = null
    var sourceDetails: String? = null
    var contentName: String? = null
    var contentId: Long = 0
    var playlistName: String? = null
    var playlistId: Long = 0
    var originalAlbumName: String? = null
    var genre: String? = null
    var mood: String? = null
    var language: String? = null
    var yearOfRelease: String? = null
    var tempo: String? = null
    var singer: String? = null
    var actor: String? = null
    var composer: String? = null
    var lyricist: String? = null
    var loginStatus: String? = null
    var audioQuality: String? = null
    var consumptionType: String? = null
    var contentType: String? = null
    var duration: String? = null
    var albumId: String? = null
    var tab: String? = null
    var carousel: String? = null
    var contentPosition: String? = null
    var playBackType: String? = null
    var playerType: String? = null
    var lastSource: String? = null
    var shuffle: String? = null
    var repeat: String? = null
    var playBackSource: String? = null
    var moduleTrackId: String? = null
    var moduleTrackingName: String? = null
    var category: String? = null
    var videoQuality: String? = null
    var connectionType: String? = null
    var label: String? = null
    var labelId: String? = null
    var contentTypeId: String? = null
    var subGenre: String? = null
    var lyricsType: String? = null
    var rating: String? = null
    var criticRating: String? = null
    var keywords: String? = null
    private var pType: String? = null
    private var pId: String? = null
    private var pName: String? = null
    var releaseDate: String? = null
    var userRating: String? = null
    var durationConsumed: String? = null
    var duration_Fg: String? = null
    var duration_Bg: String? = null
    var percentageCompletion = 0f
    var albumName: String? = null
    var downloadQuality: String? = null
    var carousel_Position: String? = null
    var is_Original: String? = null
    var cast_Enabled: String? = null
    var age_Rating: String? = null
    var critic_Rating: String? = null
    var error_Type: String? = null
    private var sCode: String? = null
    private var pCode: String? = null
    var sourcePage: String? = null
    var noOfContent: String? = null
    var playListDuration: String? = null
    var artWorkType: String? = null
    var bucketName: String? = null
    var bucketId: String? = null
    var positionWithBucket: String? = null
    var coreTab: String? = null
    var subTab: String? = null
    var action: String? = null
    var size: String? = null
    fun getsCode(): String? {
        return sCode
    }

    fun setsCode(sCode: String?) {
        this.sCode = sCode
    }

    fun getpCode(): String? {
        return pCode
    }

    fun setpCode(pCode: String?) {
        this.pCode = pCode
    }

    fun getpType(): String? {
        return pType
    }

    fun setpType(pType: String?) {
        this.pType = pType
    }

    fun getpId(): String? {
        return pId
    }

    fun setpId(pId: String?) {
        this.pId = pId
    }

    fun getpName(): String? {
        return pName
    }

    fun setpName(pName: String?) {
        this.pName = pName
    }

    @Override
    override fun toString(): String {
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
    }

    object Utils {
        fun validateString(givenString: String?): String {
            return if (givenString != null && !givenString.isEmpty()) {
                givenString
            } else {
                ""
            }
        }

        fun validateLong(givenLong: Long?): Long {
            return givenLong ?: Long.valueOf(0)
        }
    }

    companion object {
        fun musicStartedEvent(contentMetadata: ContentMetadata?, songDetail: SongDetail?, isDownloaded: Boolean,
                              audioQualityPojo: AudioQualityPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            if (songDetail != null) {
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
            events.contentName = if (contentMetadata != null) Utils.validateString(contentMetadata.getTitle()) else ""
            events.contentType = if (contentMetadata != null) Utils.validateString(contentMetadata.getContainerType()) else "song"
            events.source = ""
            events.sourceDetails = ""
            events.contentId = if (contentMetadata != null) Utils.validateLong(Long.parseLong(contentMetadata.getContentId())) else 0
            events.playlistName = ""
            events.actor = ""
            events.carousel = ""
            events.category = if (contentMetadata != null) Utils.validateString(contentMetadata.getTypeid()) else "song"
            events.composer = ""
            events.audioQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            events.consumptionType = if (isDownloaded) "Download" else "Stream"
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
            events.playlistId = 0L
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
            Log.v("EVENTs data", "musicStartedEvent : $events")
            return events
        }

        fun getEventMusicStartedValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
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
        fun musicStoppedEvent(contentMetadata: ContentMetadata, songDetail: SongDetail?, currentPosition: Long, duration: Long, isDownloaded: Boolean,
                              audioQualityPojo: AudioQualityPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            if (songDetail != null) {
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
                events.contentId = Long.parseLong("-1")
            }
            events.source = ""
            events.sourceDetails = ""
            events.contentId = Long.parseLong(contentMetadata.getContentId())
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
        fun getMusicPlayerActionEvent(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
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
            val events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = if (songDetail != null) Utils.validateString(songDetail.getTitle()) else ""
            events.contentId = if (songDetail != null) songDetail.getContentId() else 0
            events.category = ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = if (songDetail != null) Utils.validateString(songDetail.getGenre()) else ""
            events.language = if (songDetail != null) Utils.validateString(songDetail.getLanguage()) else ""
            events.yearOfRelease = if (songDetail != null) "" + Utils.validateLong(songDetail.getRelyear()) else ""
            events.tempo = if (songDetail != null) Utils.validateString(songDetail.getAttributeTempo()) else ""
            events.singer = if (songDetail != null) Utils.validateString(songDetail.getSingers()) else ""
            events.actor = ""
            events.composer = if (songDetail != null) Utils.validateString(songDetail.getMusicDirector()) else ""
            events.lyricist = if (songDetail != null) Utils.validateString(songDetail.getLyricist()) else ""
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
            val events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = if (contentMetadata != null) Utils.validateString(contentMetadata.getTitle()) else ""
            events.contentId = if (contentMetadata != null) Long.parseLong(Utils.validateString(contentMetadata.getContentId())) else 0
            events.category = ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = ""
            events.language = if (contentMetadata != null) Utils.validateString(contentMetadata.getLang()) else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = if (contentMetadata != null) Utils.validateString(contentMetadata.getSingers()) else ""
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
            val events = MusicEventAnalytics()
            events.contentType = ""
            events.action = playerEvent
            events.playerType = ""
            events.contentName = if (podcast != null) Utils.validateString(podcast.getTitle()) else ""
            events.contentId = if (podcast != null) podcast.getContentId() else 0
            events.category = if (podcast != null) "" + podcast.getCategory() else ""
            events.source = ""
            events.sourceDetails = ""
            events.genre = ""
            events.language = if (podcast != null) "" + podcast.getLanguage() else ""
            events.yearOfRelease = if (podcast != null) "" + podcast.getRelease_year() else ""
            events.tempo = ""
            events.singer = if (contentMetadata != null) Utils.validateString(contentMetadata.getSingers()) else ""
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
        fun myMusicSongArtworkTappedEvent(content: Content?, song: Song?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (content != null) Utils.validateString(content.getTitle()) else ""
            events.bucketName = ""
            events.bucketId = if (content != null) song.getBucketId() else ""
            events.contentId = if (song != null) Long.parseLong(String.valueOf(content.getContentId())) else 0
            events.positionWithBucket = ""
            events.source = if (song != null) song.getSource() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "music song tab ArtworkTappedEvent : $events")
            return events
        }

        /**
         * Content MyMusic Album Tapped  */
        fun myMusicAlbumAndPlaylistArtWorkTappedEvent(content: Content?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (content != null) Utils.validateString(content.getTitle()) else ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = if (content != null) content.getContentId() else 0
            events.positionWithBucket = ""
            events.source = if (content != null) Utils.validateString(content.getType()) else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "playlist Album tab ArtworkTappedEvent : $events")
            return events
        }

        /**
         * Podcast Artwork Tapped  */
        fun myMusicPodcastAlbumArtworkTappedEvent(podcastContent: PodcastContent?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType ?: ""
            events.contentName = if (podcastContent != null) Utils.validateString(podcastContent.getTitle()) else ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = if (podcastContent != null) Utils.validateLong(Long.parseLong(podcastContent.getContent_id())) else 0
            events.positionWithBucket = ""
            events.source = artWorkType
            events.sourceDetails = ""
            Log.v("EVENTs data", "podcast music tab ArtworkTappedEvent : $events")
            return events
        }

        /**
         * Playlist and Album artwork tapped event
         */
        fun playlistAndAlbumTabArtWorkEvent(song: Song?, track: Track?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (song != null) song.getTitle() else ""
            events.bucketName = ""
            events.bucketId = if (song != null) song.getBucketId() else ""
            events.contentId = if (track != null) Long.parseLong(String.valueOf(track.getContentId())) else 0
            events.positionWithBucket = ""
            events.source = if (song != null) song.getSource() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "playlist And Album Tab ArtworkTappedEvent : $events")
            return events
        }

        /**
         * podcastItems Artwork Tapped from tab
         */
        fun podcastItemsAlbumArtworkTappedEvent(song: Song?, podcastDetails: Podcast?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (song != null) song.getTitle() else ""
            events.bucketName = ""
            events.bucketId = if (song != null) song.getBucketId() else ""
            events.contentId = if (podcastDetails != null) Long.parseLong(String.valueOf(podcastDetails.getContentId())) else 0
            events.positionWithBucket = ""
            events.source = if (song != null) song.getSource() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "podcast Tab ArtworkTappedEvent : $events")
            return events
        }

        /**
         * Personal Playlist ArtWork
         */
        fun PersonalPlayListArtworkTappedEvent(song: Song?, track: UserPlaylistResponse.Tracks?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = ""
            events.bucketName = ""
            events.bucketId = if (song != null) song.getBucketId() else ""
            events.contentId = if (track != null) Long.parseLong(String.valueOf(track.getId())) else 0
            events.positionWithBucket = ""
            events.source = if (song != null) song.getSource() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "personal playlist ArtworkTappedEvent : $events")
            return events
        }

        /**
         * topCharts artwork tapped
         */
        fun topChartsArtWorkEvent(song: Song?, chartTrack: ChartTrack?, topCharts: Topcharts?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (topCharts != null) topCharts.getTitle() else ""
            events.bucketName = ""
            events.bucketId = if (song != null) song.getBucketId() else ""
            events.contentId = if (topCharts != null) Long.parseLong(String.valueOf(topCharts.getContent_id())) else 0
            events.positionWithBucket = ""
            events.source = if (topCharts != null) topCharts.getTitle() else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Top Charts ArtworkTappedEvent : $events")
            return events
        }

        /**
         * Artist bucket on ArtWork Tapped
         */
        fun musicArtistBucketArtworkTappedEvent(song: ArtistBucketSong?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (song != null) song.getTitle() else ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = if (song != null) Long.parseLong(String.valueOf(song.getContent_id())) else 0
            events.positionWithBucket = ""
            events.source = artWorkType
            events.sourceDetails = ""
            Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : $events")
            return events
        }

        /**
         * radio player on Artwork Tapped
         */
        fun radioPlayerArtWorkEvent(data: RadioModel.Response.Data?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = if (data != null) Utils.validateString(data.getContentTitle()) else ""
            events.bucketName = ""
            events.bucketId = ""
            events.contentId = if (data != null) Long.parseLong(data.getId()) else 0
            events.positionWithBucket = ""
            events.source = ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Radio Player ArtworkTappedEvent : $events")
            return events
        }

        /**
         * playlist AddToFavourite Event
         */
        fun playlistAddedToFavouriteEvent(playlist: Playlist?, category: String?, contentId: String?, typeId: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = category
            events.playlistName = if (playlist != null) playlist.getTitle() else ""
            events.contentType = if (playlist != null) playlist.getTitle() else ""
            events.genre = ""
            events.mood = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Long.parseLong(contentId))
            events.tab = ""
            events.source = typeId
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "playlist addedToFavouriteEvent : $events")
            return events
        }

        /**
         * top Charts AddToFavourites
         */
        fun topChartsAddedToFavouriteEvent(topCharts: Topcharts?, contentId: String?, typeId: String?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = if (topCharts != null) topCharts.getTitle() else ""
            events.contentType = typeId
            events.genre = ""
            events.mood = ""
            events.language = if (topCharts != null) Utils.validateString(topCharts.getLanguage()) else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Long.parseLong(contentId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "topCharts addedToFavouriteEvent : $events")
            return events
        }

        /**
         * podcast AddToFavourites
         */
        fun podCastAddedToFavouriteEvent(podcastDetails: Podcast?, contentId: String?, typeId: String?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = if (podcastDetails != null) podcastDetails.getTitle() else ""
            events.contentType = typeId
            events.genre = ""
            events.mood = ""
            events.language = if (podcastDetails != null) Utils.validateString(podcastDetails.getLanguage()) else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Long.parseLong(contentId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "podcast addedToFavouriteEvent : $events")
            return events
        }

        /**
         * Artist bucket AddToFavourites
         */
        fun artistAddedToFavouriteEvent(artistBucket: ArtistBucketResponse?, mArtistId: String?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
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
            events.contentId = Utils.validateLong(Long.parseLong(mArtistId))
            events.tab = ""
            events.source = ""
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : $events")
            return events
        }

        /**
         * album AddToFavourites
         */
        fun albumAddedToFavouriteEvent(albumDetails: AlbumDetail?, album: String?, contentId: String?, contentMetadata: ContentMetadata): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = contentMetadata.getContainerType()
            events.playlistName = ""
            events.contentType = if (albumDetails != null) albumDetails.getMusicalbum().getTitle() else ""
            events.genre = ""
            events.mood = ""
            events.language = if (albumDetails != null) albumDetails.getMusicalbum().getLanguage() else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = if (albumDetails != null) Utils.validateLong(albumDetails.getMusicalbum().getContentId()) else 0
            events.tab = ""
            events.source = album
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : $events")
            return events
        }

        /**
         * songQueue add to favourites
         */
        fun addedToFavouriteSongQueueEvent(contentMetadata: ContentMetadata?, songs: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = contentMetadata.getContainerType()
            events.playlistName = ""
            events.contentType = if (contentMetadata != null) contentMetadata.getContentTitle() else ""
            events.genre = ""
            events.mood = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = if (contentMetadata != null) Long.parseLong(contentMetadata.getContentId()) else 0
            events.tab = ""
            events.source = songs
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "addedToFavouriteEvent : $events")
            return events
        }

        /**
         * MyDownloads SongTab ArtWorkTapped
         */
        fun downloadSongArtWorkTappedEvent(song: Song?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.artWorkType = artWorkType
            events.contentName = ""
            events.bucketName = ""
            events.bucketId = if (song != null) Utils.validateString(song.getBucketId()) else ""
            events.contentId = if (song != null) Long.parseLong(String.valueOf(song.getSongId())) else 0
            events.positionWithBucket = ""
            events.source = if (song != null) Utils.validateString(song.getBucketId()) else ""
            events.sourceDetails = ""
            Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : $events")
            return events
        }

        fun artistListArtWorkTappedEvent(artistBucketSong: ArtistBucketSong?, artWorkType: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.category = artWorkType
            events.playlistName = if (artistBucketSong != null) artistBucketSong.getTitle() else ""
            events.contentType = ""
            events.genre = if (artistBucketSong != null) Utils.validateString(artistBucketSong.getGenre()) else ""
            events.mood = if (artistBucketSong != null) Utils.validateString(artistBucketSong.getGenre()) else ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.contentId = Utils.validateLong(Long.parseLong(artistBucketSong.getContent_id()))
            events.tab = ""
            events.source = artWorkType
            events.sourceDetails = ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "podcast addedToFavouriteEvent : $events")
            return events
        }

        /**
         * Music Download Events by PlaylistAndAlbumFragment
         */
        fun musicDownloadByPlaylistAndAlbumEvent(playlist: Playlist?, contentMetadata: ContentMetadata?, audioQualityPojo: AudioQualityPojo?, contentType: String?, offlineDLPojo: OfflineDLPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackTitle()) else ""
            events.contentId = if (offlineDLPojo.getTrackId() != null) Long.parseLong(offlineDLPojo.getTrackId()) else 0
            events.playlistName = if (playlist != null) Utils.validateString(playlist.getTitle()) else ""
            events.playlistId = if (playlist != null) playlist.getContentId() else 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = if (playlist != null) String.valueOf(playlist.getReleaseYear()) else ""
            events.tempo = ""
            events.singer = if (offlineDLPojo != null) offlineDLPojo.getTrackSubTitle() else ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            if (contentMetadata.getContainerType() == null) {
                events.contentType = "Audio"
            } else {
                events.contentType = contentMetadata.getContainerType()
            }
            events.albumId = if (contentMetadata != null) String.valueOf(contentMetadata.getAlbumId()) else ""
            events.albumName = if (contentMetadata != null) contentMetadata.getAlbumName() else ""
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
            Log.v("EVENTs data", "playlist downloadEvent : $events")
            return events
        }

        /**
         * topCharts for download
         */
        fun musicDownloadByTopChartsEvent(topCharts: Topcharts?, typeId: String?, audioQualityPojo: AudioQualityPojo?, chartTrack: ContentMetadata?, offlineDLPojo: OfflineDLPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackTitle()) else ""
            events.contentId = if (offlineDLPojo.getTrackId() != null) Long.parseLong(offlineDLPojo.getTrackId()) else 0
            events.playlistName = ""
            events.playlistId = 0L
            events.originalAlbumName = ""
            events.genre = ""
            events.language = if (topCharts != null) topCharts.getLanguage() else ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = if (offlineDLPojo.getTrackSubTitle() != null) Utils.validateString(offlineDLPojo.getTrackSubTitle()) else ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            events.contentType = typeId
            events.albumId = if (chartTrack != null) String.valueOf(chartTrack.getAlbumId()) else ""
            events.albumName = if (chartTrack != null) Utils.validateString(chartTrack.getAlbumName()) else ""
            events.tab = ""
            events.carousel_Position = ""
            events.contentPosition = ""
            events.shuffle = ""
            events.repeat = ""
            events.playBackSource = ""
            events.setpType("")
            events.setpId("")
            events.setpName("")
            events.size = if (topCharts != null) String.valueOf(topCharts.getTracks_count()) else ""
            events.coreTab = ""
            events.subTab = ""
            Log.v("EVENTs data", "music downloadEvent : $events")
            return events
        }

        /**
         * set download from Nowplaying screen
         */
        fun musicDownloadNowPlayingEvent(contentMetadata: ContentMetadata?, podcastDetails: Podcast?, audioQualityPojo: AudioQualityPojo?, typeIdSong: String?, offlineDLPojo: OfflineDLPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = Utils.validateString(typeIdSong)
            events.sourceDetails = ""
            events.contentName = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackTitle()) else ""
            events.contentId = if (offlineDLPojo.getTrackId() != null) Long.parseLong(offlineDLPojo.getTrackId()) else 0
            events.playlistName = ""
            events.playlistId = contentMetadata.getAlbumId()
            events.originalAlbumName = ""
            events.genre = ""
            events.language = contentMetadata.getLang()
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = if (offlineDLPojo != null) offlineDLPojo.getTrackSubTitle() else ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = if (audioQualityPojo != null) audioQualityPojo.getQualityTitle() else ""
            events.contentType = "Audio"
            events.albumId = if (contentMetadata != null) String.valueOf(contentMetadata.getAlbumId()) else ""
            events.albumName = if (contentMetadata != null) contentMetadata.getAlbumName() else ""
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
            Log.v("EVENTs data", "music downloadEvent : $events")
            return events
        }

        /**
         * download from album screen
         */
        fun musicDownloadAlbumEvent(albumDetails: AlbumDetail?, contentMetadata: ContentMetadata?, playlist: Playlist?, downloadQualityPojo: AudioQualityPojo?, contentType: String?, offlineDLPojo: OfflineDLPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackTitle()) else ""
            events.contentId = if (offlineDLPojo != null) Utils.validateLong(Long.valueOf(offlineDLPojo.getTrackId())) else 0
            events.playlistName = if (playlist != null) playlist.getTitle() else ""
            events.playlistId = if (playlist != null) playlist.getContentId() else 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = if (albumDetails != null) albumDetails.getMusicalbum().getLanguage() else ""
            events.yearOfRelease = if (albumDetails != null) String.valueOf(albumDetails.getMusicalbum().getReleaseYear()) else ""
            events.tempo = ""
            events.singer = if (contentMetadata != null) contentMetadata.getSingers() else ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = if (downloadQualityPojo != null) downloadQualityPojo.getQualityTitle() else ""
            events.contentType = "Audio"
            events.albumId = if (albumDetails != null) String.valueOf(albumDetails.getMusicalbum().getContentId()) else ""
            events.albumName = if (albumDetails != null) albumDetails.getMusicalbum().getTitle() else ""
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
            Log.v("EVENTs data", "album music downloadEvent : $events")
            return events
        }

        /**
         * download event for personal playlist frag.
         */
        fun musicDownloadByPersonalPlaylistEvent(userPlaylistTracks: UserPlaylistResponse.Tracks?, downloadQualityPojo: AudioQualityPojo?, typeIdPlaylist: String?, playlistID: String?, playlistTitle: String?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = Utils.validateString(typeIdPlaylist)
            events.sourceDetails = ""
            events.contentName = Utils.validateString(userPlaylistTracks.getName())
            events.contentId = if (userPlaylistTracks != null) Long.parseLong(userPlaylistTracks.getId()) else 0
            events.playlistName = playlistTitle
            events.playlistId = if (playlistID != null && !playlistID.isEmpty()) Long.parseLong(playlistID) else 0
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = ""
            events.actor = ""
            events.composer = ""
            events.lyricist = ""
            events.downloadQuality = if (downloadQualityPojo != null) downloadQualityPojo.getQualityTitle() else ""
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
            Log.v("EVENTs data", "album music downloadEvent : $events")
            return events
        }

        fun getMusicDownloadedEventValues(event: MusicEventAnalytics): HashMap<String, Object> {
            val values: HashMap<String, Object> = HashMap()
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
        fun musicDownloadReceiverEvent(mContentMetadata: ContentMetadata?, mSongDetail: SongDetail?, downloadQualityPojo: AudioQualityPojo?, downloadStatus: String, offlineDLPojo: OfflineDLPojo?): MusicEventAnalytics {
            val events = MusicEventAnalytics()
            events.source = ""
            events.sourceDetails = ""
            events.contentName = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackTitle()) else ""
            events.contentId = if (offlineDLPojo.getTrackId() != null) Long.parseLong(offlineDLPojo.getTrackId()) else 0
            events.playlistName = ""
            events.playlistId = 0L
            events.originalAlbumName = ""
            events.genre = ""
            events.language = ""
            events.yearOfRelease = ""
            events.tempo = ""
            events.singer = if (offlineDLPojo != null) Utils.validateString(offlineDLPojo.getTrackSubTitle()) else ""
            events.actor = ""
            events.composer = ""
            events.lyricist = if (mSongDetail != null) Utils.validateString(mSongDetail.getLyricist()) else ""
            events.downloadQuality = if (downloadQualityPojo != null) downloadQualityPojo.getQualityTitle() else ""
            events.contentType = "Audio"
            events.albumId = if (mSongDetail != null) "" + Utils.validateLong(mSongDetail.getAlbumId()) else ""
            events.albumName = if (mSongDetail != null) Utils.validateString(mSongDetail.getAlbumName()) else ""
            events.tab = if (mSongDetail != null) Utils.validateString(mSongDetail.getSongTags()) else ""
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
            Log.v("EVENTs data", "downloadStatus : $downloadStatus....$events")
            return events
        }
    }
}