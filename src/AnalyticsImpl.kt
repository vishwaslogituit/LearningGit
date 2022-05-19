package com.music.analytics

import android.app.Application
import com.apalya.myplex.error.core.MouUpdate
import com.apalya.myplex.error.core.PrefUtils
import com.music.analytics.Constant
import org.json.JSONException
import org.json.JSONObject
import java.util.*
import kotlin.collections.HashMap

class AnalyticsImpl {

    lateinit var instance: AnalyticsImpl
    lateinit var mPrefUtils: PrefUtils
    private var PREF_NAME: String = "MUSICEVENTS"

    companion object {
        val instance by lazy { AnalyticsImpl() }
    }
    fun init(app: Application, amplitude_apikey: String, client_key: String){
        mPrefUtils = PrefUtils(app.applicationContext)
        AmplitudeAnalyticsImpl.instance.init(app, amplitude_apikey)
        ClevertapAnalyticsImpl.instance.init(app)
        Constant.CLIENT_KEY = client_key
    }

    fun setSuperProperty(key: String?, value: String?) {
        if (mPrefUtils == null) {
            return
        }
        var temp: MutableMap<String?, String?> = mPrefUtils.loadMap(PREF_NAME)
        if (temp == null) {
            temp = java.util.HashMap()
        }
        temp[key] = value
        mPrefUtils.saveMap(temp, PREF_NAME)
    }

    fun removeSuperProperty(key: String) {
        if (mPrefUtils == null) {
            return
        }
        val temp: MutableMap<String, String> = mPrefUtils.loadMap(PREF_NAME)
            ?: return
        temp.remove(key)
        mPrefUtils.saveMap(temp, PREF_NAME)
    }

    fun setClientKey(value: String){
        Constant.CLIENT_KEY = value
    }

    fun setHungamaID(hungamaID: Any){
        ClevertapAnalyticsImpl.instance.createUserProperty(Property.HUNGAMA_ID, hungamaID)
        AmplitudeAnalyticsImpl.instance.createUserProperty(Property.HUNGAMA_ID, hungamaID)
        AmplitudeAnalyticsImpl.instance?.amplitudeInstance?.userId= hungamaID.toString();
    }

    fun setUserProperty(key: String, value: Any){
        ClevertapAnalyticsImpl.instance.createUserProperty(key, value)
        AmplitudeAnalyticsImpl.instance.createUserProperty(key, value)
    }

    fun setLanguageProperty(value: String){
        setUserProperty(Property.APP_LANGUAGE, value.toList()?:"na")
        setSuperProperty(Property.CT_SUPER_PREFERRED_LANGUAGE, value)
    }

    fun incrementUserProperty(key: String, value: Int){
        AmplitudeAnalyticsImpl.instance.incrementUserProperty(key, value)
    }

    fun updateIncrementUserProperty(propertyName:String, value: Int){
        AmplitudeAnalyticsImpl.instance.updateIncrementUserProperty(propertyName, value)
    }

    fun musicLaunched(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.MOBILE)?.let { properties.put(Property.MOBILE, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.PACK_START_DATE)?.let { properties.put(Property.PACK_START_DATE, it) }
        values.get(Property.VALIDITY_REMAINING)?.let { properties.put(Property.VALIDITY_REMAINING, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LAUNCHED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.PACK_START_DATE, values.get(Property.PACK_START_DATE))
            jsonValues.put(Property.VALIDITY_REMAINING, values.get(Property.VALIDITY_REMAINING))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_EXPOSURE, jsonValues)
    }

