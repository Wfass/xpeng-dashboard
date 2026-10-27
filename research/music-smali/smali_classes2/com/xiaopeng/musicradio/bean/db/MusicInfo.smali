.class public Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "MusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INFO_TYPE_STORAGE_FOREVER:I = 0x2

.field public static final INFO_TYPE_STORAGE_TEMP:I = 0x1

.field public static final INFO_TYPE_TEMP:I = 0x0

.field public static final MUISC_FROM_SURPRISE_ST:I = 0x5

.field public static final MUSIC_FROM_ALBUM_LOVE:I = 0x1e

.field public static final MUSIC_FROM_BLUE:I = 0x14

.field public static final MUSIC_FROM_DOLBY:I = 0x3e

.field public static final MUSIC_FROM_FRIEND:I = 0x2

.field public static final MUSIC_FROM_HISTORY:I = 0xa

.field public static final MUSIC_FROM_IMPORT_ALBUM:I = 0x23

.field public static final MUSIC_FROM_KUGOU_ZONE:I = 0x3f

.field public static final MUSIC_FROM_LOCAL:I = 0x3c

.field public static final MUSIC_FROM_LOVE:I = 0x32

.field public static final MUSIC_FROM_NONE:I = 0x0

.field public static final MUSIC_FROM_SEARCH_ONE:I = 0x28

.field public static final MUSIC_FROM_USB:I = 0x3d

.field public static final MUSIC_FROM_USER_ALBUM:I = 0x24

.field public static final TAG_MUSIC:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private accountType:I

.field private albumId:Ljava/lang/String;

.field private albumLogo:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private alg:Ljava/lang/String;

.field private append:Z

.field private artistId:Ljava/lang/String;

.field private btFake:Z

.field private canFold:Z

.field private canPlay:Z

.field private canUp:Z

.field private creatime:J

.field private data:Ljava/lang/String;

.field private duration:J

.field private endTime:J

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation
.end field

.field private fileSize:J

.field private from:I

.field private hasCopyright:Ljava/lang/Boolean;

.field private hasParse:Z

.field private hash:Ljava/lang/String;

.field private hot:Z

.field private httpCache:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private infoNeed:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private infoType:I

.field private isBipartite:Z

.field private isCustomAdded:Z

.field private isShortListen:Ljava/lang/Boolean;

.field private listenUrlRefreshTime:J

.field private logo:Ljava/lang/String;

.field private lrcData:Ljava/lang/String;

.field private musicFrom:I

.field private musicFromTitle:Ljava/lang/String;

.field private musicSource:Ljava/lang/String;

.field private needVip:Z

.field private oldCreateTime:J

.field private oldMusicFrom:I

.field private oldMusicFromTitle:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private playBy:I

.field private playCount:I

.field private playTime:J

.field private playable:Z

.field private quality:I

.field private searchSongText:Ljava/lang/String;

.field private shortDurationS:Ljava/lang/Integer;

.field private singer:Ljava/lang/String;

.field private size:I

.field private song:Ljava/lang/String;

.field private songExtraId:Ljava/lang/String;

.field private songId:Ljava/lang/String;

.field private songPlayTime:I

.field private sortCreateTime:J

.field private sourceID:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private tempNetUrl:Ljava/lang/String;

.field private tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

.field private tryPlayable:Z

.field private ts:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private uid:Ljava/lang/String;

.field private unplayableCode:I

