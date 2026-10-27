.class public Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;
.super Ljava/lang/Object;
.source "LogicRegisterMap.java"


# annotations
.annotation runtime Lcom/xiaopeng/aicabin/logic/LogicRegistry;
.end annotation


# static fields
.field private static mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final registerMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->mCache:Ljava/util/Map;

    .line 20
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/play_current"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.PlayCurrentLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/loadnextpagelogic"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.SupportRandomLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/playmusic.list_listSign_index_info"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.PlayMusicListListSignIndexInfoLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/has_next_page"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.HasNextPageLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/play_music"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.PlayMusicLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/switch_next_mode"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.SwitchNextModeLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.ms_opt/load_next_page"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.LoadNextPageLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.play/getreplayfromnet"

    const-string v2, "com.xiaopeng.musicradio.music.logic.playopt.ReplayFromNetLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/new_song_labels"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.NewSongLabelsLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/singer_index"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.SingerIndexLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/netease_zone_daily_recommend"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.NeteaseZoneDailyRecommendLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/collect_detail"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.CollectDetailLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/kugou_zone_category_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.KugouZoneCategoryListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/artist_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.ArtistSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/new_song_index"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.NewSongIndexLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/kugou_zone_item_more"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.KugouZoneItemMoreLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/collects_collect_labels"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.CollectsCollectLabelsLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/rand_music"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.RandMusicLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/daily_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.DailySongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/new_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.NewSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.play/getplaylist"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.MusicGetPlayListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/collect_detail_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.CollectDetailListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/netease_zone_dolby_all"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.NeteaseZoneDolbyAllLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/collect_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.CollectSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/album_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.AlbumListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/xp_play_music"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.XpPlayMusicLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.play/getplaylistsign"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.MusicGetListSignLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/kugou_zone_by_zone_id"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.KugouZoneByZoneIdLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/singer_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.SingerListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/rank_music_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.RankMusicSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.play/getplayinginfo"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.MusicGetPlayingInfoBizLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/personal_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.PersonalSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/hot_artists_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.HotArtistsListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/category_collect"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.CategoryCollectLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/album_song_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.AlbumSongListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.http/kugoo_singer_list"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.KugooSingerListLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.play/getbtplayinginfo"

    const-string v2, "com.xiaopeng.musicradio.music.logic.xpmodel.BtMusicGetPlayingInfoBizLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.blue/is_phone_music_close"

    const-string v2, "com.xiaopeng.musicradio.music.logic.bluetooth.IsPhoneMusicCloseLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.blue/change_to_bluetooth"

    const-string v2, "com.xiaopeng.musicradio.music.logic.bluetooth.ChangeToBluetoothLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.blue/is_incall"

    const-string v2, "com.xiaopeng.musicradio.music.logic.bluetooth.IsInCallLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.blue/is_bt_playing"

    const-string v2, "com.xiaopeng.musicradio.music.logic.bluetooth.IsBtPlayingLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    const-string v1, "logic://musicradio.music.blue/is_bt_music_connect"

    const-string v2, "com.xiaopeng.musicradio.music.logic.bluetooth.IsBtMusicConnectLogic"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 69
    :cond_0
    sget-object v1, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAllSupportFunction()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->registerMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 93
    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method public static release()V
    .locals 1

    .line 83
    sget-object v0, Lcom/xiaopeng/musicradio/music/logic/playopt/LogicRegisterMap;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