    fun musicClicked(){
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_CLICK)
    }

    fun musicLanguageSelected(values: HashMap<String, Any>){
        val properties = HashMap<String, Any>()
        values.get(Property.OLD_LANGUAGE)?.let { properties.put(Property.OLD_LANGUAGE, it) }
        values.get(Property.NEW_LANGUAGE)?.let { properties.put(Property.NEW_LANGUAGE, it) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_LANGUAGE_SELECTED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.OLD_LANGUAGE, values.get(Property.OLD_LANGUAGE).toString().toList()?:"na")
            jsonValues.put(Property.NEW_LANGUAGE, values.get(Property.NEW_LANGUAGE).toString().toList()?:"na")
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_LANGUAGE_SELECTED, jsonValues)
    }

    fun musicStarted(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, it) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, it) }
        values.get(Property.LAST_SOURCE)?.let { properties.put(Property.LAST_SOURCE, it) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, it) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, it) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, it) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, it) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, it) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, it) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, it) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, it) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, it) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, it) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, it) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, it) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, it) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, it) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, it) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_STARTED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            jsonValues.put(Property.CONNECTION_TYPE, values.get(Property.CONNECTION_TYPE))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.MOOD, values.get(Property.MOOD).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.RATING, values.get(Property.RATING))
            jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            jsonValues.put(Property.KEYWORDS, values.get(Property.KEYWORDS))
            jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            jsonValues.put(Property.PID, values.get(Property.PID))
            jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            jsonValues.put(Property.SONG_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM_START, jsonValues)
    }

    fun musicStopped(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, it) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, it) }
        values.get(Property.LAST_SOURCE)?.let { properties.put(Property.LAST_SOURCE, it) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, it) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, it) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, it) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, it) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, it) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, it) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, it) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, it) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, it) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, it) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, it) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, it) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, it) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, it) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, it) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, it) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, it) }
        values.get(Property.DURATION_BG)?.let { properties.put(Property.DURATION_BG, it) }
        values.get(Property.DURATION_FG)?.let { properties.put(Property.DURATION_FG, it) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_STOPPED, properties)

        stream(values)

        values.put(Property.CLIENT_KEY, Constant.CLIENT_KEY)
        var mouUpdateAPI = MouUpdate()
        mouUpdateAPI.update(values)

    }

    fun musicDetailsViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CONNECTION_TYPE)?.let { properties.put(Property.CONNECTION_TYPE, it) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, it) }
        values.get(Property.DEVICE_BRAND)?.let { properties.put(Property.DEVICE_BRAND, it) }
        values.get(Property.DEVICE_MODEL)?.let { properties.put(Property.DEVICE_MODEL, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DETAILS_VIEWED, properties)
    }

    fun musicFailed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, it) }
        values.get(Property.LABEL)?.let { properties.put(Property.LABEL, it) }
        values.get(Property.LABEL_ID)?.let { properties.put(Property.LABEL_ID, it) }
        values.get(Property.CONTENT_TYPE_ID)?.let { properties.put(Property.CONTENT_TYPE_ID, it) }
        values.get(Property.SUB_GENRE)?.let { properties.put(Property.SUB_GENRE, it) }
        values.get(Property.LYRICS_TYPE)?.let { properties.put(Property.LYRICS_TYPE, it) }
        values.get(Property.RATING)?.let { properties.put(Property.RATING, it) }
        values.get(Property.IS_ORIGINAL)?.let { properties.put(Property.IS_ORIGINAL, it) }
        values.get(Property.CAST_ENABLED)?.let { properties.put(Property.CAST_ENABLED, it) }
        values.get(Property.AGE_RATING)?.let { properties.put(Property.AGE_RATING, it) }
        values.get(Property.CRITIC_RATING)?.let { properties.put(Property.CRITIC_RATING, it) }
        values.get(Property.KEYWORDS)?.let { properties.put(Property.KEYWORDS, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.RELEASE_DATE)?.let { properties.put(Property.RELEASE_DATE, it) }
        values.get(Property.USER_RATING)?.let { properties.put(Property.USER_RATING, it) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, it) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, it) }
        values.get(Property.ERROR_TYPE)?.let { properties.put(Property.ERROR_TYPE, it) }
        values.get(Property.P_CODE)?.let { properties.put(Property.P_CODE, it) }
        values.get(Property.S_CODE)?.let { properties.put(Property.S_CODE, it) }
        values.get(Property.SOURCE_PAGE)?.let { properties.put(Property.SOURCE_PAGE, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_FAILED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.MOOD, values.get(Property.MOOD).toString().toList()?:"na")
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            jsonValues.put(Property.CONSUMPTION_TYPE, values.get(Property.CONSUMPTION_TYPE))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.DURATION, values.get(Property.DURATION))
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            jsonValues.put(Property.RATING, values.get(Property.RATING))
            jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            jsonValues.put(Property.PID, values.get(Property.PID))
            jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            jsonValues.put(Property.DURATION_CONSUMED, values.get(Property.DURATION_CONSUMED))
            jsonValues.put(Property.PERCENTAGE_COMPLETION, values.get(Property.PERCENTAGE_COMPLETION))
            jsonValues.put(Property.ERROR_TYPE, values.get(Property.ERROR_TYPE))
            jsonValues.put(Property.P_CODE, values.get(Property.P_CODE))
            jsonValues.put(Property.S_CODE, values.get(Property.S_CODE))
            jsonValues.put(Property.SOURCE_PAGE, values.get(Property.SOURCE_PAGE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM_FAILED, jsonValues)
    }


    fun addedDeletedFromPlaylist(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_ADD_DELETE_FROM_PLAYLIST, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.MOOD, values.get(Property.MOOD).toString().toList()?:"na")
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
        } catch (e: JSONException) {
            e.printStackTrace()
        }


        if(values.get(Property.ACTION) == "Add"){
            values.put(Property.ACTION,"added")
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_ADDED_TO_PLAYLIST, jsonValues)
        } else {
            AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_REMOVE_FROM_PLAYLIST, jsonValues)
        }
    }

    fun musicClearRecentSearch(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.CLEAR_ALL_CLICKED)?.let { properties.put(Property.CLEAR_ALL_CLICKED, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CLEAR_RECENT_SEARCH, properties)
    }

    fun musicRechargePopup(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, it) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, it) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }


        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_RECHARGE_POPUP, properties)
    }

    fun musicSubcriptionPackChange(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.OLD_PACK)?.let { properties.put(Property.OLD_PACK, it) }
        values.get(Property.NEW_PACK)?.let { properties.put(Property.NEW_PACK, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIPTION_PACK_CHANGED, properties)
    }

    fun musicExitEvent(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.EXIT_TYPE)?.let { properties.put(Property.EXIT_TYPE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_EXIT_EVENT, properties)
    }

    fun musicLiveEventsBooking(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, it) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, it) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, it) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, it) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, it) }
        values.get(Property.SUBSCRIPTION_PAGE_ACTION)?.let { properties.put(Property.SUBSCRIPTION_PAGE_ACTION, it) }
        values.get(Property.PAYMENT_MODE_SELECTED)?.let { properties.put(Property.PAYMENT_MODE_SELECTED, it) }
        values.get(Property.TICKET_CONFIRMATION_PAGE_APPEARS)?.let { properties.put(Property.TICKET_CONFIRMATION_PAGE_APPEARS, it) }
        values.get(Property.TICKET_CONFIRMATION_PAGE_ACTION)?.let { properties.put(Property.TICKET_CONFIRMATION_PAGE_ACTION, it) }
        values.get(Property.DOWNLOAD_RECEIPT_POPUP_APPEARS)?.let { properties.put(Property.DOWNLOAD_RECEIPT_POPUP_APPEARS, it) }
        values.get(Property.DOWNLOAD_RECEIPT_POPUP_ACTION)?.let { properties.put(Property.DOWNLOAD_RECEIPT_POPUP_ACTION, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LIVE_EVENTS_BOOKING, properties)
    }

    fun musicDownload(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.SHUFFLE)?.let { properties.put(Property.SHUFFLE, it) }
        values.get(Property.REPEAT)?.let { properties.put(Property.REPEAT, it) }
        values.get(Property.PLAYBACK_SOURCE)?.let { properties.put(Property.PLAYBACK_SOURCE, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.CORE_TAB)?.let { properties.put(Property.CORE_TAB, it) }
        values.get(Property.SUB_TAB)?.let { properties.put(Property.SUB_TAB, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD, properties)

        musicOfflined(values)

        var category: String? =if (values.get(Property.CATEGORY)!=null) values.get(Property.CATEGORY).toString() else null
        if(category?.isNotEmpty() == true) {
            category = category.lowercase()
            if (category == "song"||category == "songs") {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_SONGS, 1)
            } else if (category == "album"||category == "albums") {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_ALBUMS, 1)
            }else if (category == "video"||category == "videos") {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_VIDEOS, 1)
            }else if (category == "playlist"||category == "playlists") {
                incrementUserProperty(Property.NUMBER_OF_DOWNLOADED_PLAYLISTS, 1)
            }
        }

    }

    fun musicRegistrationCompleted(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.EMAIL)?.let { properties.put(Property.EMAIL, it) }
        values.get(Property.FIRST_TIME)?.let { properties.put(Property.FIRST_TIME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_REGISTRATION_COMPLETED, properties)
    }

    fun musicFavourited(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_FAVOURITED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.MOOD, values.get(Property.MOOD).toString().toList()?:"na")
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.NAME, values.get(Property.NAME))

        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MYMUSIC_FAVOURITED, jsonValues)

        var category: String? =if (values.get(Property.CATEGORY)!=null) values.get(Property.CATEGORY).toString() else null
        if(category?.isNotEmpty() == true) {
            category = category.lowercase()
            if (category == "song"||category == "songs") {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_SONGS, 1)
            } else if (category == "album"||category == "albums") {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_ALBUMS, 1)
            }else if (category == "video"||category == "videos") {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_VIDEOS, 1)
            }else if (category == "playlist"||category == "playlists") {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_PLAYLISTS, 1)
            }else if (category == "artist"||category == "artists") {
                incrementUserProperty(Property.NUMBER_OF_FAVOURITED_ARTISTS, 1)
            }
        }
    }

    fun createdDeletedPlayList(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.NO_OF_CONTENTS)?.let { properties.put(Property.NO_OF_CONTENTS, it) }
        values.get(Property.PLAYLIST_DURATION)?.let { properties.put(Property.PLAYLIST_DURATION, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_CREATED_DELETED_PLAYLIST, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.NO_OF_CONTENTS, values.get(Property.NO_OF_CONTENTS))
            jsonValues.put(Property.PLAYLIST_DURATION, values.get(Property.PLAYLIST_DURATION))
        } catch (e: JSONException) {
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

    fun musicSearched(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.SEARCH_TYPE)?.let { properties.put(Property.SEARCH_TYPE, it) }
        values.get(Property.CONTENT_CLICKED)?.let { properties.put(Property.CONTENT_CLICKED, it) }
        values.get(Property.CLICKED_CONTENT_POSITION)?.let { properties.put(Property.CLICKED_CONTENT_POSITION, it) }
        values.get(Property.NO_RESULT)?.let { properties.put(Property.NO_RESULT, it) }
        values.get(Property.RECENT_SEARCH_CONTENT_NAME)?.let { properties.put(Property.RECENT_SEARCH_CONTENT_NAME, it) }
        values.get(Property.KEYWORD)?.let { properties.put(Property.KEYWORD, it) }
        values.get(Property.VIDEOS_RAIL_CLICKED)?.let { properties.put(Property.VIDEOS_RAIL_CLICKED, it) }
        values.get(Property.VIDEOS_RAIL_CONTENT_POSITION)?.let { properties.put(Property.VIDEOS_RAIL_CONTENT_POSITION, it) }
        values.get(Property.VIDEOS_RAIL_POSITION)?.let { properties.put(Property.VIDEOS_RAIL_POSITION, it) }
        values.get(Property.VIDEOS_RAIL_CONTENT_NAME)?.let { properties.put(Property.VIDEOS_RAIL_CONTENT_NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SEARCHED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.SEARCH_TYPE, values.get(Property.SEARCH_TYPE))
            jsonValues.put(Property.CONTENT_CLICKED, values.get(Property.CONTENT_CLICKED))
            jsonValues.put(Property.CLICKED_CONTENT_POSITION, values.get(Property.CLICKED_CONTENT_POSITION))
            jsonValues.put(Property.NO_RESULT, values.get(Property.NO_RESULT))
            jsonValues.put(Property.RECENT_SEARCH_CONTENT_NAME, values.get(Property.RECENT_SEARCH_CONTENT_NAME))
            jsonValues.put(Property.KEYWORD, values.get(Property.KEYWORD))
            jsonValues.put(Property.VIDEOS_RAIL_CLICKED, values.get(Property.VIDEOS_RAIL_CLICKED))
            jsonValues.put(Property.VIDEOS_RAIL_CONTENT_POSITION, values.get(Property.VIDEOS_RAIL_CONTENT_POSITION))
            jsonValues.put(Property.VIDEOS_RAIL_POSITION, values.get(Property.VIDEOS_RAIL_POSITION))
            jsonValues.put(Property.VIDEOS_RAIL_CONTENT_NAME, values.get(Property.VIDEOS_RAIL_CONTENT_NAME))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_SEARCH_TAB_CLICKED, jsonValues)
    }

    fun musicClicked(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.START_POINT)?.let { properties.put(Property.START_POINT, it) }
        values.get(Property.BUTTON_LABEL)?.let { properties.put(Property.BUTTON_LABEL, it) }
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CLICKED, properties)
    }

    fun musicTabViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.VIEW_TYPE)?.let { properties.put(Property.VIEW_TYPE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_TAB_VIEWED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.VIEW_TYPE, values.get(Property.VIEW_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_TAB, jsonValues)
    }

    fun musicMoodSelector(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, it) }
        values.get(Property.NO_OF_SELECTIONS)?.let { properties.put(Property.NO_OF_SELECTIONS, it) }
        values.get(Property.SELECTIONS)?.let { properties.put(Property.SELECTIONS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_MOOD_SELECTOR, properties)
    }

    fun musicPromotionalPlaylist(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.ACTION_TYPE)?.let { properties.put(Property.ACTION_TYPE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PROMOTIONAL_PLAYLIST, properties)
    }

    fun musicMenu(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.MENU_CATEGORY)?.let { properties.put(Property.MENU_CATEGORY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_MENU, properties)
    }

    fun callertunesSubscription(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.PLAN_SELECTED)?.let { properties.put(Property.PLAN_SELECTED, it) }
        values.get(Property.PLAN_PRICE)?.let { properties.put(Property.PLAN_PRICE, it) }
        values.get(Property.SUCCESSFUL_SUCCESS_PAGE_ACTION)?.let { properties.put(Property.SUCCESSFUL_SUCCESS_PAGE_ACTION, it) }
        values.get(Property.SUCCESSFUL_SUCCESS_PAGE_APPEARED)?.let { properties.put(Property.SUCCESSFUL_SUCCESS_PAGE_APPEARED, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_CALLERTUNES_SUBSCRIPTION, properties)
    }

    fun setCallertunes(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_NAME, it) }
        values.get(Property.PLAYLIST_ID)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CONSUMPTION_TYPE)?.let { properties.put(Property.CONSUMPTION_TYPE, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, it) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.CAROUSEL_POSITION)?.let { properties.put(Property.CAROUSEL_POSITION, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_SET_CALLERTUNES, properties)
    }

    fun musicCategoryViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.PLANS_OFFERS)?.let { properties.put(Property.PLANS_OFFERS, it) }
        values.get(Property.MY_MUSIC)?.let { properties.put(Property.MY_MUSIC, it) }
        values.get(Property.SETTINGS)?.let { properties.put(Property.SETTINGS, it) }
        values.get(Property.HELP)?.let { properties.put(Property.HELP, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CATEGORY_VIEWED, properties)
    }

    fun musicPlaybackSettings(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.PLAYBACK_QUALITY)?.let { properties.put(Property.PLAYBACK_QUALITY, it) }
        values.get(Property.AUTO_PLAY_AUDIO)?.let { properties.put(Property.AUTO_PLAY_AUDIO, it) }
        values.get(Property.AUTO_PLAY_VIDEO)?.let { properties.put(Property.AUTO_PLAY_VIDEO, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAYBACK_SETTINGS, properties)
    }

    fun musicDownloadPreferences(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.MEMORY_ALLOCATION)?.let { properties.put(Property.MEMORY_ALLOCATION, it) }
        values.get(Property.ONLY_ON_WIFI)?.let { properties.put(Property.ONLY_ON_WIFI, it) }
        values.get(Property.DOWNLOAD_SETTINGS)?.let { properties.put(Property.DOWNLOAD_SETTINGS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD_PREFERENCES, properties)
    }

    fun musicDownloadSettings(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.MUSIC_DOWNLOAD_QUALITY)?.let { properties.put(Property.MUSIC_DOWNLOAD_QUALITY, it) }
        values.get(Property.VIDEO_DOWNLOAD_QUALITY)?.let { properties.put(Property.VIDEO_DOWNLOAD_QUALITY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_DOWNLOAD_SETTINGS, properties)
    }

    fun myMusic(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.NO_OF_SONGS)?.let { properties.put(Property.NO_OF_SONGS, it) }
        values.get(Property.TOTAL_SONGS_DURATION)?.let { properties.put(Property.TOTAL_SONGS_DURATION, it) }
        values.get(Property.NO_OF_ARTISTS)?.let { properties.put(Property.NO_OF_ARTISTS, it) }
        values.get(Property.NO_OF_PLAYLISTS)?.let { properties.put(Property.NO_OF_PLAYLISTS, it) }
        values.get(Property.NO_OF_VIDEOS)?.let { properties.put(Property.NO_OF_VIDEOS, it) }
        values.get(Property.TOTAL_VIDEOS_DURATION)?.let { properties.put(Property.TOTAL_VIDEOS_DURATION, it) }
        values.get(Property.NO_OF_PODCASTS)?.let { properties.put(Property.NO_OF_PODCASTS, it) }
        values.get(Property.NO_OF_ALBUMS)?.let { properties.put(Property.NO_OF_ALBUMS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MY_MUSIC, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.NO_OF_SONGS, values.get(Property.NO_OF_SONGS))
            jsonValues.put(Property.TOTAL_SONGS_DURATION, values.get(Property.TOTAL_SONGS_DURATION))
            jsonValues.put(Property.NO_OF_ARTISTS, values.get(Property.NO_OF_ARTISTS))
            jsonValues.put(Property.NO_OF_PLAYLISTS, values.get(Property.NO_OF_PLAYLISTS))
            jsonValues.put(Property.NO_OF_VIDEOS, values.get(Property.NO_OF_VIDEOS))
            jsonValues.put(Property.TOTAL_VIDEOS_DURATION, values.get(Property.TOTAL_VIDEOS_DURATION))
            jsonValues.put(Property.NO_OF_PODCASTS, values.get(Property.NO_OF_PODCASTS))
            jsonValues.put(Property.NO_OF_ALBUMS, values.get(Property.NO_OF_ALBUMS))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MY_MUSIC, jsonValues)
    }

    fun musicSubscriptionBannerClicked(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.BANNER_TYPE)?.let { properties.put(Property.BANNER_TYPE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIPTION_BANNER_CLICKED, properties)
    }

    fun musicRefeat(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, it) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, it) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_REPEAT, properties)
    }

    fun musicShuffle(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.PLAYLIST_NAME)?.let { properties.put(Property.PLAYLIST_ID, it) }
        values.get(Property.ORIGINAL_ALBUM_NAME)?.let { properties.put(Property.ORIGINAL_ALBUM_NAME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.LOGIN_STATUS)?.let { properties.put(Property.LOGIN_STATUS, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.DURATION)?.let { properties.put(Property.DURATION, it) }
        values.get(Property.DURATION_CONSUMED)?.let { properties.put(Property.DURATION_CONSUMED, it) }
        values.get(Property.PERCENTAGE_COMPLETION)?.let { properties.put(Property.PERCENTAGE_COMPLETION, it) }
        values.get(Property.ALBUM_ID)?.let { properties.put(Property.ALBUM_ID, it) }
        values.get(Property.ALBUM_NAME)?.let { properties.put(Property.ALBUM_NAME, it) }
        values.get(Property.DOWNLOAD_QUALITY)?.let { properties.put(Property.DOWNLOAD_QUALITY, it) }
        values.get(Property.CONTENT_POSITION)?.let { properties.put(Property.CONTENT_POSITION, it) }
        values.get(Property.PLAYBACK_TYPE)?.let { properties.put(Property.PLAYBACK_TYPE, it) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SHUFFLE, properties)
    }

    fun musicLiveEvents(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, it) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, it) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, it) }
        values.get(Property.CLICK_LABEL)?.let { properties.put(Property.CLICK_LABEL, it) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, it) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.EVENT_CATEGORY)?.let { properties.put(Property.EVENT_CATEGORY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_LIVE_EVENTS, properties)
    }

    fun musicTicketDetailsViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_TICKET_DETAILS_VIEWED, properties)
    }

    fun musicEventBookingCancellation(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.EVENT_NAME)?.let { properties.put(Property.EVENT_NAME, it) }
        values.get(Property.EVENT_ORIGINAL_PRICE)?.let { properties.put(Property.EVENT_ORIGINAL_PRICE, it) }
        values.get(Property.EVENT_FINAL_PRICE)?.let { properties.put(Property.EVENT_FINAL_PRICE, it) }
        values.get(Property.EVENT_DATE)?.let { properties.put(Property.EVENT_DATE, it) }
        values.get(Property.EVENT_TIME)?.let { properties.put(Property.EVENT_TIME, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_ACTION)?.let { properties.put(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_ACTION, it) }
        values.get(Property.CANCEL_BOOKING_CONFIRMATION_POPUP_APPEARS)?.let { properties.put(
            Property.CANCEL_BOOKING_CONFIRMATION_POPUP_APPEARS, it) }
        values.get(Property.EVENT_CLICKED_NAME)?.let { properties.put(Property.EVENT_CLICKED_NAME, it) }
        values.get(Property.CANCEL_BOOKING_POPUP_APPEARS)?.let { properties.put(Property.CANCEL_BOOKING_POPUP_APPEARS, it) }
        values.get(Property.CANCEL_BOOKING_POPUP_ACTION)?.let { properties.put(Property.CANCEL_BOOKING_POPUP_ACTION, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_EVENT_BOOKING_CANCELLATION, properties)
    }

    fun musicSessionStart(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.EVENT_TIME_STAMP)?.let { properties.put(Property.EVENT_TIME_STAMP, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SESSION_START, properties)
    }

    fun musicSessionEnd(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.EVENT_TIME_STAMP)?.let { properties.put(Property.EVENT_TIME_STAMP, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SESSION_END, properties)
    }

    fun musicPlayerActions(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.PLAYER_TYPE)?.let { properties.put(Property.PLAYER_TYPE, it) }
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }

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

    fun musicArtworkTapped(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.ARTWORK_TYPE)?.let { properties.put(Property.ARTWORK_TYPE, it) }
        values.get(Property.TOP_NAV_NAME)?.let { properties.put(Property.TOP_NAV_NAME, it) }
        values.get(Property.FILTER_SELECTED)?.let { properties.put(Property.FILTER_SELECTED, it) }
        values.get(Property.TOP_NAV_POSITION)?.let { properties.put(Property.TOP_NAV_POSITION, it) }
        values.get(Property.BUCKET_TYPE)?.let { properties.put(Property.BUCKET_TYPE, it) }
        values.get(Property.BUCKET_NAME)?.let { properties.put(Property.BUCKET_NAME, it) }
        values.get(Property.BUCKET_POSITION)?.let { properties.put(Property.BUCKET_POSITION, it) }
        values.get(Property.PROGRAMMING_TYPE)?.let { properties.put(Property.PROGRAMMING_TYPE, it) }
        values.get(Property.BUCKET_ID)?.let { properties.put(Property.BUCKET_ID, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.ARTIST_NAME)?.let { properties.put(Property.ARTIST_NAME, it) }
        values.get(Property.POSITION_WITHIN_BUCKET)?.let { properties.put(Property.POSITION_WITHIN_BUCKET, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_ARTWORK_TAPPED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.ARTWORK_TYPE, values.get(Property.ARTWORK_TYPE))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.TOP_NAV_NAME, values.get(Property.TOP_NAV_NAME))
            jsonValues.put(Property.FILTER_SELECTED, values.get(Property.FILTER_SELECTED))
            jsonValues.put(Property.TOP_NAV_POSITION, values.get(Property.TOP_NAV_POSITION))
            jsonValues.put(Property.BUCKET_TYPE, values.get(Property.BUCKET_TYPE))
            jsonValues.put(Property.BUCKET_POSITION, values.get(Property.BUCKET_POSITION))
            jsonValues.put(Property.PROGRAMMING_TYPE, values.get(Property.PROGRAMMING_TYPE))
            jsonValues.put(Property.BUCKET_ID, values.get(Property.BUCKET_ID))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.ARTIST_NAME, values.get(Property.ARTIST_NAME))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.POSITION_WITHIN_BUCKET, values.get(Property.POSITION_WITHIN_BUCKET))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_ARTWORK_TAPPED, jsonValues)

    }

    fun musicWelcomePopup(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, it) }
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, it) }
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WELCOME_POPUP, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.TYPE, values.get(Property.TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            jsonValues.put(Property.SEQUENCE, values.get(Property.SEQUENCE))
            jsonValues.put(Property.POPUP_APPEARED, values.get(Property.POPUP_APPEARED))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_WELCOME_SCREEN_POPUP, jsonValues)
    }

    fun musicSubscribed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SUBSCRIBED_PACK_NAME)?.let { properties.put(Property.SUBSCRIBED_PACK_NAME, it) }
        values.get(Property.PACK_PRICE)?.let { properties.put(Property.PACK_PRICE, it) }
        values.get(Property.PACK_VALIDITY)?.let { properties.put(Property.PACK_VALIDITY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUBSCRIBED, properties)
    }

    fun musicWebViewPerformance(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ERROR_CODE)?.let { properties.put(Property.ERROR_CODE, it) }
        values.get(Property.LOAD_TIME)?.let { properties.put(Property.LOAD_TIME, it) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, it) }
        values.get(Property.NETWORK_TYPE)?.let { properties.put(Property.NETWORK_TYPE, it) }
        values.get(Property.RESPONSE_CODE)?.let { properties.put(Property.RESPONSE_CODE, it) }
        values.get(Property.RESPONSE_TIME)?.let { properties.put(Property.RESPONSE_TIME, it) }
        values.get(Property.URL)?.let { properties.put(Property.URL, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WEB_VIEW_PERFORMANCE, properties)
    }

    fun musicPaymentGateway(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_NAME)?.let { properties.put(Property.CONTENT_NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.PNAME)?.let { properties.put(Property.PNAME, it) }
        values.get(Property.PID)?.let { properties.put(Property.PID, it) }
        values.get(Property.PTYPE)?.let { properties.put(Property.PTYPE, it) }
        values.get(Property.AMOUNT)?.let { properties.put(Property.AMOUNT, it) }
        values.get(Property.CONTENT_GENRE)?.let { properties.put(Property.CONTENT_GENRE, it) }
        values.get(Property.BUTTON_CLICKED)?.let { properties.put(Property.BUTTON_CLICKED, it) }
        values.get(Property.RENT_POPUP_ACTION)?.let { properties.put(Property.RENT_POPUP_ACTION, it) }
        values.get(Property.RENT_POPUP_APPEARED)?.let { properties.put(Property.RENT_POPUP_APPEARED, it) }
        values.get(Property.PAYMENT_GATEWAY_PAGE_APPEARED)?.let { properties.put(Property.PAYMENT_GATEWAY_PAGE_APPEARED, it) }
        values.get(Property.PAYMENT_GATEWAY_PAGE_ACTION)?.let { properties.put(Property.PAYMENT_GATEWAY_PAGE_ACTION, it) }
        values.get(Property.PAYMENT_SUCCESS_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_SUCCESS_SCREEN_ACTION, it) }
        values.get(Property.PAYMENT_SUCCESS_SCREEN_APPEARED)?.let { properties.put(Property.PAYMENT_SUCCESS_SCREEN_APPEARED, it) }
        values.get(Property.PAYMENT_CONFIRMATION_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_CONFIRMATION_SCREEN_ACTION, it) }
        values.get(Property.PAYMENT_CONFIRMATION_SCREEN_APPEARS)?.let { properties.put(Property.PAYMENT_CONFIRMATION_SCREEN_APPEARS, it) }
        values.get(Property.PAYMENT_FAILED_SCREEN_ACTION)?.let { properties.put(Property.PAYMENT_FAILED_SCREEN_ACTION, it) }
        values.get(Property.PAYMENT_FAILED_SCREEN_APPEARS)?.let { properties.put(Property.PAYMENT_FAILED_SCREEN_APPEARS, it) }
        values.get(Property.CUSTOMER_TYPE)?.let { properties.put(Property.CUSTOMER_TYPE, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PAYMENT_GATEWAY, properties)
    }

    fun musicAutoCompleteResults(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.ACTION)?.let { properties.put(Property.ACTION, it) }
        values.get(Property.QUERY)?.let { properties.put(Property.QUERY, it) }
        values.get(Property.SUGGESTION_COUNT)?.let { properties.put(Property.SUGGESTION_COUNT, it) }
        values.get(Property.RESULT_TITLE)?.let { properties.put(Property.RESULT_TITLE, it) }
        values.get(Property.NO_OF_API_CALLS)?.let { properties.put(Property.NO_OF_API_CALLS, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_AUTOCOMPLETE_RESULTS, properties)
    }

    fun musicPlayerQualitySelected(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.AUDIO_QUALITY)?.let { properties.put(Property.AUDIO_QUALITY, it) }
        values.get(Property.VIDEO_QUALITY)?.let { properties.put(Property.VIDEO_QUALITY, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAYER_QUALITY_SELECTED, properties)
    }

    fun musicPlayAllClicked(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.CATEGORY)?.let { properties.put(Property.CATEGORY, it) }
        values.get(Property.NAME)?.let { properties.put(Property.NAME, it) }
        values.get(Property.CONTENT_TYPE)?.let { properties.put(Property.CONTENT_TYPE, it) }
        values.get(Property.GENRE)?.let { properties.put(Property.GENRE, it) }
        values.get(Property.MOOD)?.let { properties.put(Property.MOOD, it) }
        values.get(Property.LANGUAGE)?.let { properties.put(Property.LANGUAGE, it) }
        values.get(Property.YEAR_OF_RELEASE)?.let { properties.put(Property.YEAR_OF_RELEASE, it) }
        values.get(Property.TEMPO)?.let { properties.put(Property.TEMPO, it) }
        values.get(Property.SINGER)?.let { properties.put(Property.SINGER, it) }
        values.get(Property.ACTOR)?.let { properties.put(Property.ACTOR, it) }
        values.get(Property.MUSIC_DIRECTOR)?.let { properties.put(Property.MUSIC_DIRECTOR, it) }
        values.get(Property.LYRICIST)?.let { properties.put(Property.LYRICIST, it) }
        values.get(Property.CONTENT_ID)?.let { properties.put(Property.CONTENT_ID, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_PLAY_ALL_CLICKED, properties)
    }

    fun musicHomePageScroll(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TAB)?.let { properties.put(Property.TAB, it) }
        values.get(Property.LAST_VISIBLE_ROW_POSITION)?.let { properties.put(Property.LAST_VISIBLE_ROW_POSITION, it) }
        values.get(Property.SCREEN_NAME)?.let { properties.put(Property.SCREEN_NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_HOME_PAGE_SCROLL, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.LAST_VISIBLE_ROW_POSITION, values.get(Property.LAST_VISIBLE_ROW_POSITION))
            jsonValues.put(Property.SCREEN_NAME, values.get(Property.SCREEN_NAME))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_SCROLL, jsonValues)

    }

    fun musicBucketSwiped(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.SOURCE)?.let { properties.put(Property.SOURCE, it) }
        values.get(Property.SOURCE_DETAILS)?.let { properties.put(Property.SOURCE_DETAILS, it) }
        values.get(Property.BUCKET_ID)?.let { properties.put(Property.BUCKET_ID, it) }
        values.get(Property.BUCKET_NAME)?.let { properties.put(Property.BUCKET_NAME, it) }
        values.get(Property.SCREEN_NAME)?.let { properties.put(Property.SCREEN_NAME, it) }
        values.get(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET)?.let { properties.put(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET, it) }
        values.get(Property.BUCKET_SWIPED)?.let { properties.put(Property.BUCKET_SWIPED, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_BUCKET_SWIPED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.BUCKET_ID, values.get(Property.BUCKET_ID))
            jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            jsonValues.put(Property.SCREEN_NAME, values.get(Property.SCREEN_NAME))
            jsonValues.put(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET, values.get(Property.LAST_VISIBLE_POSITION_WITHIN_BUCKET))
            jsonValues.put(Property.BUCKET_SWIPED, values.get(Property.BUCKET_SWIPED))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_BUCKET_SWIPED, jsonValues)

    }

    fun homeBackClicked(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_HOME_PG_BACK_CLICKED, jsonValues)
    }

    private fun stream(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.AUDIO_QUALITY, values.get(Property.AUDIO_QUALITY))
            jsonValues.put(Property.VIDEO_QUALITY, values.get(Property.VIDEO_QUALITY))
            jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
            jsonValues.put(Property.CONNECTION_TYPE, values.get(Property.CONNECTION_TYPE))
            jsonValues.put(Property.CONSUMPTION_TYPE, values.get(Property.CONSUMPTION_TYPE))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.DURATION, values.get(Property.DURATION))
            jsonValues.put(Property.DURATION_FG, values.get(Property.DURATION_FG))
            jsonValues.put(Property.DURATION_BG, values.get(Property.DURATION_BG))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.LABEL, values.get(Property.LABEL))
            jsonValues.put(Property.LABEL_ID, values.get(Property.LABEL_ID))
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.MOOD, values.get(Property.MOOD).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            jsonValues.put(Property.PERCENTAGE_COMPLETION, values.get(Property.PERCENTAGE_COMPLETION))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.CONTENT_TYPE_ID, values.get(Property.CONTENT_TYPE_ID))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            jsonValues.put(Property.SUB_GENRE, values.get(Property.SUB_GENRE))
            jsonValues.put(Property.LYRICS_TYPE, values.get(Property.LYRICS_TYPE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.RATING, values.get(Property.RATING))
            jsonValues.put(Property.IS_ORIGINAL, values.get(Property.IS_ORIGINAL))
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
            jsonValues.put(Property.CAST_ENABLED, values.get(Property.CAST_ENABLED))
            jsonValues.put(Property.AGE_RATING, values.get(Property.AGE_RATING))
            jsonValues.put(Property.CRITIC_RATING, values.get(Property.CRITIC_RATING))
            jsonValues.put(Property.KEYWORDS, values.get(Property.KEYWORDS))
            jsonValues.put(Property.PTYPE, values.get(Property.PTYPE))
            jsonValues.put(Property.PID, values.get(Property.PID))
            jsonValues.put(Property.PNAME, values.get(Property.PNAME))
            jsonValues.put(Property.RELEASE_DATE, values.get(Property.RELEASE_DATE))
            jsonValues.put(Property.USER_RATING, values.get(Property.USER_RATING))
            jsonValues.put(Property.SONG_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_STREAM, jsonValues)
    }


    fun musicOfflined(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.SOURCE_DETAILS, values.get(Property.SOURCE_DETAILS))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.CONTENT_ID, values.get(Property.CONTENT_ID))
            jsonValues.put(Property.PLAYLIST_NAME, values.get(Property.PLAYLIST_NAME))
            jsonValues.put(Property.PLAYLIST_ID, values.get(Property.PLAYLIST_ID))
            jsonValues.put(Property.ORIGINAL_ALBUM_NAME, values.get(Property.ORIGINAL_ALBUM_NAME))
            jsonValues.put(Property.GENRE, values.get(Property.GENRE).toString().toList()?:"na")
            jsonValues.put(Property.LANGUAGE, values.get(Property.LANGUAGE))
            jsonValues.put(Property.YEAR_OF_RELEASE, values.get(Property.YEAR_OF_RELEASE))
            jsonValues.put(Property.TEMPO, values.get(Property.TEMPO))
            jsonValues.put(Property.SINGER, values.get(Property.SINGER).toString().toList()?:"na")
            jsonValues.put(Property.ACTOR, values.get(Property.ACTOR).toString().toList()?:"na")
            jsonValues.put(Property.MUSIC_DIRECTOR, values.get(Property.MUSIC_DIRECTOR).toString().toList()?:"na")
            jsonValues.put(Property.LYRICIST, values.get(Property.LYRICIST).toString().toList()?:"na")
            jsonValues.put(Property.DOWNLOAD_QUALITY, values.get(Property.DOWNLOAD_QUALITY))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.ALBUM_ID, values.get(Property.ALBUM_ID))
            jsonValues.put(Property.ALBUM_NAME, values.get(Property.ALBUM_NAME))
            jsonValues.put(Property.TAB, values.get(Property.TAB))
            jsonValues.put(Property.CAROUSEL_POSITION, values.get(Property.CAROUSEL_POSITION))
            jsonValues.put(Property.CONTENT_POSITION, values.get(Property.CONTENT_POSITION))
            jsonValues.put(Property.SHUFFLE, values.get(Property.SHUFFLE))
            jsonValues.put(Property.REPEAT, values.get(Property.REPEAT))
            jsonValues.put(Property.PLAYBACK_SOURCE, values.get(Property.PLAYBACK_SOURCE))
            jsonValues.put(Property.CATEGORY, values.get(Property.CATEGORY))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_OFFLINED, jsonValues)
    }

    private fun videoPlayerPause(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_PAUSE, jsonValues)
    }

    private fun videoPlayerPlay(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_PLAY, jsonValues)
    }

    private fun videoPlayerSkipForward(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_SKIP_FORWARD, jsonValues)
    }

    private fun videoPlayerSkipBackward(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_SKIP_BACKWARD, jsonValues)
    }

    private fun videoPlayerSkipAction(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_AUDIO_ACTION, jsonValues)
    }

    private fun videoPlayerBrightness(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_BRIGHTNESS_ACTION, jsonValues)
    }

    fun bucketViewAllClicked(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.BUCKET_NAME, values.get(Property.BUCKET_NAME))
        } catch (e: JSONException) {
            e.printStackTrace()
        }
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_BUCKET_CLICKED, jsonValues)

    }

    fun videoPlayerVideoQualitySelected(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.STREAM_QUALITY_SELECTED, values.get(Property.STREAM_QUALITY_SELECTED))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_VIDEO_QUALITY_SELECTED, jsonValues)
    }

    private fun videoPlayerLockTapped(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_LOCK_TAPPED, jsonValues)
    }

    private fun videoPlayerMuteButton(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
            jsonValues.put(Property.CONTENT_TYPE, values.get(Property.CONTENT_TYPE))
            jsonValues.put(Property.CONTENT_NAME, values.get(Property.CONTENT_NAME))
            jsonValues.put(Property.FROM_BUCKET, values.get(Property.FROM_BUCKET))
            jsonValues.put(Property.LAST_VISIBLE_ROW_POSITION, values.get(Property.LAST_VISIBLE_ROW_POSITION))
            jsonValues.put(Property.LISTING_SCREEN_NAME, values.get(Property.LISTING_SCREEN_NAME))
            jsonValues.put(Property.SOURCE, values.get(Property.SOURCE))
            jsonValues.put(Property.TO_BUCKET, values.get(Property.TO_BUCKET))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_MUTE_BUTTON, jsonValues)
    }

    private fun videoPlayerBackTapped(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_VIDEO_PLAYER_BACK_TAPPED, jsonValues)
    }

    private fun audioPlayerPause(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_PAUSE, jsonValues)
    }

    private fun audioPlayerPlay(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_PLAY, jsonValues)
    }

    private fun audioPlayerSkipForward(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_SKIP_FORWARD, jsonValues)
    }

    private fun audioPlayerSkipBackward(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_SKIP_BACKWARD, jsonValues)
    }

    fun audioPlayerAudioAction(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_AUDIO_ACTION, jsonValues)
    }

    fun audioPlayerQualitySelected(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.STREAM_QUALITY_SELECTED, values.get(Property.STREAM_QUALITY_SELECTED))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_QUALITY_SELECTED, jsonValues)
    }

    private fun audioPlayerBackTapped(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.CONTENT_TYPE_STREAMING, values.get(Property.CONTENT_TYPE_STREAMING))
            jsonValues.put(Property.PLAYER_TYPE, values.get(Property.PLAYER_TYPE))
            jsonValues.put(Property.ACTION, values.get(Property.ACTION))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_AUDIO_PLAYER_BACK_TAPPED, jsonValues)
    }

    fun musicCoreTabViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TAB_NAME)?.let { properties.put(Property.TAB_NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_CORE_TAB_VIEWED, properties)
    }

    fun musicSubTabViewed(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TAB_NAME)?.let { properties.put(Property.TAB_NAME, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_SUB_TAB_VIEWED, properties)
    }

    fun languageScreen(values: HashMap<String, Any>){

        val jsonValues = JSONObject()
        try {

        } catch (e: JSONException) {
            e.printStackTrace()
        }
        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_MUSIC_LANG_SCREEN, jsonValues)

    }

    fun musicWelcomeScreenPopupAppeared(values: HashMap<String, Any>){

        val properties = HashMap<String, Any>()
        values.get(Property.TYPE)?.let { properties.put(Property.TYPE, it) }
        values.get(Property.SEQUENCE)?.let { properties.put(Property.SEQUENCE, it) }
        values.get(Property.POPUP_APPEARED)?.let { properties.put(Property.POPUP_APPEARED, it) }

        ClevertapAnalyticsImpl.instance.fileEvent(Event.CT_MUSIC_WELCOME_SCREEN_POPUP_APPEARED, properties)

        val jsonValues = JSONObject()
        try {
            jsonValues.put(Property.TYPE, values.get(Property.TYPE))
            jsonValues.put(Property.SEQUENCE, values.get(Property.SEQUENCE))
            jsonValues.put(Property.POPUP_APPEARED, values.get(Property.POPUP_APPEARED))
        } catch (e: JSONException) {
            e.printStackTrace()
        }

        AmplitudeAnalyticsImpl.instance.fileEvent(Event.AM_WELCOME_SCREEN_POPUP_APPEARED, jsonValues)

    }

}