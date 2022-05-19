

public class AnalyticsImpl {

    lateinit var instance: AnalyticsImpl
    lateinit var mPrefUtils: PrefUtils
    private var PREF_NAME: String = "MUSICEVENTS"

        static let instance by lazy { AnalyticsImpl() }
    func init(app: Application, amplitude_apikey: String, client_key: String){
        mPrefUtils = PrefUtils(app.applicationContext)
        AmplitudeAnalyticsImpl.instance.init(app, amplitude_apikey)
        ClevertapAnalyticsImpl.instance.init(app)
        Constant.CLIENT_KEY = client_key
    }

    func setSuperProperty(key: String?, value: String?) {
        if mPrefUtils == nil {
            return
        }
        var temp: Mutable[String?: String?] = mPrefUtils.loadMap(PREF_NAME)
        if temp == nil {
            temp = java.util.HashMap()
        }
        temp[key] = value
        mPrefUtils.saveMap(temp, PREF_NAME)
    }

    func removeSuperProperty(key: String) {
        if mPrefUtils == nil {
            return
        }
        let temp: Mutable[String: String] = mPrefUtils.loadMap(PREF_NAME)
            ?? return
        temp.remove(key)
        mPrefUtils.saveMap(temp, PREF_NAME)
    }

    func setClientKey(value: String){
        Constant.CLIENT_KEY = value
    }

    func setHungamaID(hungamaID: Any){
        ClevertapAnalyticsImpl.instance.createUserProperty(Property.HUNGAMA_ID, hungamaID)
        AmplitudeAnalyticsImpl.instance.createUserProperty(Property.HUNGAMA_ID, hungamaID)
        AmplitudeAnalyticsImpl.instance?.amplitudeInstance?.userId= hungamaID;
    }

    func setUserProperty(key: String, value: Any){
        ClevertapAnalyticsImpl.instance.createUserProperty(key, value)
        AmplitudeAnalyticsImpl.instance.createUserProperty(key, value)
    }

    func setLanguageProperty(value: String){
        setUserProperty(Property.APP_LANGUAGE, value.toList()?:"na")
        setSuperProperty(Property.CT_SUPER_PREFERRED_LANGUAGE, value)
    }

    func incrementUserProperty(key: String, value: Int32){
        AmplitudeAnalyticsImpl.instance.incrementUserProperty(key, value)
    }

    func updateIncrementUserProperty(propertyName:String, value: Int32){
        AmplitudeAnalyticsImpl.instance.updateIncrementUserProperty(propertyName, value)
    }

    func musicLaunched(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.MOBILE)?.let { properties.put(Property.MOBILE, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.PACK_START_DATE)?.let { properties.put(Property.PACK_START_DATE, $0) }
        values.get(Property.VALIDITY_REMAINING)?.let { properties.put(Property.VALIDITY_REMAINING, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LAUNCHED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.PACK_START_DATE, values.get(Property.PACK_START_DATE))
            try jsonValues.put(Property.VALIDITY_REMAINING, values.get(Property.VALIDITY_REMAINING))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_EXPOSURE, jsonValues)
    }

