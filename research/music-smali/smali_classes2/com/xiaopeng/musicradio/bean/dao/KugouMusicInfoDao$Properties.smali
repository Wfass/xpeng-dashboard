.class public Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;
.super Ljava/lang/Object;
.source "KugouMusicInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final AlbumId:Lorg/greenrobot/greendao/Property;

.field public static final AlbumLogo:Lorg/greenrobot/greendao/Property;

.field public static final AlbumName:Lorg/greenrobot/greendao/Property;

.field public static final Alg:Lorg/greenrobot/greendao/Property;

.field public static final Append:Lorg/greenrobot/greendao/Property;

.field public static final ArtistId:Lorg/greenrobot/greendao/Property;

.field public static final CanFold:Lorg/greenrobot/greendao/Property;

.field public static final CanPlay:Lorg/greenrobot/greendao/Property;

.field public static final Creatime:Lorg/greenrobot/greendao/Property;

.field public static final Data:Lorg/greenrobot/greendao/Property;

.field public static final Duration:Lorg/greenrobot/greendao/Property;

.field public static final EndTime:Lorg/greenrobot/greendao/Property;

.field public static final FileList:Lorg/greenrobot/greendao/Property;

.field public static final Hash:Lorg/greenrobot/greendao/Property;

.field public static final Hot:Lorg/greenrobot/greendao/Property;

.field public static final InfoNeed:Lorg/greenrobot/greendao/Property;

.field public static final InfoType:Lorg/greenrobot/greendao/Property;

.field public static final IsShortListen:Lorg/greenrobot/greendao/Property;

.field public static final ListenUrlRefreshTime:Lorg/greenrobot/greendao/Property;

.field public static final Logo:Lorg/greenrobot/greendao/Property;

.field public static final LrcData:Lorg/greenrobot/greendao/Property;

.field public static final MusicFrom:Lorg/greenrobot/greendao/Property;

.field public static final MusicFromTitle:Lorg/greenrobot/greendao/Property;

.field public static final MusicSource:Lorg/greenrobot/greendao/Property;

.field public static final NeedVip:Lorg/greenrobot/greendao/Property;

.field public static final OldCreateTime:Lorg/greenrobot/greendao/Property;

.field public static final OldMusicFrom:Lorg/greenrobot/greendao/Property;

.field public static final OldMusicFromTitle:Lorg/greenrobot/greendao/Property;

.field public static final Path:Lorg/greenrobot/greendao/Property;

.field public static final PlayCount:Lorg/greenrobot/greendao/Property;

.field public static final PlayTime:Lorg/greenrobot/greendao/Property;

.field public static final Playable:Lorg/greenrobot/greendao/Property;

.field public static final Quality:Lorg/greenrobot/greendao/Property;

.field public static final SearchSongText:Lorg/greenrobot/greendao/Property;

.field public static final ShortDurationS:Lorg/greenrobot/greendao/Property;

.field public static final Singer:Lorg/greenrobot/greendao/Property;

.field public static final Size:Lorg/greenrobot/greendao/Property;

.field public static final Song:Lorg/greenrobot/greendao/Property;

.field public static final SongExtraId:Lorg/greenrobot/greendao/Property;

.field public static final SongId:Lorg/greenrobot/greendao/Property;

.field public static final SongPlayTime:Lorg/greenrobot/greendao/Property;

.field public static final SourceID:Lorg/greenrobot/greendao/Property;

.field public static final Style:Lorg/greenrobot/greendao/Property;

.field public static final TryFileInfo:Lorg/greenrobot/greendao/Property;

.field public static final TryPlayable:Lorg/greenrobot/greendao/Property;

.field public static final Ts:Lorg/greenrobot/greendao/Property;

.field public static final Uid:Lorg/greenrobot/greendao/Property;