.field private unplayableMsg:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    .line 65
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "\u84dd\u7259\u97f3\u4e50"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "\u641c\u7d22\u6b4c\u5355"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u6211\u559c\u6b22"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "\u60ca\u559c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v1, 0x23

    const-string v2, "\u624b\u673a\u6b4c\u5355"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->TAG_MUSIC:Landroid/util/SparseArray;

    const/16 v1, 0xa

    const-string v2, "\u6700\u8fd1\u64ad\u653e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1131
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 705
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 77
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    const-string v3, "0"

    .line 81
    iput-object v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    const/4 v3, 0x0

    .line 86
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    .line 87
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    .line 88
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    .line 89
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    .line 91
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sortCreateTime:J

    .line 94
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    .line 97
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    .line 100
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 107
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    .line 111
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    .line 112
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    .line 113
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    .line 114
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 116
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    .line 117
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    .line 118
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canFold:Z

    .line 124
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 142
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    .line 143
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 161
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canUp:Z

    .line 164
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->btFake:Z

    .line 183
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 1076
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 77
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    const-string v3, "0"

    .line 81
    iput-object v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    const/4 v3, 0x0

    .line 86
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    .line 87
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    .line 88
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    .line 89
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    .line 91
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sortCreateTime:J

    .line 94
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    .line 97
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    .line 100
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    .line 105
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 107
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    .line 111
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    .line 112
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    .line 113
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    .line 114
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 116
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    .line 117
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    .line 118
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canFold:Z

    .line 124
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 142
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    .line 143
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 161
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canUp:Z

    .line 164
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->btFake:Z

    .line 183
    iput v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    .line 1080
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumName:Ljava/lang/String;

    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumLogo:Ljava/lang/String;

    .line 1083
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    .line 1084
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->data:Ljava/lang/String;

    .line 1085
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->logo:Ljava/lang/String;

    .line 1087
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->lrcData:Ljava/lang/String;

    .line 1088
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    .line 1089
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    .line 1090
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    .line 1091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->quality:I

    .line 1092
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    .line 1093
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    .line 1094
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->style:Ljava/lang/String;

    .line 1095
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    .line 1096
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    .line 1097
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    .line 1098
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    .line 1099
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    .line 1100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    .line 1101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->searchSongText:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_2

    :cond_1
    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v3

    .line 1103
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    .line 1104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_3

    .line 1105
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    goto :goto_3

    .line 1107
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 1109
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    .line 1110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicSource:Ljava/lang/String;

    .line 1111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    .line 1112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasParse:Z

    .line 1113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    .line 1114
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    .line 1115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->path:Ljava/lang/String;

    .line 1116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->from:I

    .line 1117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableCode:I

    .line 1118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableMsg:Ljava/lang/String;

    .line 1119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songPlayTime:I

    .line 1121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    if-ne v0, v4, :cond_a

    move v0, v4

    goto :goto_9

    :cond_a
    move v0, v3

    .line 1122
    :goto_9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_a
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCustomAdded:Z

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    move v3, v4

    :cond_c
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->httpCache:Z

    .line 1125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->alg:Ljava/lang/String;

    .line 1126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sourceID:Ljava/lang/String;

    .line 1127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    .line 1128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->accountType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIILjava/lang/String;JZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZLjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;JZZZLjava/lang/String;IILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIJIII",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;",
            "JZZZ",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 653
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 74
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    .line 76
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 77
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    const-string v4, "0"

    .line 81
    iput-object v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    .line 83
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    const/4 v4, 0x0

    .line 86
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    .line 87
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    .line 88
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    .line 89
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    .line 91
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sortCreateTime:J

    .line 94
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    .line 97
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    .line 100
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    .line 105
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playBy:I

    const/4 v5, 0x1

    .line 107
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    .line 111
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    .line 112
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    .line 113
    iput-wide v2, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    .line 114
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 115
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 116
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    .line 117
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    .line 118
    iput-boolean v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canFold:Z

    .line 124
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v1, -0x1

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 142
    iput-boolean v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    .line 143
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    .line 159
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 161
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canUp:Z

    .line 164
    iput-boolean v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->btFake:Z

    .line 183
    iput v4, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    move-object v1, p1

    .line 654
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    move-object v1, p2

    .line 655
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    move-wide v1, p3

    .line 656
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    move-object v1, p5

    .line 657
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    move-object v1, p6

    .line 658
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumName:Ljava/lang/String;

    move-object v1, p7

    .line 659
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumLogo:Ljava/lang/String;

    move-object v1, p8

    .line 660
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    move-object v1, p9

    .line 661
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 662
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 663
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->logo:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 664
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p13

    .line 665
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    move/from16 v1, p14

    .line 666
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    move-wide/from16 v1, p15

    .line 667
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    move/from16 v1, p17

    .line 668
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    move/from16 v1, p18

    .line 669
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 670
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->quality:I

    move-object/from16 v1, p20

    .line 671
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    move-wide/from16 v1, p21

    .line 672
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->ts:J

    move/from16 v1, p23

    .line 673
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    move-object/from16 v1, p24

    .line 674
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->style:Ljava/lang/String;

    move-wide/from16 v1, p25

    .line 675
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    move-wide/from16 v1, p27

    .line 676
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    move-wide/from16 v1, p29

    .line 677
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    move-object/from16 v1, p31

    .line 678
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 679
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move/from16 v1, p33

    .line 680
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    move/from16 v1, p34

    .line 681
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    move/from16 v1, p35

    .line 682
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canFold:Z

    move-object/from16 v1, p36

    .line 683
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 684
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->searchSongText:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 685
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    move-object/from16 v1, p39

    .line 686
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    move/from16 v1, p40

    .line 687
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    move-object/from16 v1, p41

    .line 688
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicSource:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 689
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-wide/from16 v1, p43

    .line 690
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    move/from16 v1, p45

    .line 691
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->append:Z

    move/from16 v1, p46

    .line 692
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    move/from16 v1, p47

    .line 693
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    move-object/from16 v1, p48

    .line 694
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->path:Ljava/lang/String;

    move/from16 v1, p49

    .line 695
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->from:I

    move/from16 v1, p50

    .line 696
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songPlayTime:I

    move-object/from16 v1, p51

    .line 697
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p52

    .line 698
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->alg:Ljava/lang/String;

    move-object/from16 v1, p53

    .line 699
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sourceID:Ljava/lang/String;

    move-object/from16 v1, p54

    .line 700
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    move/from16 v1, p55

    .line 701
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    return-void
.end method

