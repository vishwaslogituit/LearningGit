package com.myplex.playerui.utils;

import android.text.TextUtils;
import android.util.Log;
import com.android.player.data.Song;
import com.android.player.offlinedl.OfflineDLPojo;
import com.music.analytics.Property;
import com.myplex.playerui.model.AlbumDetail;
import com.myplex.playerui.model.AudioQualityPojo;
import com.myplex.playerui.model.Content;
import com.myplex.playerui.model.ContentMetadata;
import com.myplex.playerui.model.Playlist;
import com.myplex.playerui.model.SongDetail;
import com.myplex.playerui.model.Track;
import com.myplex.playerui.model.artistbucket.ArtistBucketResponse;
import com.myplex.playerui.model.artistbucket.ArtistBucketSong;
import com.myplex.playerui.model.mymusicpodcast.PodcastContent;
import com.myplex.playerui.model.podcast.Podcast;
import com.myplex.playerui.model.nextArtistDetail.Tracks;
import com.myplex.playerui.model.radio.RadioModel;
import com.myplex.playerui.model.topchart.ChartTrack;
import com.myplex.playerui.model.topchart.Topcharts;
import com.myplex.playerui.model.userplaylists.UserPlaylistResponse;

import java.util.HashMap;

public class MusicEventAnalytics {

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getSourceDetails() {
        return sourceDetails;
    }

    public void setSourceDetails(String sourceDetails) {
        this.sourceDetails = sourceDetails;
    }

    public String getContentName() {
        return contentName;
    }

    public void setContentName(String contentName) {
        this.contentName = contentName;
    }

    public long getContentId() {
        return contentId;
    }

    public void setContentId(long contentId) {
        this.contentId = contentId;
    }

    public String getPlaylistName() {
        return playlistName;
    }

    public void setPlaylistName(String playlistName) {
        this.playlistName = playlistName;
    }

    public long getPlaylistId() {
        return playlistId;
    }

    public void setPlaylistId(long playlistId) {
        this.playlistId = playlistId;
    }

    public String getOriginalAlbumName() {
        return originalAlbumName;
    }

    public void setOriginalAlbumName(String originalAlbumName) {
        this.originalAlbumName = originalAlbumName;
    }

    private  String source;
    private String sourceDetails;
    private String contentName;
    private long contentId;
    private String playlistName;
    private long playlistId;
    private String originalAlbumName;
    private String genre;
    private String mood;
    private String language;
    private String yearOfRelease;
    private String tempo;
    private String singer;
    private String actor;
    private String composer;
    private String lyricist;
    private String loginStatus;
    private String audioQuality;
    private String consumptionType;
    private String contentType;
    private String duration;
    private String albumId;
    private String tab;
    private String carousel;
    private String contentPosition;
    private String playBackType;
    private String playerType;
    private String lastSource;
    private String shuffle;
    private String repeat;
    private String playBackSource;
    private String moduleTrackId;
    private String moduleTrackingName;
    private String category;
    private String videoQuality;
    private String connectionType;
    private String label;
    private String labelId;
    private String contentTypeId;
    private String subGenre;
    private String lyricsType;
    private String rating;
    private String criticRating;
    private String keywords;
    private String pType;
    private String pId;
    private String pName;
    private String releaseDate;
    private String userRating;
    private String durationConsumed;
    private String duration_Fg;
    private String duration_Bg;
    private float percentageCompletion;
    private String albumName;
    private String downloadQuality;
    private String carousel_Position;
    private String is_Original;
    private String cast_Enabled;
    private String age_Rating;
    private String critic_Rating;
    private String error_Type;
    private String sCode;
    private String pCode;
    private String sourcePage;
    private String noOfContent;
    private String playListDuration;
    private String artWorkType;
    private String bucketName;
    private String bucketId;
    private String positionWithBucket;
    private String coreTab;
    private String subTab;
    private String action;
    private String size;




    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getNoOfContent() {
        return noOfContent;
    }

    public void setNoOfContent(String noOfContent) {
        this.noOfContent = noOfContent;
    }

    public String getPlayListDuration() {
        return playListDuration;
    }

    public void setPlayListDuration(String playListDuration) {
        this.playListDuration = playListDuration;
    }

    public String getArtWorkType() {
        return artWorkType;
    }

    public void setArtWorkType(String artWorkType) {
        this.artWorkType = artWorkType;
    }

    public String getBucketName() {
        return bucketName;
    }

    public void setBucketName(String bucketName) {
        this.bucketName = bucketName;
    }

    public String getBucketId() {
        return bucketId;
    }

    public void setBucketId(String bucketId) {
        this.bucketId = bucketId;
    }

    public String getPositionWithBucket() {
        return positionWithBucket;
    }

    public void setPositionWithBucket(String positionWithBucket) {
        this.positionWithBucket = positionWithBucket;
    }

    public String getCoreTab() {
        return coreTab;
    }

    public void setCoreTab(String coreTab) {
        this.coreTab = coreTab;
    }

    public String getSubTab() {
        return subTab;
    }

    public void setSubTab(String subTab) {
        this.subTab = subTab;
    }

    public String getSourcePage() {
        return sourcePage;
    }

    public void setSourcePage(String sourcePage) {
        this.sourcePage = sourcePage;
    }

    public String getsCode() {
        return sCode;
    }

    public void setsCode(String sCode) {
        this.sCode = sCode;
    }

    public String getpCode() {
        return pCode;
    }

    public void setpCode(String pCode) {
        this.pCode = pCode;
    }

    public String getError_Type() {
        return error_Type;
    }

    public void setError_Type(String error_Type) {
        this.error_Type = error_Type;
    }

    public String getCast_Enabled() {
        return cast_Enabled;
    }

    public void setCast_Enabled(String cast_Enabled) {
        this.cast_Enabled = cast_Enabled;
    }

    public String getAge_Rating() {
        return age_Rating;
    }

    public void setAge_Rating(String age_Rating) {
        this.age_Rating = age_Rating;
    }

    public String getCritic_Rating() {
        return critic_Rating;
    }

    public void setCritic_Rating(String critic_Rating) {
        this.critic_Rating = critic_Rating;
    }

    public String getIs_Original() {
        return is_Original;
    }

    public void setIs_Original(String is_Original) {
        this.is_Original = is_Original;
    }

    public String getCarousel_Position() {
        return carousel_Position;
    }

    public void setCarousel_Position(String carousel_Position) {
        this.carousel_Position = carousel_Position;
    }

    public String getDownloadQuality() {
        return downloadQuality;
    }

    public void setDownloadQuality(String downloadQuality) {
        this.downloadQuality = downloadQuality;
    }

    public String getAlbumName() {
        return albumName;
    }

    public void setAlbumName(String albumName) {
        this.albumName = albumName;
    }

    public String getDuration_Fg() {
        return duration_Fg;
    }

    public void setDuration_Fg(String duration_Fg) {
        this.duration_Fg = duration_Fg;
    }

    public String getDuration_Bg() {
        return duration_Bg;
    }

    public void setDuration_Bg(String duration_Bg) {
        this.duration_Bg = duration_Bg;
    }

    public float getPercentageCompletion() {
        return percentageCompletion;
    }

    public void setPercentageCompletion(float percentageCompletion) {
        this.percentageCompletion = percentageCompletion;
    }

    public String getDurationConsumed() {
        return durationConsumed;
    }