    func musicClicked(){
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_CLICK)
    }

    func musicLanguageSelected(values: Hash[String: Any]){
        var properties = [String: Any]()
        values.get(Property.OLD_LANGUAGE)?.let { properties.put(Property.OLD_LANGUAGE, $0) }
        values.get(Property.NEW_LANGUAGE)?.let { properties.put(Property.NEW_LANGUAGE, $0) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_LANGUAGE_SELECTED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.OLD_LANGUAGE, values.get(Property.OLD_LANGUAGE).toList()?:"na")
            try jsonValues.put(Property.NEW_LANGUAGE, values.get(Property.NEW_LANGUAGE).toList()?:"na")
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_LANGUAGE_SELECTED, jsonValues)
    }

    func musicStarted(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, $0) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, $0) }
        values.get(Property.LAST_SOURCE)?.let { properties.put(Property.LAST_SOURCE, $0) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, $0) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, $0) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, $0) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, $0) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, $0) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, $0) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, $0) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, $0) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, $0) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, $0) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, $0) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, $0) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, $0) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, $0) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, $0) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_STARTED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            try jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            try jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            try jsonValues.put(Property.CONNECTION_TYPE, values.get(Property.CONNECTION_TYPE))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            try jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.MOOD, values.get(Property.MOOD).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            try jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            try jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.RATING, values.get(Property.RATING))
            try jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            try jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            try jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            try jsonValues.put(Property.KEYWORDS, values.get(Property.KEYWORDS))
            try jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            try jsonValues.put(Property.PID, values.get(Property.PID))
            try jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            try jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            try jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            try jsonValues.put(Property.SONG_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM_START, jsonValues)
    }

    func musicStopped(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, $0) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, $0) }
        values.get(Property.LAST_SOURCE)?.let { properties.put(Property.LAST_SOURCE, $0) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, $0) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, $0) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, $0) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, $0) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, $0) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, $0) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, $0) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, $0) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, $0) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, $0) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, $0) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, $0) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, $0) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, $0) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, $0) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, $0) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, $0) }
        values.get(Property.DURATION_BG)?.let { properties.put(Property.DURATION_BG, $0) }
        values.get(Property.DURATION_FG)?.let { properties.put(Property.DURATION_FG, $0) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_STOPPED, properties)

        stream(values)

        values.put(Property.CLIENT_KEY, Constant.CLIENT_KEY)
        var mouUpdateAPI = MouUpdate()
        mouUpdateAPI.update(values)

    }

    func musicDetailsViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, $0) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, $0) }
        values.get(Property.DEVICE_BRAND)?.let { properties.put(Property.DEVICE_BRAND, $0) }
        values.get(Property.DEVICE_MODEL)?.let { properties.put(Property.DEVICE_MODEL, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DETAILS_VIEWED, properties)
    }

    func musicFailed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, $0) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, $0) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, $0) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, $0) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, $0) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, $0) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, $0) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, $0) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, $0) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, $0) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, $0) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, $0) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, $0) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, $0) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, $0) }
        values.get(Property.ERROR_TYPE)?.let { properties.put(Property.ERROR_TYPE, $0) }
        values.get(Property.P_CODE)?.let { properties.put(Property.P_CODE, $0) }
        values.get(Property.S_CODE)?.let { properties.put(Property.S_CODE, $0) }
        values.get(Property.SOURCE_PAGE)?.let { properties.put(Property.SOURCE_PAGE, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_FAILED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.MOOD, values.get(Property.MOOD).toList()?:"na")
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            try jsonValues.put(Property.CONSUMPTION_TYPE, values.get(Property.CONSUMPTION_TYPE))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.DURATION, values.get(Property.DURATION))
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            try jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            try jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            try jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            try jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            try jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            try jsonValues.put(Property.RATING, values.get(Property.RATING))
            try jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            try jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            try jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            try jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            try jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            try jsonValues.put(Property.PID, values.get(Property.PID))
            try jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            try jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            try jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            try jsonValues.put(Property.DURATION_CONSUMED, values.get(Property.DURATION_CONSUMED))
            try jsonValues.put(Property.PERCENTAGE_COMPLETION, values.get(Property.PERCENTAGE_COMPLETION))
            try jsonValues.put(Property.ERROR_TYPE, values.get(Property.ERROR_TYPE))
            try jsonValues.put(Property.P_CODE, values.get(Property.P_CODE))
            try jsonValues.put(Property.S_CODE, values.get(Property.S_CODE))
            try jsonValues.put(Property.SOURCE_PAGE, values.get(Property.SOURCE_PAGE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM_FAILED, jsonValues)
    }


    func addedDeletedFromPlaylist(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_ADD_DELETE_FROM_PLAYLIST, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.MOOD, values.get(Property.MOOD).toList()?:"na")
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
        } catch {
            e.printStackTrace()
        }


        if(values.get(Property.ACTION) == "Add"){
            values.put(Property.ACTION,"added")
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_ADDED_TO_PLAYLIST, jsonValues)
        } else {
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_REMOVE_FROM_PLAYLIST, jsonValues)
        }
    }

    func musicClearRecentSearch(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.CLEAR_ALL_CLICKED)?.let { properties.put(Property.CLEAR_ALL_CLICKED, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CLEAR_RECENT_SEARCH, properties)
    }

    func musicRechargePopup(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, $0) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, $0) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_RECHARGE_POPUP, properties)
    }

    func musicSubcriptionPackChange(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.OLD_PACK)?.let { properties.put(Property.OLD_PACK, $0) }
        values.get(Property.NEW_PACK)?.let { properties.put(Property.NEW_PACK, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIPTION_PACK_CHANGED, properties)
    }

    func musicExitEvent(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.EXIT_TYPE)?.let { properties.put(Property.EXIT_TYPE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_EXIT_EVENT, properties)
    }

    func musicLiveEventsBooking(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, $0) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, $0) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, $0) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, $0) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, $0) }
        values.get(Property.SUBSCRIPTION_PAGE_ACTION)?.let { properties.put(Property.SUBSCRIPTION_PAGE_ACTION, $0) }
        values.get(Property.PAYMENT_MODE_SELECTED)?.let { properties.put(Property.PAYMENT_MODE_SELECTED, $0) }
        values.get(Property.TICKET_CONFIRMATION_PAGE_APPEARS)?.let { properties.put(Property.TICKET_CONFIRMATION_PAGE_APPEARS, $0) }
        values.get(Property.TICKET_CONFIRMATION_PAGE_ACTION)?.let { properties.put(Property.TICKET_CONFIRMATION_PAGE_ACTION, $0) }
        values.get(Property.DOWNLOAD_RECEIPT_POPUP_APPEARS)?.let { properties.put(Property.DOWNLOAD_RECEIPT_POPUP_APPEARS, $0) }
        values.get(Property.DOWNLOAD_RECEIPT_POPUP_ACTION)?.let { properties.put(Property.DOWNLOAD_RECEIPT_POPUP_ACTION, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LIVE_EVENTS_BOOKING, properties)
    }

    func musicDownload(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, $0) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, $0) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.CORE_TAB)?.let { properties.put(Property.CORE_TAB, $0) }
        values.get(Property.SUB_TAB)?.let { properties.put(Property.SUB_TAB, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD, properties)

        musicOfflined(values)

        var category: String? =values.get(Property.CATEGORY)!=nil ? values.get(Property.CATEGORY) : nil
        if(category?.isNotEmpty() == true) {
            category = category.lowercase()
            if category == "song"||category == "songs" {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_SONGS, 1)
            } else if category == "album"||category == "albums" {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_ALBUMS, 1)
            }else if category == "video"||category == "videos" {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_VIDEOS, 1)
            }else if category == "playlist"||category == "playlists" {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_PLAYLISTS, 1)
            }
        }

    }

    func musicRegistrationCompleted(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.EMAIL)?.let { properties.put(Property.EMAIL, $0) }
        values.get(Property.FIRST_TIME)?.let { properties.put(Property.FIRST_TIME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_REGISTRATION_COMPLETED, properties)
    }

    func musicFavourited(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_FAVOURITED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.MOOD, values.get(Property.MOOD).toList()?:"na")
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.NAME, values.get(Property.NAME))

        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MYMUSIC_FAVOURITED, jsonValues)

        var category: String? =values.get(Property.CATEGORY)!=nil ? values.get(Property.CATEGORY) : nil
        if(category?.isNotEmpty() == true) {
            category = category.lowercase()
            if category == "song"||category == "songs" {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_SONGS, 1)
            } else if category == "album"||category == "albums" {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_ALBUMS, 1)
            }else if category == "video"||category == "videos" {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_VIDEOS, 1)
            }else if category == "playlist"||category == "playlists" {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_PLAYLISTS, 1)
            }else if category == "artist"||category == "artists" {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_ARTISTS, 1)
            }
        }
    }

    func createdDeletedPlayList(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.NO_OF_CONTENTS)?.let { properties.put(Property.NO_OF_CONTENTS, $0) }
        values.get(Property.PLAYLIST_DURATION)?.let { properties.put(Property.PLAYLIST_DURATION, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_CREATED_DELETED_PLAYLIST, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.NO_OF_CONTENTS, values.get(Property.NO_OF_CONTENTS))
            try jsonValues.put(Property.PLAYLIST_DURATION, values.get(Property.PLAYLIST_DURATION))
        } catch {
            e.printStackTrace()
        }


        if(values.get(Property.ACTION) == "Created"){
            values.put(Property.ACTION,"created")
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_CREATE_NEW_PLAYLIST, jsonValues)
            incrementUserProperty(Property.NUMBER_OF_USER_PLAYLISTS, 1)
        } else {
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_REMOVE_PLAYLIST, jsonValues)
        }

    }

    func musicSearched(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.SEARCH_TYPE)?.let { properties.put(Property.SEARCH_TYPE, $0) }
        values.get(Property.CONTENT_CLICKED)?.let { properties.put(Property.CONTENT_CLICKED, $0) }
        values.get(Property.CLICKED_CONTENT_POSITION)?.let { properties.put(Property.CLICKED_CONTENT_POSITION, $0) }
        values.get(Property.NO_RESULT)?.let { properties.put(Property.NO_RESULT, $0) }
        values.get(Property.RECENT_SEARCH_CONTENT_NAME)?.let { properties.put(Property.RECENT_SEARCH_CONTENT_NAME, $0) }
        values.get(Property.KEYWORD)?.let { properties.put(Property.KEYWORD, $0) }
        values.get(Property.VIDEOS_RAIL_CLICKED)?.let { properties.put(Property.VIDEOS_RAIL_CLICKED, $0) }
        values.get(Property.VIDEOS_RAIL_CONTENT_POSITION)?.let { properties.put(Property.VIDEOS_RAIL_CONTENT_POSITION, $0) }
        values.get(Property.VIDEOS_RAIL_POSITION)?.let { properties.put(Property.VIDEOS_RAIL_POSITION, $0) }
        values.get(Property.VIDEOS_RAIL_CONTENT_NAME)?.let { properties.put(Property.VIDEOS_RAIL_CONTENT_NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SEARCHED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.SEARCH_TYPE, values.get(Property.SEARCH_TYPE))
            try jsonValues.put(Property.CONTENT_CLICKED, values.get(Property.CONTENT_CLICKED))
            try jsonValues.put(Property.CLICKED_CONTENT_POSITION, values.get(Property.CLICKED_CONTENT_POSITION))
            try jsonValues.put(Property.NO_RESULT, values.get(Property.NO_RESULT))
            try jsonValues.put(Property.RECENT_SEARCH_CONTENT_NAME, values.get(Property.RECENT_SEARCH_CONTENT_NAME))
            try jsonValues.put(Property.KEYWORD, values.get(Property.KEYWORD))
            try jsonValues.put(Property.VIDEOS_RAIL_CLICKED, values.get(Property.VIDEOS_RAIL_CLICKED))
            try jsonValues.put(Property.VIDEOS_RAIL_CONTENT_POSITION, values.get(Property.VIDEOS_RAIL_CONTENT_POSITION))
            try jsonValues.put(Property.VIDEOS_RAIL_POSITION, values.get(Property.VIDEOS_RAIL_POSITION))
            try jsonValues.put(Property.VIDEOS_RAIL_CONTENT_NAME, values.get(Property.VIDEOS_RAIL_CONTENT_NAME))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_SEARCH_TAB_CLICKED, jsonValues)
    }

    func musicClicked(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.START_POINT)?.let { properties.put(Property.START_POINT, $0) }
        values.get(Property.BUTTON_LABEL)?.let { properties.put(Property.BUTTON_LABEL, $0) }
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CLICKED, properties)
    }

    func musicTabViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.VIEW_TYPE)?.let { properties.put(Property.VIEW_TYPE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_TAB_VIEWED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.VIEW_TYPE, values.get(Property.VIEW_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_TAB, jsonValues)
    }

    func musicMoodSelector(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, $0) }
        values.get(Property.NO_OF_SELECTIONS)?.let { properties.put(Property.NO_OF_SELECTIONS, $0) }
        values.get(Property.SELECTIONS)?.let { properties.put(Property.SELECTIONS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_MOOD_SELECTOR, properties)
    }

    func musicPromotionalPlaylist(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.ACTION_TYPE)?.let { properties.put(Property.ACTION_TYPE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PROMOTIONAL_PLAYLIST, properties)
    }

    func musicMenu(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.MENU_CATEGORY)?.let { properties.put(Property.MENU_CATEGORY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_MENU, properties)
    }

    func callertunesSubscription(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.PLAN_SELECTED)?.let { properties.put(Property.PLAN_SELECTED, $0) }
        values.get(Property.PLAN_PRICE)?.let { properties.put(Property.PLAN_PRICE, $0) }
        values.get(Property.SUCCESSFUL_SUCCESS_PAGE_ACTION)?.let { properties.put(Property.SUCCESSFUL_SUCCESS_PAGE_ACTION, $0) }
        values.get(Property.SUCCESSFUL_SUCCESS_PAGE_APPEARED)?.let { properties.put(Property.SUCCESSFUL_SUCCESS_PAGE_APPEARED, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_CALLERTUNES_SUBSCRIPTION, properties)
    }

    func setCallertunes(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, $0) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, $0) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_SET_CALLERTUNES, properties)
    }

    func musicCategoryViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.PLANS_OFFERS)?.let { properties.put(Property.PLANS_OFFERS, $0) }
        values.get(Property.MY_MUSIC)?.let { properties.put(Property.MY_MUSIC, $0) }
        values.get(Property.SETTINGS)?.let { properties.put(Property.SETTINGS, $0) }
        values.get(Property.HELP)?.let { properties.put(Property.HELP, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CATEGORY_VIEWED, properties)
    }

    func musicPlaybackSettings(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.PLAYBACK_QUALITY)?.let { properties.put(Property.PLAYBACK_QUALITY, $0) }
        values.get(Property.AUTO_PLAY_AUDIO)?.let { properties.put(Property.AUTO_PLAY_AUDIO, $0) }
        values.get(Property.AUTO_PLAY_VIDEO)?.let { properties.put(Property.AUTO_PLAY_VIDEO, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAYBACK_SETTINGS, properties)
    }

    func musicDownloadPreferences(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.MEMORY_ALLOCATION)?.let { properties.put(Property.MEMORY_ALLOCATION, $0) }
        values.get(Property.ONLY_ON_WIFI)?.let { properties.put(Property.ONLY_ON_WIFI, $0) }
        values.get(Property.DOWNLOAD_SETTINGS)?.let { properties.put(Property.DOWNLOAD_SETTINGS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD_PREFERENCES, properties)
    }

    func musicDownloadSettings(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.MUSIC_DOWNLOAD_QUALITY)?.let { properties.put(Property.MUSIC_DOWNLOAD_QUALITY, $0) }
        values.get(Property.VIDEO_DOWNLOAD_QUALITY)?.let { properties.put(Property.VIDEO_DOWNLOAD_QUALITY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD_SETTINGS, properties)
    }

    func myMusic(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.NO_OF_SONGS)?.let { properties.put(Property.NO_OF_SONGS, $0) }
        values.get(Property.TOTAL_SONGS_DURATION)?.let { properties.put(Property.TOTAL_SONGS_DURATION, $0) }
        values.get(Property.NO_OF_ARTISTS)?.let { properties.put(Property.NO_OF_ARTISTS, $0) }
        values.get(Property.NO_OF_PLAYLISTS)?.let { properties.put(Property.NO_OF_PLAYLISTS, $0) }
        values.get(Property.NO_OF_VIDEOS)?.let { properties.put(Property.NO_OF_VIDEOS, $0) }
        values.get(Property.TOTAL_VIDEOS_DURATION)?.let { properties.put(Property.TOTAL_VIDEOS_DURATION, $0) }
        values.get(Property.NO_OF_PODCASTS)?.let { properties.put(Property.NO_OF_PODCASTS, $0) }
        values.get(Property.NO_OF_ALBUMS)?.let { properties.put(Property.NO_OF_ALBUMS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MY_MUSIC, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.NO_OF_SONGS, values.get(Property.NO_OF_SONGS))
            try jsonValues.put(Property.TOTAL_SONGS_DURATION, values.get(Property.TOTAL_SONGS_DURATION))
            try jsonValues.put(Property.NO_OF_ARTISTS, values.get(Property.NO_OF_ARTISTS))
            try jsonValues.put(Property.NO_OF_PLAYLISTS, values.get(Property.NO_OF_PLAYLISTS))
            try jsonValues.put(Property.NO_OF_VIDEOS, values.get(Property.NO_OF_VIDEOS))
            try jsonValues.put(Property.TOTAL_VIDEOS_DURATION, values.get(Property.TOTAL_VIDEOS_DURATION))
            try jsonValues.put(Property.NO_OF_PODCASTS, values.get(Property.NO_OF_PODCASTS))
            try jsonValues.put(Property.NO_OF_ALBUMS, values.get(Property.NO_OF_ALBUMS))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MY_MUSIC, jsonValues)
    }

    func musicSubscriptionBannerClicked(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.BANNER_TYPE)?.let { properties.put(Property.BANNER_TYPE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIPTION_BANNER_CLICKED, properties)
    }

    func musicRefeat(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, $0) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, $0) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_REPEAT, properties)
    }

    func musicShuffle(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_ID, $0) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, $0) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, $0) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, $0) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, $0) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, $0) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, $0) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, $0) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, $0) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SHUFFLE, properties)
    }

    func musicLiveEvents(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, $0) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, $0) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, $0) }
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, $0) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, $0) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.EVENT_CATEGORY)?.let { properties.put(Property.EVENT_CATEGORY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LIVE_EVENTS, properties)
    }

    func musicTicketDetailsViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_TICKET_DETAILS_VIEWED, properties)
    }

    func musicEventBookingCancellation(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, $0) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, $0) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, $0) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, $0) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_ACTION)?.let { properties.put(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_ACTION, $0) }
        values.get(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_APPEARS)?.let { properties.put(
            Property.CANCEL_BOOKING_CONFIRMATION_POPUP_APPEARS, it) }
        values.get(Property.EVENT_CLICKED_NAME)?.let { properties.put(Property.EVENT_CLICKED_NAME, $0) }
        values.get(Property.CANCEL_BOOKING_POPUP_APPEARS)?.let { properties.put(Property.CANCEL_BOOKING_POPUP_APPEARS, $0) }
        values.get(Property.CANCEL_BOOKING_POPUP_ACTION)?.let { properties.put(Property.CANCEL_BOOKING_POPUP_ACTION, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_EVENT_BOOKING_CANCELLATION, properties)
    }

    func musicSessionStart(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.EVENT_TIME_STAMP)?.let { properties.put(Property.EVENT_TIME_STAMP, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SESSION_START, properties)
    }

    func musicSessionEnd(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.EVENT_TIME_STAMP)?.let { properties.put(Property.EVENT_TIME_STAMP, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SESSION_END, properties)
    }

    func musicPlayerActions(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, $0) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAYER_ACTIONS, properties)

        if(values.get(Property.ACTION) == PlayerEvent.PLAY && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerPlay(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.PAUSE && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerPause(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.SKIP_BACKWARD && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerSkipBackward(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.SKIP_FORWARD && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerSkipForward(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.BACK_ARROW && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerBackTapped(values)
        } else if((values.get(Property.ACTION) == PlayerEvent.UNLOCKED || values.get(Property.ACTION) == PlayerEvent.LOCKED) && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerLockTapped(values)
        } else if((values.get(Property.ACTION) == PlayerEvent.MUTE || values.get(Property.ACTION) == PlayerEvent.UNMUTE) && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerMuteButton(values)
        } else if((values.get(Property.ACTION) == PlayerEvent.BRIGHTNESS_HIGH || values.get(Property.ACTION) == PlayerEvent.BRIGHTNESS_LOW) && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            videoPlayerBrightness(values)
        }else if((values.get(Property.ACTION) == PlayerEvent.VOLUME_DOWN || values.get(Property.ACTION) == PlayerEvent.VOLUME_UP) && (values.get(Property.CATEGORY) == StreamType.VIDEO || values.get(Property.CONTENT_TYPE) == StreamType.VIDEO)){
            audioPlayerAudioAction(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.PLAY){
            audioPlayerPlay(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.PAUSE){
            audioPlayerPause(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.SKIP_BACKWARD){
            audioPlayerSkipBackward(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.SKIP_FORWARD){
            audioPlayerSkipForward(values)
        } else if(values.get(Property.ACTION) == PlayerEvent.BACK_ARROW){
            audioPlayerBackTapped(values)
        }
    }

    func musicArtworkTapped(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.ARTWORK_TYPE)?.let { properties.put(Property.ARTWORK_TYPE, $0) }
        values.get(Property.TOP_NAV_NAME)?.let { properties.put(Property.TOP_NAV_NAME, $0) }
        values.get(Property.FILTER_SELECTED)?.let { properties.put(Property.FILTER_SELECTED, $0) }
        values.get(Property.TOP_NAV_POSITION)?.let { properties.put(Property.TOP_NAV_POSITION, $0) }
        values.get(Property.BUCKET_TYPE)?.let { properties.put(Property.BUCKET_TYPE, $0) }
        values.get(Property.BUCKET_NAME)?.let { properties.put(Property.BUCKET_NAME, $0) }
        values.get(Property.BUCKET_POSITION)?.let { properties.put(Property.BUCKET_POSITION, $0) }
        values.get(Property.PROGRAMMING_TYPE)?.let { properties.put(Property.PROGRAMMING_TYPE, $0) }
        values.get(Property.BUCKET_ID)?.let { properties.put(Property.BUCKET_ID, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.ARTIST_NAME)?.let { properties.put(Property.ARTIST_NAME, $0) }
        values.get(Property.POSITION_WITHIN_BUCKET)?.let { properties.put(Property.POSITION_WITHIN_BUCKET, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_ARTWORK_TAPPED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.ARTWORK_TYPE, values.get(Property.ARTWORK_TYPE))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.TOP_NAV_NAME, values.get(Property.TOP_NAV_NAME))
            try jsonValues.put(Property.FILTER_SELECTED, values.get(Property.FILTER_SELECTED))
            try jsonValues.put(Property.TOP_NAV_POSITION, values.get(Property.TOP_NAV_POSITION))
            try jsonValues.put(Property.BUCKET_TYPE, values.get(Property.BUCKET_TYPE))
            try jsonValues.put(Property.BUCKET_POSITION, values.get(Property.BUCKET_POSITION))
            try jsonValues.put(Property.PROGRAMMING_TYPE, values.get(Property.PROGRAMMING_TYPE))
            try jsonValues.put(Property.BUCKET_ID, values.get(Property.BUCKET_ID))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.ARTIST_NAME, values.get(Property.ARTIST_NAME))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.POSITION_WITHIN_BUCKET, values.get(Property.POSITION_WITHIN_BUCKET))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_ARTWORK_TAPPED, jsonValues)

    }

    func musicWelcomePopup(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, $0) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, $0) }
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WELCOME_POPUP, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.TYPE, values.get(Property.TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            try jsonValues.put(Property.SEQUENCE, values.get(Property.SEQUENCE))
            try jsonValues.put(Property.POPUP_APPEARED, values.get(Property.POPUP_APPEARED))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_WELCOME_SCREEN_POPUP, jsonValues)
    }

    func musicSubscribed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SUBSCRIBED_PACK_NAME)?.let { properties.put(Property.SUBSCRIBED_PACK_NAME, $0) }
        values.get(Property.PACK_PRICE)?.let { properties.put(Property.PACK_PRICE, $0) }
        values.get(Property.PACK_VALIDITY)?.let { properties.put(Property.PACK_VALIDITY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIBED, properties)
    }

    func musicWebViewPerformance(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ERROR_CODE)?.let { properties.put(Property.ERROR_CODE, $0) }
        values.get(Property.LOAD_TIME)?.let { properties.put(Property.LOAD_TIME, $0) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, $0) }
        values.get(Property.NETWORK_TYPE)?.let { properties.put(Property.NETWORK_TYPE, $0) }
        values.get(Property.RESPONSE_CODE)?.let { properties.put(Property.RESPONSE_CODE, $0) }
        values.get(Property.RESPONSE_TIME)?.let { properties.put(Property.RESPONSE_TIME, $0) }
        values.get(Property.URL)?.let { properties.put(Property.URL, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WEB_VIEW_PERFORMANCE, properties)
    }

    func musicPaymentGateway(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, $0) }
        values.get(Property.PID)?.let { properties.put(Property.PID, $0) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, $0) }
        values.get(Property.AMOUNT)?.let { properties.put(Property.AMOUNT, $0) }
        values.get(Property.CONTENT_GENRE)?.let { properties.put(Property.CONTENT_GENRE, $0) }
        values.get(Property.BUTTON_CLICKED)?.let { properties.put(Property.BUTTON_CLICKED, $0) }
        values.get(Property.RENT_POPUP_ACTION)?.let { properties.put(Property.RENT_POPUP_ACTION, $0) }
        values.get(Property.RENT_POPUP_APPEARED)?.let { properties.put(Property.RENT_POPUP_APPEARED, $0) }
        values.get(Property.PAYMENT_GATEWAY_PAGE_APPEARED)?.let { properties.put(Property.PAYMENT_GATEWAY_PAGE_APPEARED, $0) }
        values.get(Property.PAYMENT_GATEWAY_PAGE_ACTION)?.let { properties.put(Property.PAYMENT_GATEWAY_PAGE_ACTION, $0) }
        values.get(Property.PAYMENT_SUCCESS_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_SUCCESS_SCREEN_ACTION, $0) }
        values.get(Property.PAYMENT_SUCCESS_SCREEN_APPEARED)?.let { properties.put(Property.PAYMENT_SUCCESS_SCREEN_APPEARED, $0) }
        values.get(Property.PAYMENT_CONFIRMATION_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_CONFIRMATION_SCREEN_ACTION, $0) }
        values.get(Property.PAYMENT_CONFIRMATION_SCREEN_APPEARS)?.let { properties.put(Property.PAYMENT_CONFIRMATION_SCREEN_APPEARS, $0) }
        values.get(Property.PAYMENT_FAILED_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_FAILED_SCREEN_ACTION, $0) }
        values.get(Property.PAYMENT_FAILED_SCREEN_APPEARS)?.let { properties.put(Property.PAYMENT_FAILED_SCREEN_APPEARS, $0) }
        values.get(Property.CUSTOMER_TYPE)?.let { properties.put(Property.CUSTOMER_TYPE, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PAYMENT_GATEWAY, properties)
    }

    func musicAutoCompleteResults(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, $0) }
        values.get(Property.QUERY)?.let { properties.put(Property.QUERY, $0) }
        values.get(Property.SUGGESTION_COUNT)?.let { properties.put(Property.SUGGESTION_COUNT, $0) }
        values.get(Property.RESULT_TITLE)?.let { properties.put(Property.RESULT_TITLE, $0) }
        values.get(Property.NO_OF_API_CALLS)?.let { properties.put(Property.NO_OF_API_CALLS, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_AUTOCOMPLETE_RESULTS, properties)
    }

    func musicPlayerQualitySelected(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, $0) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAYER_QUALITY_SELECTED, properties)
    }

    func musicPlayAllClicked(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, $0) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, $0) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, $0) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, $0) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, $0) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, $0) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, $0) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, $0) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, $0) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, $0) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, $0) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, $0) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAY_ALL_CLICKED, properties)
    }

    func musicHomePageScroll(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TAB)?.let { properties.put(Property.TAB, $0) }
        values.get(Property.LAST_VISIBLE_ROW_POSITION)?.let { properties.put(Property.LAST_VISIBLE_ROW_POSITION, $0) }
        values.get(Property.SCREEN_NAME)?.let { properties.put(Property.SCREEN_NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_HOME_PAGE_SCROLL, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.LAST_VISIBLE_ROW_POSITION, values.get(Property.LAST_VISIBLE_ROW_POSITION))
            try jsonValues.put(Property.SCREEN_NAME, values.get(Property.SCREEN_NAME))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_SCROLL, jsonValues)

    }

    func musicBucketSwiped(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, $0) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, $0) }
        values.get(Property.BUCKET_ID)?.let { properties.put(Property.BUCKET_ID, $0) }
        values.get(Property.BUCKET_NAME)?.let { properties.put(Property.BUCKET_NAME, $0) }
        values.get(Property.SCREEN_NAME)?.let { properties.put(Property.SCREEN_NAME, $0) }
        values.get(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET)?.let { properties.put(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET, $0) }
        values.get(Property.BUCKET_SWIPED)?.let { properties.put(Property.BUCKET_SWIPED, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_BUCKET_SWIPED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.BUCKET_ID, values.get(Property.BUCKET_ID))
            try jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            try jsonValues.put(Property.SCREEN_NAME, values.get(Property.SCREEN_NAME))
            try jsonValues.put(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET, values.get(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET))
            try jsonValues.put(Property.BUCKET_SWIPED, values.get(Property.BUCKET_SWIPED))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_BUCKET_SWIPED, jsonValues)

    }

    func homeBackClicked(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_BACK_CLICKED, jsonValues)
    }

    private func stream(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            try jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            try jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            try jsonValues.put(Property.CONNECTION_TYPE, values.get(Property.CONNECTION_TYPE))
            try jsonValues.put(Property.CONSUMPTION_TYPE, values.get(Property.CONSUMPTION_TYPE))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.DURATION, values.get(Property.DURATION))
            try jsonValues.put(Property.DURATION_FG, values.get(Property.DURATION_FG))
            try jsonValues.put(Property.DURATION_BG, values.get(Property.DURATION_BG))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            try jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.MOOD, values.get(Property.MOOD).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            try jsonValues.put(Property.PERCENTAGE_COMPLETION, values.get(Property.PERCENTAGE_COMPLETION))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            try jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            try jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.RATING, values.get(Property.RATING))
            try jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            try jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            try jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            try jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            try jsonValues.put(Property.KEYWORDS, values.get(Property.KEYWORDS))
            try jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            try jsonValues.put(Property.PID, values.get(Property.PID))
            try jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            try jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            try jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            try jsonValues.put(Property.SONG_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM, jsonValues)
    }


    func musicOfflined(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            try jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            try jsonValues.put(Property.PLAYLIST_ID, values.get(Property.PLAYLIST_ID))
            try jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            try jsonValues.put(Property.GENRE, values.get(Property.GENRE).toList()?:"na")
            try jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            try jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            try jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            try jsonValues.put(Property.SINGER, values.get(Property.SINGER).toList()?:"na")
            try jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toList()?:"na")
            try jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toList()?:"na")
            try jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toList()?:"na")
            try jsonValues.put(Property.DOWNLOAD_QUALITY, values.get(Property.DOWNLOAD_QUALITY))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.ALBUM_ID, values.get(Property.ALBUM_ID))
            try jsonValues.put(Property.ALBUM_NAME, values.get(Property.ALBUM_NAME))
            try jsonValues.put(Property.TAB, values.get(Property.TAB))
            try jsonValues.put(Property.CAROUSEL_POSITION, values.get(Property.CAROUSEL_POSITION))
            try jsonValues.put(Property.CONTENT_POSITION, values.get(Property.CONTENT_POSITION))
            try jsonValues.put(Property.SHUFFLE, values.get(Property.SHUFFLE))
            try jsonValues.put(Property.REPEAT, values.get(Property.REPEAT))
            try jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            try jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_OFFLINED, jsonValues)
    }

    private func videoPlayerPause(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_PAUSE, jsonValues)
    }

    private func videoPlayerPlay(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_PLAY, jsonValues)
    }

    private func videoPlayerSkipForward(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_SKIP_FORWARD, jsonValues)
    }

    private func videoPlayerSkipBackward(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_SKIP_BACKWARD, jsonValues)
    }

    private func videoPlayerSkipAction(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_AUDIO_ACTION, jsonValues)
    }

    private func videoPlayerBrightness(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_BRIGHTNESS_ACTION, jsonValues)
    }

    func bucketViewAllClicked(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
        } catch {
            e.printStackTrace()
        }
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_BUCKET_CLICKED, jsonValues)

    }

    func videoPlayerVideoQualitySelected(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.STREAM_QUALITY_SELECTED, values.get(Property.STREAM_QUALITY_SELECTED))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_VIDEO_QUALITY_SELECTED, jsonValues)
    }

    private func videoPlayerLockTapped(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_LOCK_TAPPED, jsonValues)
    }

    private func videoPlayerMuteButton(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            try jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            try jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            try jsonValues.put(Property.FROM_BUCKET, values.get(Property.FROM_BUCKET))
            try jsonValues.put(Property.LAST_VISIBLE_ROW_POSITION, values.get(Property.LAST_VISIBLE_ROW_POSITION))
            try jsonValues.put(Property.LISTING_SCREEN_NAME, values.get(Property.LISTING_SCREEN_NAME))
            try jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            try jsonValues.put(Property.TO_BUCKET, values.get(Property.TO_BUCKET))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_MUTE_BUTTON, jsonValues)
    }

    private func videoPlayerBackTapped(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_BACK_TAPPED, jsonValues)
    }

    private func audioPlayerPause(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_PAUSE, jsonValues)
    }

    private func audioPlayerPlay(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_PLAY, jsonValues)
    }

    private func audioPlayerSkipForward(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_SKIP_FORWARD, jsonValues)
    }

    private func audioPlayerSkipBackward(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_SKIP_BACKWARD, jsonValues)
    }

    func audioPlayerAudioAction(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_AUDIO_ACTION, jsonValues)
    }

    func audioPlayerQualitySelected(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.STREAM_QUALITY_SELECTED, values.get(Property.STREAM_QUALITY_SELECTED))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_QUALITY_SELECTED, jsonValues)
    }

    private func audioPlayerBackTapped(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            try jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            try jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_BACK_TAPPED, jsonValues)
    }

    func musicCoreTabViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TAB_NAME)?.let { properties.put(Property.TAB_NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CORE_TAB_VIEWED, properties)
    }

    func musicSubTabViewed(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TAB_NAME)?.let { properties.put(Property.TAB_NAME, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUB_TAB_VIEWED, properties)
    }

    func languageScreen(values: Hash[String: Any]){

        let jsonValues = JSONObject()
        do {

        } catch {
            e.printStackTrace()
        }
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_LANG_SCREEN, jsonValues)

    }

    func musicWelcomeScreenPopupAppeared(values: Hash[String: Any]){

        var properties = [String: Any]()
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, $0) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, $0) }
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, $0) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WELCOME_SCREEN_POPUP_APPEARED, properties)

        let jsonValues = JSONObject()
        do {
            try jsonValues.put(Property.TYPE, values.get(Property.TYPE))
            try jsonValues.put(Property.SEQUENCE, values.get(Property.SEQUENCE))
            try jsonValues.put(Property.POPUP_APPEARED, values.get(Property.POPUP_APPEARED))
        } catch {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_WELCOME_SCREEN_POPUP_APPEARED, jsonValues)

    }

  init() {
  }
}