.method private getFileListWithNoUrlString()Ljava/lang/String;
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    if-eqz v2, :cond_1

    .line 562
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->toNoUrlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public canPlayHighQualityWithoutVip()Z
    .locals 4

    .line 819
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 820
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 821
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 822
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->isNeedVip()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 583
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 585
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;-><init>()V

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBtFake()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setBtFake(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 594
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoNeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoNeed(I)V

    .line 596
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setData(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 603
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanFold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanFold(Z)V

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCanUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 605
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 606
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 607
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 608
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 610
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 611
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 613
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 615
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 623
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setVersion(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 392
    instance-of v2, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-nez v2, :cond_1

    goto :goto_1

    .line 393
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 394
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAccountType()I
    .locals 1

    .line 1001
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->accountType:I

    return v0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumLogo()Ljava/lang/String;
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->alg:Ljava/lang/String;

    return-object v0
.end method

.method public getAppend()Z
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->append:Z

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCanFold()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canFold:Z

    return v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 407
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    return v0
.end method

.method public getCreatime()J
    .locals 2

    .line 419
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 460
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    return-wide v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    return-wide v0
.end method

.method public getFrom()I
    .locals 1

    .line 969
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->from:I

    return v0
.end method

.method public getHasCopyright()Ljava/lang/Boolean;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoNeed()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    return v0
.end method

.method public getInfoType()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    return v0
.end method

.method public getIsShortListen()Ljava/lang/Boolean;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getListenUrlRefreshTime()J
    .locals 2

    .line 862
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLocaiotn()I
    .locals 1

    .line 403
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicSource()Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 716
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    return v0
.end method

.method public getOldCreateTime()J
    .locals 2

    .line 253
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    return-wide v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBy()I
    .locals 1

    .line 340
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playBy:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 411
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    return-wide v0
.end method

.method public getPlayable()Z
    .locals 1

    .line 941
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 443
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->quality:I

    return v0
.end method

.method public getQualitySize(I)I
    .locals 3

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 808
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 810
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getFileSize()I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSearchSongText()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->searchSongText:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDurationS()Ljava/lang/Integer;
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryEnd()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryBegin()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongExtraId()Ljava/lang/String;
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    return-object v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 2

    .line 906
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songPlayTime:I

    if-nez v0, :cond_0

    .line 907
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    long-to-int v0, v0

    :cond_0
    return v0
.end method

.method public getSortCreateTime()J
    .locals 2

    .line 261
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sortCreateTime:J

    return-wide v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTempNetUrl()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tempNetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTryPlayable()Z
    .locals 1

    .line 937
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    return v0
.end method

.method public getTs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnplayableCode()I
    .locals 1

    .line 882
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableCode:I

    return v0
.end method

.method public getUnplayableMsg()Ljava/lang/String;
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1009
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 399
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 917
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->append:Z

    return v0
.end method

.method public isBipartite()Z
    .locals 1

    .line 993
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBipartite:Z

    return v0
.end method

.method public isBtFake()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->btFake:Z

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    return v0
.end method

.method public isCanUp()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canUp:Z

    return v0
.end method

.method public isCustomAdded()Z
    .locals 1

    .line 841
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCustomAdded:Z

    return v0
.end method

.method public isEnableLove()Z
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHasParse()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasParse:Z

    return v0
.end method

.method public isHot()Z
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    return v0
.end method

.method public isHttpCache()Z
    .locals 1

    .line 929
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->httpCache:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 708
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 874
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    return v0
.end method

.method public isSupportDB()Z
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 786
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 787
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSupportHires()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportMQ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportSQ()Z
    .locals 4

    .line 752
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 753
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isSupportSQ(I)Z
    .locals 3

    .line 763
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    .line 764
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 765
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTryPlayable()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    return v0
.end method

.method public setAccountType(I)V
    .locals 0

    .line 1005
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->accountType:I

    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumLogo(Ljava/lang/String;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumLogo:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAlg(Ljava/lang/String;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->alg:Ljava/lang/String;

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 921
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->append:Z

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setBipartite(Z)V
    .locals 0

    .line 997
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBipartite:Z

    return-void
.end method

.method public setBtFake(Z)V
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->btFake:Z

    return-void
.end method

.method public setCanFold(Z)V
    .locals 0

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 370
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    return-void
.end method

.method public setCanUp(Z)V
    .locals 0

    .line 488
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canUp:Z

    return-void
.end method

.method public setCreatime(J)V
    .locals 0

    .line 423
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    return-void
.end method

.method public setCustomAdded(Z)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCustomAdded:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 217
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 289
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 464
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 734
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    return-void

    .line 737
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 738
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/j;->i()Z

    move-result v1

    if-nez v1, :cond_2

    .line 739
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    .line 740
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 741
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 747
    :cond_3
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 281
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    return-void
.end method

.method public setFrom(I)V
    .locals 0

    .line 973
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->from:I

    return-void
.end method

.method public setHasCopyright(Ljava/lang/Boolean;)V
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasParse(Z)V
    .locals 0

    .line 957
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasParse:Z

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .line 902
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    return-void
.end method

.method public setHttpCache(Z)V
    .locals 0

    .line 933
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->httpCache:Z

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoNeed:I

    return-void
.end method

.method public setInfoType(I)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    return-void
.end method

.method public setIsShortListen(Ljava/lang/Boolean;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 858
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setMusicSource(Ljava/lang/String;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicSource:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 712
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    return-void
.end method

.method public setOldCreateTime(J)V
    .locals 0

    .line 257
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldCreateTime:J

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 965
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayBy(I)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playBy:I

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 456
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 415
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    return-void
.end method

.method public setPlayable(Z)V
    .locals 0

    .line 878
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 447
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->quality:I

    return-void
.end method

.method public setSearchSongText(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->searchSongText:Ljava/lang/String;

    return-void
.end method

.method public setShortDurationS(Ljava/lang/Integer;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongExtraId(Ljava/lang/String;)V
    .locals 0

    .line 989
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 913
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songPlayTime:I

    return-void
.end method

.method public setSortCreateTime(J)V
    .locals 0

    .line 265
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sortCreateTime:J

    return-void
.end method

.method public setSourceID(Ljava/lang/String;)V
    .locals 0

    .line 981
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sourceID:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->style:Ljava/lang/String;

    return-void
.end method

.method public setTempNetUrl(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tempNetUrl:Ljava/lang/String;

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 853
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTryPlayable(Z)V
    .locals 0

    .line 870
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    return-void
.end method

.method public setTs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 362
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnplayableCode(I)V
    .locals 0

    .line 886
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableCode:I

    return-void
.end method

.method public setUnplayableMsg(Ljava/lang/String;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableMsg:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 1013
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->version:I

    return-void
.end method

.method public supportQuality(I)Z
    .locals 3

    .line 796
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 797
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 798
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toNoUrlString()Ljava/lang/String;
    .locals 3

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ",singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",musicFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",creatime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",songExtraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileListWithNoUrlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 2

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ",musicFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",songExtraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",hot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MI{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", musicFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", songExtraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fileList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1023
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1024
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1025
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1026
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->albumLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1031
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1032
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1033
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1034
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1037
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1038
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->canPlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1040
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->style:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1042
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->creatime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1043
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1044
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->infoType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->searchSongText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1048
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1049
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    if-nez p2, :cond_2

    .line 1050
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 1052
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1053
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1055
    :goto_1
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->needVip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1056
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->musicSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1057
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1058
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasParse:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1059
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->tryPlayable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1060
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->playable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1061
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1062
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->from:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1064
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->unplayableMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1065
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1066
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->hasCopyright:Ljava/lang/Boolean;

    if-nez p2, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    :goto_2
    int-to-byte p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1068
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCustomAdded:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1069
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->httpCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1070
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->alg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1071
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->sourceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->songExtraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1073
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->accountType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