    public void setDurationConsumed(String durationConsumed) {
        this.durationConsumed = durationConsumed;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getMood() {
        return mood;
    }

    public void setMood(String mood) {
        this.mood = mood;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getYearOfRelease() {
        return yearOfRelease;
    }

    public void setYearOfRelease(String yearOfRelease) {
        this.yearOfRelease = yearOfRelease;
    }

    public String getTempo() {
        return tempo;
    }

    public void setTempo(String tempo) {
        this.tempo = tempo;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getComposer() {
        return composer;
    }

    public void setComposer(String composer) {
        this.composer = composer;
    }

    public String getLyricist() {
        return lyricist;
    }

    public void setLyricist(String lyricist) {
        this.lyricist = lyricist;
    }

    public String getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }

    public String getAudioQuality() {
        return audioQuality;
    }

    public void setAudioQuality(String audioQuality) {
        this.audioQuality = audioQuality;
    }

    public String getConsumptionType() {
        return consumptionType;
    }

    public void setConsumptionType(String consumptionType) {
        this.consumptionType = consumptionType;
    }

    public String getContentType() {
        return contentType;
    }

    public void setContentType(String contentType) {
        this.contentType = contentType;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getAlbumId() {
        return albumId;
    }

    public void setAlbumId(String albumId) {
        this.albumId = albumId;
    }

    public String getTab() {
        return tab;
    }

    public void setTab(String tab) {
        this.tab = tab;
    }

    public String getCarousel() {
        return carousel;
    }

    public void setCarousel(String carousel) {
        this.carousel = carousel;
    }

    public String getContentPosition() {
        return contentPosition;
    }

    public void setContentPosition(String contentPosition) {
        this.contentPosition = contentPosition;
    }

    public String getPlayBackType() {
        return playBackType;
    }

    public void setPlayBackType(String playBackType) {
        this.playBackType = playBackType;
    }

    public String getPlayerType() {
        return playerType;
    }

    public void setPlayerType(String playerType) {
        this.playerType = playerType;
    }

    public String getLastSource() {
        return lastSource;
    }

    public void setLastSource(String lastSource) {
        this.lastSource = lastSource;
    }

    public String getShuffle() {
        return shuffle;
    }

    public void setShuffle(String shuffle) {
        this.shuffle = shuffle;
    }

    public String getRepeat() {
        return repeat;
    }

    public void setRepeat(String repeat) {
        this.repeat = repeat;
    }

    public String getPlayBackSource() {
        return playBackSource;
    }

    public void setPlayBackSource(String playBackSource) {
        this.playBackSource = playBackSource;
    }

    public String getModuleTrackId() {
        return moduleTrackId;
    }

    public void setModuleTrackId(String moduleTrackId) {
        this.moduleTrackId = moduleTrackId;
    }

    public String getModuleTrackingName() {
        return moduleTrackingName;
    }

    public void setModuleTrackingName(String moduleTrackingName) {
        this.moduleTrackingName = moduleTrackingName;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getVideoQuality() {
        return videoQuality;
    }

    public void setVideoQuality(String videoQuality) {
        this.videoQuality = videoQuality;
    }

    public String getConnectionType() {
        return connectionType;
    }

    public void setConnectionType(String connectionType) {
        this.connectionType = connectionType;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getLabelId() {
        return labelId;
    }

    public void setLabelId(String labelId) {
        this.labelId = labelId;
    }

    public String getContentTypeId() {
        return contentTypeId;
    }

    public void setContentTypeId(String contentTypeId) {
        this.contentTypeId = contentTypeId;
    }

    public String getSubGenre() {
        return subGenre;
    }

    public void setSubGenre(String subGenre) {
        this.subGenre = subGenre;
    }

    public String getLyricsType() {
        return lyricsType;
    }

    public void setLyricsType(String lyricsType) {
        this.lyricsType = lyricsType;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getCriticRating() {
        return criticRating;
    }

    public void setCriticRating(String criticRating) {
        this.criticRating = criticRating;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getpType() {
        return pType;
    }

    public void setpType(String pType) {
        this.pType = pType;
    }

    public String getpId() {
        return pId;
    }

    public void setpId(String pId) {
        this.pId = pId;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }

    public String getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getUserRating() {
        return userRating;
    }

    public void setUserRating(String userRating) {
        this.userRating = userRating;
    }

    public static MusicEventAnalytics musicStartedEvent(final ContentMetadata contentMetadata, final SongDetail songDetail, boolean isDownloaded,
                                                        AudioQualityPojo audioQualityPojo){

        MusicEventAnalytics events = new MusicEventAnalytics();
        if(songDetail!=null){
            events.setOriginalAlbumName(songDetail.getAlbumName());
            events.setAlbumId(String.valueOf(songDetail.getAlbumId()));
            events.setContentId(songDetail.getContentId());
            events.setLanguage(songDetail.getLanguage());
            events.setGenre(songDetail.getGenre());
            events.setLabel(songDetail.getLabel());
            events.setLyricist(songDetail.getLyricist());
            events.setYearOfRelease(String.valueOf(songDetail.getRelyear()));
            events.setTempo(songDetail.getAttributeTempo());
            events.setTab(songDetail.getSongTags());
            events.setSinger(songDetail.getSingers());
            events.setMood(songDetail.getMood());
        }
        else{
            events.setOriginalAlbumName("");
            events.setAlbumId("");
            events.setLanguage("");
            events.setGenre("");
            events.setLabel("");
            events.setLyricist("");
            events.setYearOfRelease("");
            events.setTempo("");
            events.setTab("");
            events.setSinger("");
            events.setMood("");
        }
        events.setContentName((contentMetadata!=null)?Utils.validateString(contentMetadata.getTitle()):"");
        events.setContentType((contentMetadata!=null)?Utils.validateString(contentMetadata.getContainerType()):"song");
        events.setSource("");
        events.setSourceDetails("");
        events.setContentId((contentMetadata!=null)?Utils.validateLong(Long.parseLong(contentMetadata.getContentId())):0);
        events.setPlaylistName("");
        events.setActor("");
        events.setCarousel("");
        events.setCategory((contentMetadata!=null)?Utils.validateString(contentMetadata.getTypeid()):"song");
        events.setComposer("");
        events.setAudioQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        events.setConsumptionType((isDownloaded) ? "Download" : "Stream");
        events.setContentPosition("");
        events.setDuration("");
        events.setConnectionType("");
        events.setCriticRating("");
        events.setKeywords("");
        events.setLastSource("");
        events.setLabelId("");
        events.setLoginStatus("");
        events.setLyricsType("");
        events.setModuleTrackId("");
        events.setModuleTrackingName("");
        events.setOriginalAlbumName("");
        events.setpId("");
        events.setPlayBackSource("");
        events.setPlaylistId(0L);
        events.setPlayBackSource("");
        events.setPlayBackType("");
        events.setPlayerType("");
        events.setPlaylistName("");
        events.setReleaseDate("");
        events.setpName("");
        events.setShuffle("");
        events.setVideoQuality("");
        events.setSubGenre("");
        events.setSourceDetails("");
        events.setRepeat("");
        Log.v("EVENTs data", "musicStartedEvent : " + events.toString());
        return  events;
    }

    @Override
    public String toString() {
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
                '}';
    }

    public static HashMap<String, Object> getEventMusicStartedValues(MusicEventAnalytics event){

        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.CONTENT_ID, String.valueOf(event.getContentId()));
        values.put(Property.PLAYLIST_ID, String.valueOf(event.getPlaylistId()));
        values.put(Property.ORIGINAL_ALBUM_NAME, event.getOriginalAlbumName());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.MOOD,event.getMood());
        values.put(Property.LANGUAGE,event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.ACTOR, event.getActor());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.LYRICIST,event.getLyricist());
        values.put(Property.LOGIN_STATUS,event.getLoginStatus());
        values.put(Property.AUDIO_QUALITY,event.getAudioQuality());
        values.put(Property.CONSUMPTION_TYPE,event.getConsumptionType());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.DURATION,event.getDuration());
        values.put(Property.ALBUM_ID,event.getAlbumId());
        values.put(Property.ALBUM_NAME,event.getOriginalAlbumName());
        values.put(Property.TAB,event.getTab());
        values.put(Property.CAROUSEL_POSITION,event.getCarousel());
        values.put(Property.CONTENT_POSITION,event.getContentPosition());
        values.put(Property.PLAYBACK_TYPE,event.getPlayBackType());
        values.put(Property.PLAYER_TYPE,event.getPlayerType());
        values.put(Property.LAST_SOURCE,event.getLastSource());
        values.put(Property.SHUFFLE,event.getShuffle());
        values.put(Property.REPEAT,event.getRepeat());
        values.put(Property.PLAYBACK_SOURCE,event.getPlayBackSource());
        values.put(Property.CATEGORY,event.getCategory());
        values.put(Property.VIDEO_QUALITY,event.getVideoQuality());
        values.put(Property.CONNECTION_TYPE,event.getConnectionType());
        values.put(Property.LABEL,event.getLabel());
        values.put(Property.LABEL_ID,event.getLabelId());
        values.put(Property.CONTENT_TYPE_ID,event.getContentId());
        values.put(Property.SUB_GENRE,event.getSubGenre());
        values.put(Property.LYRICS_TYPE,event.getLyricsType());
        values.put(Property.RATING,event.getRating());
        values.put(Property.IS_ORIGINAL,"");
        values.put(Property.CAST_ENABLED,"");
        values.put(Property.AGE_RATING,"");
        values.put(Property.CRITIC_RATING,"");
        values.put(Property.KEYWORDS,event.getKeywords());
        values.put(Property.PTYPE,event.getpType());
        values.put(Property.PID,event.getpId());
        values.put(Property.PNAME,event.getpName());
        values.put(Property.RELEASE_DATE,event.getReleaseDate());
        values.put(Property.USER_RATING,event.getUserRating());
        return values;
    }

    // for musicStopped Event
    public static MusicEventAnalytics musicStoppedEvent(final ContentMetadata contentMetadata, final SongDetail songDetail,Long currentPosition,Long duration, boolean isDownloaded,
                                                        AudioQualityPojo audioQualityPojo){
        MusicEventAnalytics events = new MusicEventAnalytics();
        if(songDetail!=null){
            events.setOriginalAlbumName(Utils.validateString(songDetail.getAlbumName()));
            events.setGenre(Utils.validateString(songDetail.getGenre()));
            events.setMood(Utils.validateString(songDetail.getMood()));
            events.setLanguage(Utils.validateString(songDetail.getLanguage()));
            events.setYearOfRelease(""+Utils.validateLong(songDetail.getRelyear()));
            events.setTempo(Utils.validateString(songDetail.getAttributeTempo()));
            events.setSinger(Utils.validateString(songDetail.getSingers()));
            events.setLyricist(Utils.validateString(songDetail.getLyricist()));
            events.setAlbumId(""+Utils.validateLong(songDetail.getAlbumId()));
            events.setAlbumName(Utils.validateString(songDetail.getAlbumName()));
            events.setTab(Utils.validateString(songDetail.getSongTags()));
            events.setLabel(Utils.validateString(songDetail.getLabel()));
            events.setContentId(Utils.validateLong(songDetail.getContentId()));
        }else{

            events.setOriginalAlbumName("");
            events.setGenre("");
            events.setMood("");
            events.setLanguage("");
            events.setYearOfRelease("");
            events.setTempo("");
            events.setSinger("");
            events.setLyricist("");
            events.setAlbumId("");
            events.setAlbumName("");
            events.setTab("");
            events.setLabel("");
            events.setContentId(Long.parseLong("-1"));
        }

        events.setSource("");
        events.setSourceDetails("");
        events.setContentId(Long.parseLong(contentMetadata.getContentId()));
        events.setContentName(contentMetadata.getTitle());
        events.setPlaylistId(-1);
        events.setPlaylistName("");
        /*events.setOriginalAlbumName(songDetail.getAlbumName());
        events.setGenre(songDetail.getGenre());
        events.setMood(songDetail.getMood());
        events.setLanguage(songDetail.getLanguage());
        events.setYearOfRelease(String.valueOf(songDetail.getRelyear()));
        events.setTempo(songDetail.getAttributeTempo());
        events.setSinger(songDetail.getSingers());*/
        events.setActor("");
        events.setComposer("");
    //    events.setLyricist(songDetail.getLyricist());
        events.setLoginStatus("");
        events.setAudioQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        events.setConsumptionType((isDownloaded) ? "Download" : "Stream");
        events.setContentType("" + contentMetadata.getTypeid());
        if(contentMetadata.getContainerType() == null){
            events.setContentType("song");
        }
        events.setDuration("" + (duration < 0 ? 0 : duration/1000));
        events.setDurationConsumed("" + currentPosition/1000);
        events.setDuration_Fg("" + currentPosition/1000);
        events.setDuration_Bg("" + currentPosition/1000);
        if (duration != 0) {
            double percentageComp = (currentPosition * 100 / duration);
            events.setPercentageCompletion((float) percentageComp);
        } else {
            events.setPercentageCompletion(0F);
        }
        /*events.setAlbumId(String.valueOf(songDetail.getAlbumId()));
        events.setAlbumName(songDetail.getAlbumName());*/
        events.setDownloadQuality("");
   //     events.setTab(songDetail.getSongTags());
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setPlayBackType("");
        events.setPlayerType("");
        events.setLastSource("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setModuleTrackId("");
        events.setModuleTrackingName("");
        events.setCategory(contentMetadata.getTypeid());
        if(contentMetadata.getTypeid() == null){
            events.setCategory("song");
        }
        events.setVideoQuality("");
    //    events.setLabel(songDetail.getLabel());
        events.setLabelId("");
   //     events.setContentId(songDetail.getContentId());
        events.setSubGenre("");
        events.setLyricsType("");
        events.setRating("");
        events.setIs_Original("");
        events.setAge_Rating("");
        events.setCriticRating("");
        events.setKeywords("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setReleaseDate("");
        events.setUserRating("");
        Log.v("EVENTs data", "musicStoppedEvent : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> getMusicStoppedEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.CONTENT_ID, String.valueOf(event.getContentId()));
        values.put(Property.PLAYLIST_ID, String.valueOf(event.getPlaylistId()));
        values.put(Property.PLAYLIST_NAME, String.valueOf(event.getPlaylistName()));
        values.put(Property.ORIGINAL_ALBUM_NAME, event.getOriginalAlbumName());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.MOOD,event.getMood());
        values.put(Property.LANGUAGE,event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.ACTOR, event.getActor());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.LYRICIST,event.getLyricist());
        values.put(Property.LOGIN_STATUS,event.getLoginStatus());
        values.put(Property.AUDIO_QUALITY,event.getAudioQuality());
        values.put(Property.CONSUMPTION_TYPE,event.getConsumptionType());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.DURATION,event.getDuration());
        values.put(Property.DURATION_CONSUMED,event.getDurationConsumed());
        values.put(Property.DURATION_FG,event.getDuration_Fg());
        values.put(Property.DURATION_BG,event.getDuration_Bg());
        values.put(Property.PERCENTAGE_COMPLETION,event.getPercentageCompletion());
        values.put(Property.ALBUM_ID,event.getAlbumId());
        values.put(Property.ALBUM_NAME,event.getAlbumName());
        values.put(Property.DOWNLOAD_QUALITY,event.getDownloadQuality());
        values.put(Property.TAB,event.getTab());
        values.put(Property.CAROUSEL_POSITION,event.getCarousel());
        values.put(Property.CONTENT_POSITION,event.getContentPosition());
        values.put(Property.PLAYBACK_TYPE,event.getPlayBackType());
        values.put(Property.PLAYER_TYPE,event.getPlayerType());
        values.put(Property.LAST_SOURCE,event.getLastSource());
        values.put(Property.SHUFFLE,event.getShuffle());
        values.put(Property.REPEAT,event.getRepeat());
        values.put(Property.PLAYBACK_SOURCE,event.getPlayBackSource());
        /*values.put(Property.MODULETRACKING,event.getModuleTrackingName());*/
        values.put(Property.CATEGORY,event.getCategory());
        values.put(Property.VIDEO_QUALITY,event.getVideoQuality());
        values.put(Property.LABEL,event.getLabel());
        values.put(Property.LABEL_ID,event.getLabelId());
        values.put(Property.CONTENT_TYPE_ID,event.getContentId());
        values.put(Property.SUB_GENRE,event.getSubGenre());
        values.put(Property.LYRICS_TYPE,event.getLyricsType());
        values.put(Property.RATING,event.getRating());
        values.put(Property.IS_ORIGINAL,"");
        values.put(Property.AGE_RATING,"");
        values.put(Property.CRITIC_RATING,"");
        values.put(Property.KEYWORDS,event.getKeywords());
        values.put(Property.PTYPE,event.getpType());
        values.put(Property.PID,event.getpId());
        values.put(Property.PNAME,event.getpName());
        values.put(Property.RELEASE_DATE,event.getReleaseDate());
        values.put(Property.USER_RATING,event.getUserRating());
        //Log.v("EVENTs data", "getMusicStoppedEventValues : " + values.toString());
        return values;
    }

    // musicFailed Event
    public static MusicEventAnalytics musicFailedEvent(final ContentMetadata contentMetadata, final SongDetail songDetail,String logixException,Long currentPosition,Long duration, boolean isDownloaded,
                                                       AudioQualityPojo audioQualityPojo){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setContentType("" + contentMetadata.getTypeid());
        events.setConsumptionType((isDownloaded) ? "Download" : "Stream");
        events.setContentName(contentMetadata.getTitle());
        events.setContentId(songDetail.getContentId());
        events.setError_Type(logixException);
        events.setsCode("");
        events.setpCode("");
        events.setSource("");
        events.setSourceDetails("");
        events.setTab(songDetail.getSongTags());
        events.setCategory("");
        events.setSource("");
        events.setActor("");
        events.setAudioQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        events.setDuration_Fg("" + currentPosition/1000);
        events.setDuration_Bg("" + currentPosition/1000);
        events.setDuration("" + (duration < 0 ? 0 : duration/1000));
        events.setGenre(songDetail.getGenre());
        events.setLabel(songDetail.getLabel());
        events.setLabelId("");
        events.setLanguage(songDetail.getLanguage());
        events.setLyricist(songDetail.getLyricist());
        events.setMood(songDetail.getMood());
        events.setComposer("");
        events.setOriginalAlbumName(songDetail.getAlbumName());
        if (duration != 0) {
            double percentageComp = (currentPosition * 100 / duration);
            events.setPercentageCompletion((float) percentageComp);
        } else {
            events.setPercentageCompletion(0F);
        }
        events.setSinger(songDetail.getSingers());
        events.setContentId(Long.parseLong(contentMetadata.getContentId()));
        events.setSubGenre("");
        events.setLyricsType("");
        events.setTempo(songDetail.getAttributeTempo());
        events.setYearOfRelease(String.valueOf(songDetail.getRelyear()));
        events.setRating("");
        events.setIs_Original("");
        events.setCast_Enabled("");
        events.setAge_Rating("");
        events.setCriticRating("");
        events.setKeywords("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setReleaseDate("");
        events.setUserRating("");
        events.setVideoQuality("");
        Log.v("EVENTs data", "musicFailedEvent : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> getMusicFailedEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.CONSUMPTION_TYPE,event.getConsumptionType());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.ERROR_TYPE, String.valueOf(event.getError_Type()));
        values.put(Property.S_CODE, String.valueOf(event.getsCode()));
        values.put(Property.P_CODE, String.valueOf(event.getpCode()));
        values.put(Property.SOURCE_DETAILS, String.valueOf(event.getSourceDetails()));
        values.put(Property.TAB, String.valueOf(event.getTab()));
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.CATEGORY,event.getCategory());
        values.put(Property.ACTOR, String.valueOf(event.getActor()));
        values.put(Property.AUDIO_QUALITY, event.getAudioQuality());
        values.put(Property.DURATION,event.getDuration());
        values.put(Property.DURATION_BG,event.getDuration_Bg());
        values.put(Property.DURATION_FG,event.getDuration_Fg());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.LABEL,event.getLabel());
        values.put(Property.LABEL_ID,event.getLabelId());
        values.put(Property.MOOD, event.getMood());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.ORIGINAL_ALBUM_NAME,event.getOriginalAlbumName());
        values.put(Property.PERCENTAGE_COMPLETION,event.getPercentageCompletion());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.CONTENT_ID,event.getContentId());
        values.put(Property.SUB_GENRE,event.getSubGenre());
        values.put(Property.LYRICS_TYPE,event.getLyricsType());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.RATING,event.getRating());
        values.put(Property.IS_ORIGINAL,event.getIs_Original());
        values.put(Property.CAST_ENABLED,event.getCast_Enabled());
        values.put(Property.AGE_RATING,event.getAge_Rating());
        values.put(Property.CRITIC_RATING,event.getCritic_Rating());
        values.put(Property.KEYWORDS,event.getKeywords());
        values.put(Property.PTYPE,event.getpType());
        values.put(Property.PID,event.getpId());
        values.put(Property.PNAME,event.getpName());
        values.put(Property.USER_RATING,event.getUserRating());
        values.put(Property.VIDEO_QUALITY,event.getVideoQuality());
        return values;
    }