.field public static final Version:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 32
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "hash"

    const/4 v4, 0x1

    const-string v5, "HASH"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Hash:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "albumId"

    const/4 v11, 0x0

    const-string v12, "ALBUM_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->AlbumId:Lorg/greenrobot/greendao/Property;

    .line 34
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    const-string v4, "duration"

    const/4 v5, 0x0

    const-string v6, "DURATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Duration:Lorg/greenrobot/greendao/Property;

    .line 35
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "song"

    const-string v12, "SONG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Song:Lorg/greenrobot/greendao/Property;

    .line 36
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "albumName"

    const-string v6, "ALBUM_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->AlbumName:Lorg/greenrobot/greendao/Property;

    .line 37
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "albumLogo"

    const-string v12, "ALBUM_LOGO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->AlbumLogo:Lorg/greenrobot/greendao/Property;

    .line 38
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "artistId"

    const-string v6, "ARTIST_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->ArtistId:Lorg/greenrobot/greendao/Property;

    .line 39
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x7

    const-string v10, "data"

    const-string v12, "DATA"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Data:Lorg/greenrobot/greendao/Property;

    .line 40
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "singer"

    const-string v6, "SINGER"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Singer:Lorg/greenrobot/greendao/Property;

    .line 41
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "logo"

    const-string v12, "LOGO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Logo:Lorg/greenrobot/greendao/Property;

    .line 42
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "lrcData"

    const-string v6, "LRC_DATA"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->LrcData:Lorg/greenrobot/greendao/Property;

    .line 43
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xb

    const-string v10, "musicFrom"

    const-string v12, "MUSIC_FROM"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->MusicFrom:Lorg/greenrobot/greendao/Property;

    .line 44
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xc

    const-string v4, "oldMusicFrom"

    const-string v6, "OLD_MUSIC_FROM"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->OldMusicFrom:Lorg/greenrobot/greendao/Property;

    .line 45
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xd

    const-string v10, "oldCreateTime"

    const-string v12, "OLD_CREATE_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->OldCreateTime:Lorg/greenrobot/greendao/Property;

    .line 46
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0xe

    const-string v4, "size"

    const-string v6, "SIZE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Size:Lorg/greenrobot/greendao/Property;

    .line 47
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0xf

    const-string v10, "infoNeed"

    const-string v12, "INFO_NEED"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->InfoNeed:Lorg/greenrobot/greendao/Property;

    .line 48
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x10

    const-string v4, "quality"

    const-string v6, "QUALITY"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Quality:Lorg/greenrobot/greendao/Property;

    .line 49
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x11

    const-string v10, "uid"

    const-string v12, "UID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Uid:Lorg/greenrobot/greendao/Property;

    .line 50
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x12

    const-string v4, "ts"

    const-string v6, "TS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Ts:Lorg/greenrobot/greendao/Property;

    .line 51
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x13

    const-string v10, "canPlay"

    const-string v12, "CAN_PLAY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->CanPlay:Lorg/greenrobot/greendao/Property;

    .line 52
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x14

    const-string v4, "style"

    const-string v6, "STYLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Style:Lorg/greenrobot/greendao/Property;

    .line 53
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x15

    const-string v10, "playTime"

    const-string v12, "PLAY_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->PlayTime:Lorg/greenrobot/greendao/Property;

    .line 54
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x16

    const-string v4, "creatime"

    const-string v6, "CREATIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Creatime:Lorg/greenrobot/greendao/Property;

    .line 55
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x17

    const-string v10, "endTime"

    const-string v12, "END_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->EndTime:Lorg/greenrobot/greendao/Property;

    .line 56
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x18

    const-string v4, "musicFromTitle"

    const-string v6, "MUSIC_FROM_TITLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->MusicFromTitle:Lorg/greenrobot/greendao/Property;

    .line 57
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x19

    const-string v10, "oldMusicFromTitle"

    const-string v12, "OLD_MUSIC_FROM_TITLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->OldMusicFromTitle:Lorg/greenrobot/greendao/Property;

    .line 58
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x1a

    const-string v4, "playCount"

    const-string v6, "PLAY_COUNT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->PlayCount:Lorg/greenrobot/greendao/Property;

    .line 59
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x1b

    const-string v10, "infoType"

    const-string v12, "INFO_TYPE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->InfoType:Lorg/greenrobot/greendao/Property;

    .line 60
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x1c

    const-string v4, "canFold"

    const-string v6, "CAN_FOLD"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->CanFold:Lorg/greenrobot/greendao/Property;

    .line 61
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x1d

    const-string v10, "songId"

    const-string v12, "SONG_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->SongId:Lorg/greenrobot/greendao/Property;

    .line 62
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x1e

    const-string v4, "searchSongText"

    const-string v6, "SEARCH_SONG_TEXT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->SearchSongText:Lorg/greenrobot/greendao/Property;

    .line 63
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Boolean;

    const/16 v8, 0x1f

    const-string v10, "isShortListen"

    const-string v12, "IS_SHORT_LISTEN"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->IsShortListen:Lorg/greenrobot/greendao/Property;

    .line 64
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x20

    const-string v4, "shortDurationS"

    const-string v6, "SHORT_DURATION_S"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->ShortDurationS:Lorg/greenrobot/greendao/Property;

    .line 65
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x21

    const-string v10, "needVip"

    const-string v12, "NEED_VIP"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->NeedVip:Lorg/greenrobot/greendao/Property;

    .line 66
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x22

    const-string v4, "musicSource"

    const-string v6, "MUSIC_SOURCE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->MusicSource:Lorg/greenrobot/greendao/Property;

    .line 67
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x23

    const-string v10, "tryFileInfo"

    const-string v12, "TRY_FILE_INFO"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->TryFileInfo:Lorg/greenrobot/greendao/Property;

    .line 68
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x24

    const-string v4, "listenUrlRefreshTime"

    const-string v6, "LISTEN_URL_REFRESH_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->ListenUrlRefreshTime:Lorg/greenrobot/greendao/Property;

    .line 69
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x25

    const-string v10, "append"

    const-string v12, "APPEND"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Append:Lorg/greenrobot/greendao/Property;

    .line 70
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x26

    const-string v4, "tryPlayable"

    const-string v6, "TRY_PLAYABLE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->TryPlayable:Lorg/greenrobot/greendao/Property;

    .line 71
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x27

    const-string v10, "playable"

    const-string v12, "PLAYABLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Playable:Lorg/greenrobot/greendao/Property;

    .line 72
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x28

    const-string v4, "hot"

    const-string v6, "HOT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Hot:Lorg/greenrobot/greendao/Property;

    .line 73
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x29

    const-string v10, "songPlayTime"

    const-string v12, "SONG_PLAY_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->SongPlayTime:Lorg/greenrobot/greendao/Property;

    .line 74
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x2a

    const-string v4, "fileList"

    const-string v6, "FILE_LIST"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->FileList:Lorg/greenrobot/greendao/Property;

    .line 75
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x2b

    const-string v10, "alg"

    const-string v12, "ALG"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Alg:Lorg/greenrobot/greendao/Property;

    .line 76
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x2c

    const-string v4, "path"

    const-string v6, "PATH"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Path:Lorg/greenrobot/greendao/Property;

    .line 77
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x2d

    const-string v10, "sourceID"

    const-string v12, "SOURCE_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->SourceID:Lorg/greenrobot/greendao/Property;

    .line 78
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x2e

    const-string v4, "songExtraId"

    const-string v6, "SONG_EXTRA_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->SongExtraId:Lorg/greenrobot/greendao/Property;

    .line 79
    new-instance v0, Lorg/greenrobot/greendao/Property;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v8, 0x2f

    const-string v10, "version"

    const-string v12, "VERSION"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;->Version:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
