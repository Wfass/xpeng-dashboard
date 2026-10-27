.class public Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;
.super Ljava/lang/Object;
.source "NeteaseLatelyMusicInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AlbumId:Lorg/greenrobot/greendao/Property;

.field public static final ArtistId:Lorg/greenrobot/greendao/Property;

.field public static final CacheId:Lorg/greenrobot/greendao/Property;

.field public static final CanPlay:Lorg/greenrobot/greendao/Property;

.field public static final Data:Lorg/greenrobot/greendao/Property;

.field public static final FileList:Lorg/greenrobot/greendao/Property;

.field public static final Hash:Lorg/greenrobot/greendao/Property;

.field public static final InfoNeed:Lorg/greenrobot/greendao/Property;

.field public static final ListenUrlRefreshTime:Lorg/greenrobot/greendao/Property;

.field public static final Logo:Lorg/greenrobot/greendao/Property;

.field public static final LrcData:Lorg/greenrobot/greendao/Property;

.field public static final MusicFrom:Lorg/greenrobot/greendao/Property;

.field public static final MusicFromTitle:Lorg/greenrobot/greendao/Property;

.field public static final NeedVip:Lorg/greenrobot/greendao/Property;

.field public static final OldMusicFrom:Lorg/greenrobot/greendao/Property;

.field public static final OldMusicFromTitle:Lorg/greenrobot/greendao/Property;

.field public static final PlayTime:Lorg/greenrobot/greendao/Property;

.field public static final Singer:Lorg/greenrobot/greendao/Property;

.field public static final Song:Lorg/greenrobot/greendao/Property;

.field public static final SongId:Lorg/greenrobot/greendao/Property;

.field public static final SongPlayTime:Lorg/greenrobot/greendao/Property;

.field public static final TryFileInfo:Lorg/greenrobot/greendao/Property;

.field public static final Ts:Lorg/greenrobot/greendao/Property;

.field public static final Uid:Lorg/greenrobot/greendao/Property;

.field public static final Version:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "cacheId"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->CacheId:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "hash"

    const/4 v11, 0x0

    const-string v12, "HASH"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "songId"

    const/4 v5, 0x0

    const-string v6, "SONG_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->SongId:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "song"

    const-string v12, "SONG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Song:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "singer"

    const-string v6, "SINGER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Singer:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "logo"

    const-string v12, "LOGO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Logo:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "uid"

    const-string v6, "UID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x7

    const-string v10, "musicFrom"

    const-string v12, "MUSIC_FROM"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    const-string v4, "oldMusicFrom"

    const-string v6, "OLD_MUSIC_FROM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->OldMusicFrom:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "musicFromTitle"

    const-string v12, "MUSIC_FROM_TITLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->MusicFromTitle:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "oldMusicFromTitle"

    const-string v6, "OLD_MUSIC_FROM_TITLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->OldMusicFromTitle:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    const-string v10, "ts"

    const-string v12, "TS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xc

    const-string v4, "data"

    const-string v6, "DATA"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xd

    const-string v10, "lrcData"

    const-string v12, "LRC_DATA"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->LrcData:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xe

    const-string v4, "canPlay"

    const-string v6, "CAN_PLAY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->CanPlay:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xf

    const-string v10, "artistId"

    const-string v12, "ARTIST_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->ArtistId:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x10

    const-string v4, "infoNeed"

    const-string v6, "INFO_NEED"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->InfoNeed:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x11

    const-string v10, "needVip"

    const-string v12, "NEED_VIP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->NeedVip:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x12

    const-string v4, "playTime"

    const-string v6, "PLAY_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->PlayTime:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x13

    const-string v10, "albumId"

    const-string v12, "ALBUM_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->AlbumId:Lorg/greenrobot/greendao/Property;

    .line 52
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x14

    const-string v4, "listenUrlRefreshTime"

    const-string v6, "LISTEN_URL_REFRESH_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->ListenUrlRefreshTime:Lorg/greenrobot/greendao/Property;

    .line 53
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x15

    const-string v10, "version"

    const-string v12, "VERSION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->Version:Lorg/greenrobot/greendao/Property;

    .line 54
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x16

    const-string v4, "fileList"

    const-string v6, "FILE_LIST"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->FileList:Lorg/greenrobot/greendao/Property;

    .line 55
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x17

    const-string v10, "tryFileInfo"

    const-string v12, "TRY_FILE_INFO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->TryFileInfo:Lorg/greenrobot/greendao/Property;

    .line 56
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x18

    const-string v4, "songPlayTime"

    const-string v6, "SONG_PLAY_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;->SongPlayTime:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