    // Created deleted Playlist
    public static MusicEventAnalytics createdDeletedPlaylistEvent(final String action, final String playListName,String noOfContent,String totalPlaylistDuration){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setPlaylistName(playListName);
        events.setContentType("");
        events.setNoOfContent("");
        events.setPlayListDuration("");
        events.setAction(action);
        Log.v("EVENTs data", "createdDeletedPlaylistEvent : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> getCreatedDeletedPlaylistEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.PLAYLIST_NAME,event.getPlaylistName());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.NO_OF_CONTENTS, event.getNoOfContent());
        values.put(Property.PLAYLIST_DURATION,event.getPlayListDuration());
        values.put(Property.ACTION,event.getAction());
        return values;
    }


    // Music Artwork Tapped.
    public static MusicEventAnalytics musicArtworkTappedEvent(final Song song,String artWorkType){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((song!=null)?song.getTitle():"");
        events.setBucketName("");
        events.setBucketId((song!=null)?song.getBucketId():"");
        events.setContentId((song!=null)?Long.parseLong(String.valueOf(song.getSongId())):Long.parseLong("0"));
        events.setPositionWithBucket("");
        events.setSource((song!=null)?song.getSource():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "musicArtworkTappedEvent : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> getMusicArtworkTappedEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.ARTWORK_TYPE,event.getArtWorkType());
        values.put(Property.CONTENT_NAME,event.getContentName());
        values.put(Property.BUCKET_NAME, event.getBucketName());
        values.put(Property.BUCKET_ID,event.getBucketId());
        values.put(Property.CONTENT_ID,event.getContentId());
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        return values;
    }

    // Added to Playlist
    public static MusicEventAnalytics addedToPlaylistEvent(final String action, final String playlistTitle, String playListId, String type, final SongDetail songDetail){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setAction(action);
        events.setPlaylistName("" +((playlistTitle!=null)? playlistTitle:""));
        events.setPlaylistId(((playListId!=null)?Utils.validateLong(Long.parseLong(playListId)):0));
        events.setContentName((songDetail!=null)?songDetail.getTitle():"");
        events.setGenre((songDetail!=null)?Utils.validateString(songDetail.getGenre()):"");
        events.setMood((songDetail!=null)?Utils.validateString(songDetail.getMood()):"");
        events.setLanguage((songDetail!=null)?Utils.validateString(songDetail.getLanguage()):"");
        events.setYearOfRelease((songDetail!=null)?""+Utils.validateLong(songDetail.getRelyear()):"");
        events.setTempo((songDetail!=null)?Utils.validateString(songDetail.getAttributeTempo()):"");
        events.setSinger((songDetail!=null)?Utils.validateString(songDetail.getSingers()):"");
        events.setActor("");
        events.setComposer((songDetail!=null)?Utils.validateString(songDetail.getMusicDirector()):"");
        events.setLyricist((songDetail!=null)?Utils.validateString(songDetail.getLyricist()):"");
        events.setTab((songDetail!=null)?Utils.validateString(songDetail.getSongTags()):"");
        events.setSource("");
        events.setSourceDetails("");
        events.setContentId(Utils.validateLong(songDetail.getContentId()));
        events.setCoreTab("");
        events.setSubTab("");
        events.setContentType((type!=null)?type:"");
        Log.v("EVENTs data", ""+action+" : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> addedToPlaylistEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.ACTION,event.getAction());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.PLAYLIST_NAME,event.getPlaylistName());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.MOOD,event.getMood());
        values.put(Property.LANGUAGE,event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.ACTOR,event.getActor());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.LYRICIST,event.getLyricist());
        values.put(Property.TAB,event.getTab());
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        values.put(Property.CONTENT_ID,event.getContentId());
        return values;
    }

    // Add to favourites
    public static MusicEventAnalytics addedToFavouriteEvent(final SongDetail songDetail ,String category){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(category);
        events.setPlaylistName((songDetail!=null)?songDetail.getTitle():"");
        events.setContentType("");
        events.setGenre((songDetail!=null)?songDetail.getGenre():"");
        events.setMood((songDetail!=null)?songDetail.getMood():"");
        events.setLanguage((songDetail!=null)?songDetail.getLanguage():"");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId((songDetail!=null)?Long.valueOf(songDetail.getContentId()):Long.parseLong("0"));
        events.setTab("");
        events.setSource("");
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "addedToFavouriteEvent : " + events.toString());
        return  events;
    }

    public static HashMap<String, Object> getAddedToFavouriteEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.CATEGORY,event.getCategory());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.PLAYLIST_NAME,event.getPlaylistName());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.MOOD,event.getMood());
        values.put(Property.LANGUAGE,event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.ACTOR,event.getActor());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.LYRICIST,event.getLyricist());
        values.put(Property.TAB,event.getTab());
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        values.put(Property.CONTENT_ID,event.getContentId());
        return values;
    }

    /**
     * get music Player Action Events
     */
    public static HashMap<String, Object> getMusicPlayerActionEvent(MusicEventAnalytics event) {
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.CONTENT_TYPE, event.getContentType());
        values.put(Property.ACTION, event.getContentType());
        values.put(Property.PLAYER_TYPE, event.getPlayerType());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.CONTENT_ID, event.getContentId());
        values.put(Property.CATEGORY, event.getCategory());
        values.put(Property.SOURCE, event.getSource());
        values.put(Property.SOURCE_DETAILS, event.getSourceDetails());
        values.put(Property.GENRE, event.getGenre());
        values.put(Property.LANGUAGE, event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE, event.getYearOfRelease());
        values.put(Property.TEMPO, event.getTempo());
        values.put(Property.SINGER, event.getSinger());
        values.put(Property.ACTOR, event.getActor());
        values.put(Property.MUSIC_DIRECTOR, event.getComposer());
        values.put(Property.LYRICIST, event.getLyricist());
        values.put(Property.PTYPE, event.getpType());
        values.put(Property.PID, event.getpId());
        values.put(Property.PNAME, event.getpName());

        return values;
    }

    /**
    * set Music Player Actions events
    * */
    public static MusicEventAnalytics setMusicPlayerEvents(final ContentMetadata contentMetadata,
                                                           final SongDetail songDetail,
                                                           final String playerEvent) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setContentType("");
        events.setAction(playerEvent);
        events.setPlayerType("");
        events.setContentName((songDetail != null) ? Utils.validateString(songDetail.getTitle()) : "");
        events.setContentId((songDetail != null) ? songDetail.getContentId() : 0);
        events.setCategory("");
        events.setSource("");
        events.setSourceDetails("");
        events.setGenre((songDetail != null) ? Utils.validateString(songDetail.getGenre()) : "");
        events.setLanguage((songDetail != null) ? Utils.validateString(songDetail.getLanguage()) : "");
        events.setYearOfRelease((songDetail != null) ? "" + Utils.validateLong(songDetail.getRelyear()) : "");
        events.setTempo((songDetail != null) ? Utils.validateString(songDetail.getAttributeTempo()) : "");
        events.setSinger((songDetail != null) ? Utils.validateString(songDetail.getSingers()) : "");
        events.setActor("");
        events.setComposer((songDetail != null) ? Utils.validateString(songDetail.getMusicDirector()) : "");
        events.setLyricist((songDetail != null) ? Utils.validateString(songDetail.getLyricist()) : "");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        return events;
    }

    /**
     * set Radio Player Actions events
     * */
    public static MusicEventAnalytics setRadioPlayerEvents(final ContentMetadata contentMetadata,
                                                           final String playerEvent) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setContentType("");
        events.setAction(playerEvent);
        events.setPlayerType("");
        events.setContentName((contentMetadata != null) ? Utils.validateString(contentMetadata.getTitle()) : "");
        events.setContentId((contentMetadata != null) ? Long.parseLong(Utils.validateString(contentMetadata.getContentId())) : 0);
        events.setCategory("");
        events.setSource("");
        events.setSourceDetails("");
        events.setGenre("");
        events.setLanguage((contentMetadata != null) ? Utils.validateString(contentMetadata.getLang()) : "");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger((contentMetadata != null) ? Utils.validateString(contentMetadata.getSingers()) : "");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        return events;
    }

    /**
     * set Podcast Player Actions events
     * */
    public static MusicEventAnalytics setPodcastPlayerEvents(final ContentMetadata contentMetadata,
                                                           final Podcast podcast,
                                                           final String playerEvent) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setContentType("");
        events.setAction(playerEvent);
        events.setPlayerType("");
        events.setContentName((podcast != null) ? Utils.validateString(podcast.getTitle()) : "");
        events.setContentId((podcast != null) ? podcast.getContentId() : 0);
        events.setCategory((podcast != null) ? "" + podcast.getCategory() : "");
        events.setSource("");
        events.setSourceDetails("");
        events.setGenre("");
        events.setLanguage((podcast != null) ? "" + podcast.getLanguage() : "");
        events.setYearOfRelease((podcast != null) ? "" + podcast.getRelease_year() : "");
        events.setTempo("");
        events.setSinger((contentMetadata != null) ? Utils.validateString(contentMetadata.getSingers()) : "");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        return events;
    }

    public static class Utils {
        public static String validateString(String givenString) {
            if (givenString != null && !givenString.isEmpty()) {
                return givenString;
            } else {
                return "";
            }
        }

        public static Long validateLong(Long givenLong) {
            if (givenLong != null) {
                return givenLong;
            } else {
                return Long.valueOf(0);
            }
        }

    }

    /**
     * set MyMusic song tab
     * **/
    public static MusicEventAnalytics myMusicSongArtworkTappedEvent(Content content, Song song, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((content!=null)?Utils.validateString(content.getTitle()):"");
        events.setBucketName("");
        events.setBucketId((content!=null)?song.getBucketId():"");
        events.setContentId((song!=null)?Long.parseLong(String.valueOf(content.getContentId())):0);
        events.setPositionWithBucket("");
        events.setSource((song!=null)?song.getSource():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "music song tab ArtworkTappedEvent : " + events.toString());
        return  events;

    }
    /**
     * Content MyMusic Album Tapped **/
    public static MusicEventAnalytics myMusicAlbumAndPlaylistArtWorkTappedEvent(final Content content, String artWorkType){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((content!=null)?Utils.validateString(content.getTitle()):"");
        events.setBucketName("");
        events.setBucketId("");
        events.setContentId((content!=null)?content.getContentId():0);
        events.setPositionWithBucket("");
        events.setSource((content!=null)?Utils.validateString(content.getType()):"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "playlist Album tab ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
   * Podcast Artwork Tapped **/
    public static MusicEventAnalytics myMusicPodcastAlbumArtworkTappedEvent(final PodcastContent podcastContent, String artWorkType){
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType((artWorkType!=null)?artWorkType:"");
        events.setContentName((podcastContent!=null)?Utils.validateString(podcastContent.getTitle()):"");
        events.setBucketName("");
        events.setBucketId("");
        events.setContentId((podcastContent!=null)?Utils.validateLong(Long.parseLong(podcastContent.getContent_id())):0);
        events.setPositionWithBucket("");
        events.setSource(artWorkType);
        events.setSourceDetails("");
        Log.v("EVENTs data", "podcast music tab ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
     * Playlist and Album artwork tapped event
     */
    public static MusicEventAnalytics playlistAndAlbumTabArtWorkEvent(Song song, Track track,  String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((song!=null)?song.getTitle():"");
        events.setBucketName("");
        events.setBucketId((song!=null)?song.getBucketId():"");
        events.setContentId((track!=null)?Long.parseLong(String.valueOf(track.getContentId())):0);
        events.setPositionWithBucket("");
        events.setSource((song!=null)?song.getSource():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "playlist And Album Tab ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
        * podcastItems Artwork Tapped from tab
     **/
    public static MusicEventAnalytics podcastItemsAlbumArtworkTappedEvent(Song song, Podcast podcastDetails, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((song!=null)?song.getTitle():"");
        events.setBucketName("");
        events.setBucketId((song!=null)?song.getBucketId():"");
        events.setContentId((podcastDetails!=null)?Long.parseLong(String.valueOf(podcastDetails.getContentId())):0);
        events.setPositionWithBucket("");
        events.setSource((song!=null)?song.getSource():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "podcast Tab ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
     * Personal Playlist ArtWork
     */
    public static MusicEventAnalytics PersonalPlayListArtworkTappedEvent(Song song, UserPlaylistResponse.Tracks track, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName("");
        events.setBucketName("");
        events.setBucketId((song!=null)?song.getBucketId():"");
        events.setContentId((track!=null)?Long.parseLong(String.valueOf(track.getId())):0);
        events.setPositionWithBucket("");
        events.setSource((song!=null)?song.getSource():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "personal playlist ArtworkTappedEvent : " + events.toString());
        return  events;

    }
    /**
     * topCharts artwork tapped
     */
    public static MusicEventAnalytics topChartsArtWorkEvent(Song song, ChartTrack chartTrack, Topcharts topCharts, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((topCharts!=null)?topCharts.getTitle():"");
        events.setBucketName("");
        events.setBucketId((song!=null)?song.getBucketId():"");
        events.setContentId((topCharts!=null)?Long.parseLong(String.valueOf(topCharts.getContent_id())):0);
        events.setPositionWithBucket("");
        events.setSource((topCharts!=null)?topCharts.getTitle():"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "Top Charts ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
     * Artist bucket on ArtWork Tapped
     */
    public static MusicEventAnalytics musicArtistBucketArtworkTappedEvent(ArtistBucketSong song, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((song!=null)?song.getTitle():"");
        events.setBucketName("");
        events.setBucketId("");
        events.setContentId((song!=null)?Long.parseLong(String.valueOf(song.getContent_id())):0);
        events.setPositionWithBucket("");
        events.setSource(artWorkType);
        events.setSourceDetails("");
        Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    /**
     * radio player on Artwork Tapped
     */
    public static MusicEventAnalytics radioPlayerArtWorkEvent(RadioModel.Response.Data data, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName((data!=null)?Utils.validateString(data.getContentTitle()):"");
        events.setBucketName("");
        events.setBucketId("");
        events.setContentId((data!=null)?Long.parseLong(data.getId()):0);
        events.setPositionWithBucket("");
        events.setSource("");
        events.setSourceDetails("");
        Log.v("EVENTs data", "Radio Player ArtworkTappedEvent : " + events.toString());
        return  events;
    }

    /**
     * playlist AddToFavourite Event
     */
    public static MusicEventAnalytics playlistAddedToFavouriteEvent(Playlist playlist, String category,String contentId,String typeId) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(category);
        events.setPlaylistName((playlist!=null)?playlist.getTitle():"");
        events.setContentType((playlist!=null)?playlist.getTitle():"");
        events.setGenre("");
        events.setMood("");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId(Utils.validateLong(Long.parseLong(contentId)));
        events.setTab("");
        events.setSource(typeId);
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "playlist addedToFavouriteEvent : " + events.toString());
        return  events;
    }
    /**
     * top Charts AddToFavourites
     */
    public static MusicEventAnalytics topChartsAddedToFavouriteEvent(Topcharts topCharts, String contentId, String typeId,String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(artWorkType);
        events.setPlaylistName((topCharts!=null)?topCharts.getTitle():"");
        events.setContentType(typeId);
        events.setGenre("");
        events.setMood("");
        events.setLanguage((topCharts!=null)?Utils.validateString(topCharts.getLanguage()):"");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId(Utils.validateLong(Long.parseLong(contentId)));
        events.setTab("");
        events.setSource("");
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "topCharts addedToFavouriteEvent : " + events.toString());
        return  events;
    }
    /**
     * podcast AddToFavourites
     */
    public static MusicEventAnalytics podCastAddedToFavouriteEvent(Podcast podcastDetails, String contentId, String typeId, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(artWorkType);
        events.setPlaylistName((podcastDetails!=null)?podcastDetails.getTitle():"");
        events.setContentType(typeId);
        events.setGenre("");
        events.setMood("");
        events.setLanguage((podcastDetails!=null)?Utils.validateString(podcastDetails.getLanguage()):"");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId(Utils.validateLong(Long.parseLong(contentId)));
        events.setTab("");
        events.setSource("");
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "podcast addedToFavouriteEvent : " + events.toString());
        return  events;
    }
    /**
     * Artist bucket AddToFavourites
     */
    public static MusicEventAnalytics artistAddedToFavouriteEvent(ArtistBucketResponse artistBucket, String mArtistId, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(artWorkType);
        events.setPlaylistName("");
        events.setContentType("");
        events.setGenre("");
        events.setMood("");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId(Utils.validateLong(Long.parseLong(mArtistId)));
        events.setTab("");
        events.setSource("");
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "addedToFavouriteEvent : " + events.toString());
        return  events;
    }
    /**
     * album AddToFavourites
     */
    public static MusicEventAnalytics albumAddedToFavouriteEvent(AlbumDetail albumDetails, String album, String contentId, ContentMetadata contentMetadata) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(contentMetadata.getContainerType());
        events.setPlaylistName("");
        events.setContentType((albumDetails!=null)?albumDetails.getMusicalbum().getTitle():"");
        events.setGenre("");
        events.setMood("");
        events.setLanguage((albumDetails!=null)?albumDetails.getMusicalbum().getLanguage():"");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId((albumDetails!=null)?Utils.validateLong(albumDetails.getMusicalbum().getContentId()):0);
        events.setTab("");
        events.setSource(album);
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "addedToFavouriteEvent : " + events.toString());
        return  events;
    }

    /**
     * songQueue add to favourites
     */

    public static MusicEventAnalytics addedToFavouriteSongQueueEvent(ContentMetadata contentMetadata, String songs) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(contentMetadata.getContainerType());
        events.setPlaylistName("");
        events.setContentType((contentMetadata!=null)?contentMetadata.getContentTitle():"");
        events.setGenre("");
        events.setMood("");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId((contentMetadata!=null)?Long.parseLong(contentMetadata.getContentId()):0);
        events.setTab("");
        events.setSource(songs);
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "addedToFavouriteEvent : " + events.toString());
        return  events;
    }
    /**
     * MyDownloads SongTab ArtWorkTapped
     */
    public static MusicEventAnalytics downloadSongArtWorkTappedEvent(Song song, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setArtWorkType(artWorkType);
        events.setContentName("");
        events.setBucketName("");
        events.setBucketId((song!=null)?Utils.validateString(song.getBucketId()):"");
        events.setContentId((song!=null)?Long.parseLong(String.valueOf(song.getSongId())):0);
        events.setPositionWithBucket("");
        events.setSource((song!=null)?Utils.validateString(song.getBucketId()):"");
        events.setSourceDetails("");
        Log.v("EVENTs data", "Artist bucket details on ArtworkTappedEvent : " + events.toString());
        return  events;
    }
    public static MusicEventAnalytics artistListArtWorkTappedEvent(ArtistBucketSong artistBucketSong, String artWorkType) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setCategory(artWorkType);
        events.setPlaylistName((artistBucketSong!=null)?artistBucketSong.getTitle():"");
        events.setContentType("");
        events.setGenre((artistBucketSong!=null)?Utils.validateString(artistBucketSong.getGenre()):"");
        events.setMood((artistBucketSong!=null)?Utils.validateString(artistBucketSong.getGenre()):"");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setContentId(Utils.validateLong(Long.parseLong(artistBucketSong.getContent_id())));
        events.setTab("");
        events.setSource(artWorkType);
        events.setSourceDetails("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "podcast addedToFavouriteEvent : " + events.toString());
        return  events;
    }

    /**
     * Music Download Events by PlaylistAndAlbumFragment
     */
    public static MusicEventAnalytics musicDownloadByPlaylistAndAlbumEvent(Playlist playlist, ContentMetadata contentMetadata, AudioQualityPojo audioQualityPojo, String contentType, OfflineDLPojo offlineDLPojo) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource("");
        events.setSourceDetails("");
        events.setContentName((offlineDLPojo!=null)?Utils.validateString(offlineDLPojo.getTrackTitle()):"");
        events.setContentId((offlineDLPojo.getTrackId()!=null)?Long.parseLong(offlineDLPojo.getTrackId()):0);
        events.setPlaylistName((playlist!=null)?Utils.validateString(playlist.getTitle()):"");
        events.setPlaylistId((playlist!=null)?playlist.getContentId():0);
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage("");
        events.setYearOfRelease((playlist!=null)?String.valueOf(playlist.getReleaseYear()):"");
        events.setTempo("");
        events.setSinger((offlineDLPojo!=null)?offlineDLPojo.getTrackSubTitle():"");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setDownloadQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        if(contentMetadata.getContainerType()==null){
            events.setContentType("Audio");
        }else{events.setContentType(contentMetadata.getContainerType());}
        events.setAlbumId((contentMetadata!=null)?String.valueOf(contentMetadata.getAlbumId()):"");
        events.setAlbumName((contentMetadata!=null)? contentMetadata.getAlbumName() : "");
        events.setTab("");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "playlist downloadEvent : " + events.toString());
        return  events;
    }

    /**
     * topCharts for download
     */
    public static MusicEventAnalytics musicDownloadByTopChartsEvent(Topcharts topCharts, String typeId, AudioQualityPojo audioQualityPojo, ContentMetadata chartTrack, OfflineDLPojo offlineDLPojo) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource("");
        events.setSourceDetails("");
        events.setContentName((offlineDLPojo!=null)?Utils.validateString(offlineDLPojo.getTrackTitle()):"");
        events.setContentId((offlineDLPojo.getTrackId()!=null)?Long.parseLong(offlineDLPojo.getTrackId()):0);
        events.setPlaylistName("");
        events.setPlaylistId(0L);
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage((topCharts!=null)?topCharts.getLanguage():"");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger((offlineDLPojo.getTrackSubTitle()!=null)?Utils.validateString(offlineDLPojo.getTrackSubTitle()):"");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setDownloadQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        events.setContentType(typeId);
        events.setAlbumId((chartTrack!=null)?String.valueOf(chartTrack.getAlbumId()):"");
        events.setAlbumName((chartTrack!=null)?Utils.validateString(chartTrack.getAlbumName()):"");
        events.setTab("");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize((topCharts!=null)?String.valueOf(topCharts.getTracks_count()):"");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "music downloadEvent : " + events.toString());
        return  events;
    }

    /**
     * set download from Nowplaying screen
     */
    public static MusicEventAnalytics musicDownloadNowPlayingEvent(ContentMetadata contentMetadata, Podcast podcastDetails, AudioQualityPojo audioQualityPojo, String typeIdSong, OfflineDLPojo offlineDLPojo) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource(Utils.validateString(typeIdSong));
        events.setSourceDetails("");
        events.setContentName((offlineDLPojo!=null)?Utils.validateString(offlineDLPojo.getTrackTitle()):"");
        events.setContentId((offlineDLPojo.getTrackId()!=null)?Long.parseLong(offlineDLPojo.getTrackId()):0);
        events.setPlaylistName("");
        events.setPlaylistId(contentMetadata.getAlbumId());
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage(contentMetadata.getLang());
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger((offlineDLPojo!=null)?offlineDLPojo.getTrackSubTitle():"");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setDownloadQuality((audioQualityPojo != null) ? audioQualityPojo.getQualityTitle() : "");
        events.setContentType("Audio");
        events.setAlbumId((contentMetadata!=null)?String.valueOf(contentMetadata.getAlbumId()):"");
        events.setAlbumName((contentMetadata!=null)? contentMetadata.getAlbumName() : "");
        events.setTab("");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "music downloadEvent : " + events.toString());
        return  events;
    }
    /**
     * download from album screen
     */
    public static MusicEventAnalytics musicDownloadAlbumEvent(AlbumDetail albumDetails, ContentMetadata contentMetadata, Playlist playlist, AudioQualityPojo downloadQualityPojo, String contentType, OfflineDLPojo offlineDLPojo) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource("");
        events.setSourceDetails("");
        events.setContentName((offlineDLPojo!=null?Utils.validateString(offlineDLPojo.getTrackTitle()):""));
        events.setContentId((offlineDLPojo!=null)?Utils.validateLong(Long.valueOf(offlineDLPojo.getTrackId())):0);
        events.setPlaylistName((playlist!=null)?playlist.getTitle():"");
        events.setPlaylistId((playlist!=null)?playlist.getContentId():0);
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage((albumDetails!=null)?albumDetails.getMusicalbum().getLanguage():"");
        events.setYearOfRelease((albumDetails!=null)?String.valueOf(albumDetails.getMusicalbum().getReleaseYear()):"");
        events.setTempo("");
        events.setSinger((contentMetadata!=null)?contentMetadata.getSingers():"");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setDownloadQuality((downloadQualityPojo != null) ? downloadQualityPojo.getQualityTitle() : "");
        events.setContentType("Audio");
        events.setAlbumId((albumDetails!=null)?String.valueOf(albumDetails.getMusicalbum().getContentId()):"");
        events.setAlbumName((albumDetails!=null)? albumDetails.getMusicalbum().getTitle() : "");
        events.setTab("");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "album music downloadEvent : " + events.toString());
        return events;
    }

    /**
     *  download event for personal playlist frag.
     */
    public static MusicEventAnalytics musicDownloadByPersonalPlaylistEvent(UserPlaylistResponse.Tracks userPlaylistTracks, AudioQualityPojo downloadQualityPojo, String typeIdPlaylist, String playlistID, String playlistTitle) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource(Utils.validateString(typeIdPlaylist));
        events.setSourceDetails("");
        events.setContentName(Utils.validateString(userPlaylistTracks.getName()));
        events.setContentId((userPlaylistTracks!=null)?Long.parseLong(userPlaylistTracks.getId()):0);
        events.setPlaylistName(playlistTitle);
        events.setPlaylistId((playlistID!=null && !playlistID.isEmpty())?Long.parseLong(playlistID):0);
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger("");
        events.setActor("");
        events.setComposer("");
        events.setLyricist("");
        events.setDownloadQuality((downloadQualityPojo != null) ? downloadQualityPojo.getQualityTitle() : "");
        events.setContentType("Audio");
        events.setAlbumId("");
        events.setAlbumName("");
        events.setTab("");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "album music downloadEvent : " + events.toString());
        return events;
    }

    public static HashMap<String, Object> getMusicDownloadedEventValues(MusicEventAnalytics event){
        HashMap<String, Object> values = new HashMap<>();
        values.put(Property.SOURCE,event.getSource());
        values.put(Property.SOURCE_DETAILS,event.getSourceDetails());
        values.put(Property.CONTENT_NAME, event.getContentName());
        values.put(Property.CONTENT_ID,event.getContentId());
        values.put(Property.PLAYLIST_NAME,event.getPlaylistName());
        values.put(Property.PLAYLIST_ID,event.getPlaylistId());
        values.put(Property.ORIGINAL_ALBUM_NAME,event.getOriginalAlbumName());
        values.put(Property.GENRE,event.getGenre());
        values.put(Property.LANGUAGE,event.getLanguage());
        values.put(Property.YEAR_OF_RELEASE,event.getYearOfRelease());
        values.put(Property.TEMPO,event.getTempo());
        values.put(Property.SINGER,event.getSinger());
        values.put(Property.ACTION,event.getAction());
        values.put(Property.MUSIC_DIRECTOR,event.getComposer());
        values.put(Property.LYRICIST,event.getLyricist());
        values.put(Property.DOWNLOAD_QUALITY,event.getDownloadQuality());
        values.put(Property.CONTENT_TYPE,event.getContentType());
        values.put(Property.ALBUM_ID,event.getAlbumId());
        values.put(Property.ALBUM_NAME,event.getAlbumName());
        values.put(Property.TAB,event.getTab());
        values.put(Property.CAROUSEL_POSITION,event.getCarousel_Position());
        values.put(Property.CONTENT_POSITION,event.getContentPosition());
        values.put(Property.SHUFFLE,event.getShuffle());
        values.put(Property.REPEAT,event.getRepeat());
        values.put(Property.PLAYBACK_SOURCE,event.getPlayBackSource());
        values.put(Property.PTYPE,event.getpType());
        values.put(Property.PID,event.getpId());
        values.put(Property.PNAME,event.getpName());
        return values;
    }

    /**
     * Music download completed
     */
    public static MusicEventAnalytics musicDownloadReceiverEvent(ContentMetadata mContentMetadata, SongDetail mSongDetail, AudioQualityPojo downloadQualityPojo, String downloadStatus, OfflineDLPojo offlineDLPojo) {
        MusicEventAnalytics events = new MusicEventAnalytics();
        events.setSource("");
        events.setSourceDetails("");
        events.setContentName((offlineDLPojo!=null)?Utils.validateString(offlineDLPojo.getTrackTitle()):"");
        events.setContentId((offlineDLPojo.getTrackId()!=null)?Long.parseLong(offlineDLPojo.getTrackId()):0);
        events.setPlaylistName("");
        events.setPlaylistId(0L);
        events.setOriginalAlbumName("");
        events.setGenre("");
        events.setLanguage("");
        events.setYearOfRelease("");
        events.setTempo("");
        events.setSinger((offlineDLPojo!=null)?Utils.validateString(offlineDLPojo.getTrackSubTitle()):"");
        events.setActor("");
        events.setComposer("");
        events.setLyricist((mSongDetail!=null)?Utils.validateString(mSongDetail.getLyricist()):"");
        events.setDownloadQuality((downloadQualityPojo != null) ? downloadQualityPojo.getQualityTitle() : "");
        events.setContentType("Audio");
        events.setAlbumId((mSongDetail!=null)?""+Utils.validateLong(mSongDetail.getAlbumId()):"");
        events.setAlbumName((mSongDetail!=null)?Utils.validateString(mSongDetail.getAlbumName()):"");
        events.setTab((mSongDetail!=null)?Utils.validateString(mSongDetail.getSongTags()):"");
        events.setCarousel_Position("");
        events.setContentPosition("");
        events.setShuffle("");
        events.setRepeat("");
        events.setPlayBackSource("");
        events.setpType("");
        events.setpId("");
        events.setpName("");
        events.setSize("");
        events.setCoreTab("");
        events.setSubTab("");
        Log.v("EVENTs data", "downloadStatus : "+downloadStatus +"...."+ events.toString());
        return events;
    }

}
