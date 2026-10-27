.class public Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "KugouMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
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

.field private collectSongId:Ljava/lang/String;

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

.field private hasCopyright:Ljava/lang/Boolean;

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
    .locals 1

    .line 1007
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 674
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    const-string v1, "0"

    .line 41
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    .line 46
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    .line 52
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    .line 53
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    .line 54
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    .line 58
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 65
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    .line 69
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    .line 70
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    .line 71
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    .line 72
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    .line 75
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    .line 76
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canFold:Z

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 97
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    .line 98
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    .line 111
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 113
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canUp:Z

    .line 116
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->btFake:Z

    .line 133
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 957
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    const-string v1, "0"

    .line 41
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 42
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    .line 46
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    .line 52
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    .line 53
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    .line 54
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    .line 58
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 65
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    .line 69
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    .line 70
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    .line 71
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    .line 72
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 74
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    .line 75
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    .line 76
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canFold:Z

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 97
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    .line 98
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    .line 111
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 113
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canUp:Z

    .line 116
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->btFake:Z

    .line 133
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    .line 959
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    .line 960
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    .line 961
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    .line 962
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumName:Ljava/lang/String;

    .line 963
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumLogo:Ljava/lang/String;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    .line 965
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->data:Ljava/lang/String;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->logo:Ljava/lang/String;

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->lrcData:Ljava/lang/String;

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->quality:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->style:Ljava/lang/String;

    .line 975
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->searchSongText:Ljava/lang/String;

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_2

    :cond_1
    if-ne v0, v4, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 983
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_3

    .line 985
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    goto :goto_3

    .line 987
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 989
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicSource:Ljava/lang/String;

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->path:Ljava/lang/String;

    .line 995
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableCode:I

    .line 996
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableMsg:Ljava/lang/String;

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songPlayTime:I

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    if-ne v0, v4, :cond_9

    move v0, v4

    goto :goto_8

    :cond_9
    move v0, v1

    .line 1000
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v1, v4

    :cond_a
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->httpCache:Z

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->alg:Ljava/lang/String;

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->sourceID:Ljava/lang/String;

    .line 1004
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songExtraId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIILjava/lang/String;JZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZLjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;JZZZZILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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
            "JZZZZI",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 622
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 39
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    const-string v2, "0"

    .line 41
    iput-object v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 42
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    .line 46
    iput-object v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    .line 48
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    const/4 v2, 0x0

    .line 51
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    .line 52
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    .line 53
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    .line 54
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    .line 55
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    .line 58
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    .line 63
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playBy:I

    const/4 v5, 0x1

    .line 65
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    .line 69
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    .line 70
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    .line 71
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    .line 72
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 73
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 74
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    .line 75
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    .line 76
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canFold:Z

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v1, -0x1

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 97
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    .line 98
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    .line 111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 113
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canUp:Z

    .line 116
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->btFake:Z

    .line 133
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    move-object v1, p1

    .line 623
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    move-object v1, p2

    .line 624
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    move-wide v1, p3

    .line 625
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    move-object v1, p5

    .line 626
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    move-object v1, p6

    .line 627
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumName:Ljava/lang/String;

    move-object v1, p7

    .line 628
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumLogo:Ljava/lang/String;

    move-object v1, p8

    .line 629
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    move-object v1, p9

    .line 630
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 631
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 632
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->logo:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 633
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p13

    .line 634
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    move/from16 v1, p14

    .line 635
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    move-wide/from16 v1, p15

    .line 636
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    move/from16 v1, p17

    .line 637
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    move/from16 v1, p18

    .line 638
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 639
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->quality:I

    move-object/from16 v1, p20

    .line 640
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    move-wide/from16 v1, p21

    .line 641
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->ts:J

    move/from16 v1, p23

    .line 642
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    move-object/from16 v1, p24

    .line 643
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->style:Ljava/lang/String;

    move-wide/from16 v1, p25

    .line 644
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    move-wide/from16 v1, p27

    .line 645
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    move-wide/from16 v1, p29

    .line 646
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    move-object/from16 v1, p31

    .line 647
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 648
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move/from16 v1, p33

    .line 649
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    move/from16 v1, p34

    .line 650
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    move/from16 v1, p35

    .line 651
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canFold:Z

    move-object/from16 v1, p36

    .line 652
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 653
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->searchSongText:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 654
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    move-object/from16 v1, p39

    .line 655
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    move/from16 v1, p40

    .line 656
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    move-object/from16 v1, p41

    .line 657
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicSource:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 658
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-wide/from16 v1, p43

    .line 659
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    move/from16 v1, p45

    .line 660
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->append:Z

    move/from16 v1, p46

    .line 661
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    move/from16 v1, p47

    .line 662
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    move/from16 v1, p48

    .line 663
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    move/from16 v1, p49

    .line 664
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songPlayTime:I

    move-object/from16 v1, p50

    .line 665
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p51

    .line 666
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->alg:Ljava/lang/String;

    move-object/from16 v1, p52

    .line 667
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->path:Ljava/lang/String;

    move-object/from16 v1, p53

    .line 668
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->sourceID:Ljava/lang/String;

    move-object/from16 v1, p54

    .line 669
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songExtraId:Ljava/lang/String;

    move/from16 v1, p55

    .line 670
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    return-void
.end method


# virtual methods
.method public canPlayHighQualityWithoutVip()Z
    .locals 4

    .line 742
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 743
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 744
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 745
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

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

.method public clone()Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    .locals 3

    .line 466
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 468
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;-><init>()V

    .line 469
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHash(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFrom(I)V

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isBtFake()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setBtFake(Z)V

    .line 476
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFrom(I)V

    .line 477
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSong(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoNeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoNeed(I)V

    .line 479
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setData(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setUid(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanPlay(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanFold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanFold(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isCanUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanUp(Z)V

    .line 488
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCreatime(J)V

    .line 489
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayTime(J)V

    .line 490
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoType(I)V

    .line 491
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFrom(I)V

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setNeedVip(Z)V

    .line 494
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 496
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setStyle(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setFileList(Ljava/util/List;)V

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 501
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayTime(J)V

    .line 502
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPath(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHot(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    .locals 2

    .line 511
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHash(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFrom(I)V

    .line 517
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBtFake()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setBtFake(Z)V

    .line 518
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFrom(I)V

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSong(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoNeed(I)V

    .line 521
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setData(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setUid(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanPlay(Z)V

    .line 528
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanFold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanFold(Z)V

    .line 529
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCanUp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanUp(Z)V

    .line 530
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCreatime(J)V

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayTime(J)V

    .line 532
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoType(I)V

    .line 533
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFrom(I)V

    .line 535
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setNeedVip(Z)V

    .line 536
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 538
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setStyle(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setFileList(Ljava/util/List;)V

    .line 540
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 543
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPath(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHot(Z)V

    .line 547
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setVersion(I)V

    return-object p0
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 552
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isBtFake()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setBtFake(Z)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 560
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoNeed(I)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setData(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanFold()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanFold(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isCanUp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 571
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 573
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 577
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 581
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPath(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSourceID(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongExtraId(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isHot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 589
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setVersion(I)V

    return-void
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

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 330
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    .line 331
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumId()Ljava/lang/String;

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

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumLogo()Ljava/lang/String;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->alg:Ljava/lang/String;

    return-object v0
.end method

.method public getAppend()Z
    .locals 1

    .line 837
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->append:Z

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCanFold()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canFold:Z

    return v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    return v0
.end method

.method public getCreatime()J
    .locals 2

    .line 353
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 394
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

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

    .line 690
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getHasCopyright()Ljava/lang/Boolean;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getHot()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    return v0
.end method

.method public getInfoNeed()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    return v0
.end method

.method public getInfoType()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    return v0
.end method

.method public getIsShortListen()Ljava/lang/Boolean;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

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

    .line 777
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicSource()Ljava/lang/String;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 686
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    return v0
.end method

.method public getOldCreateTime()J
    .locals 2

    .line 197
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    return-wide v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 189
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBy()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playBy:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 386
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 345
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    return-wide v0
.end method

.method public getPlayable()Z
    .locals 1

    .line 853
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 377
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->quality:I

    return v0
.end method

.method public getQualitySize(I)I
    .locals 3

    .line 730
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 731
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 733
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

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

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->searchSongText:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDurationS()Ljava/lang/Integer;
    .locals 2

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryEnd()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryBegin()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongExtraId()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songExtraId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    return-object v0

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 821
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songPlayTime:I

    return v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->sourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTempNetUrl()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tempNetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTryPlayable()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    return v0
.end method

.method public getTs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCreatime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnplayableCode()I
    .locals 1

    .line 797
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableCode:I

    return v0
.end method

.method public getUnplayableMsg()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 893
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 336
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 829
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->append:Z

    return v0
.end method

.method public isBtFake()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->btFake:Z

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    return v0
.end method

.method public isCanUp()Z
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canUp:Z

    return v0
.end method

.method public isEnableLove()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHot()Z
    .locals 1

    .line 813
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    return v0
.end method

.method public isHttpCache()Z
    .locals 1

    .line 841
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->httpCache:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 789
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    return v0
.end method

.method public isSupportSQ()Z
    .locals 4

    .line 708
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 709
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 710
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getPlayUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isTryPlayable()Z
    .locals 1

    .line 781
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumLogo(Ljava/lang/String;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumLogo:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAlg(Ljava/lang/String;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->alg:Ljava/lang/String;

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->append:Z

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setBtFake(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->btFake:Z

    return-void
.end method

.method public setCanFold(Z)V
    .locals 0

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    return-void
.end method

.method public setCanUp(Z)V
    .locals 0

    .line 422
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canUp:Z

    return-void
.end method

.method public setCreatime(J)V
    .locals 0

    .line 357
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 161
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 218
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 398
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;)V"
        }
    .end annotation

    .line 703
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setHasCopyright(Ljava/lang/Boolean;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .line 817
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    return-void
.end method

.method public setHttpCache(Z)V
    .locals 0

    .line 845
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->httpCache:Z

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoNeed:I

    return-void
.end method

.method public setInfoType(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    return-void
.end method

.method public setIsShortListen(Ljava/lang/Boolean;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 773
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setMusicSource(Ljava/lang/String;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicSource:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 682
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    return-void
.end method

.method public setOldCreateTime(J)V
    .locals 0

    .line 201
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldCreateTime:J

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public setPlayBy(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playBy:I

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 390
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 349
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    return-void
.end method

.method public setPlayable(Z)V
    .locals 0

    .line 793
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 381
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->quality:I

    return-void
.end method

.method public setSearchSongText(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->searchSongText:Ljava/lang/String;

    return-void
.end method

.method public setShortDurationS(Ljava/lang/Integer;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 209
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongExtraId(Ljava/lang/String;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songExtraId:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 825
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songPlayTime:I

    return-void
.end method

.method public setSourceID(Ljava/lang/String;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->sourceID:Ljava/lang/String;

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->style:Ljava/lang/String;

    return-void
.end method

.method public setTempNetUrl(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tempNetUrl:Ljava/lang/String;

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 768
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTryPlayable(Z)V
    .locals 0

    .line 785
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    return-void
.end method

.method public setTs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCreatime(J)V

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnplayableCode(I)V
    .locals 0

    .line 801
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableCode:I

    return-void
.end method

.method public setUnplayableMsg(Ljava/lang/String;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableMsg:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 897
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->version:I

    return-void
.end method

.method public supportQuality(I)Z
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 720
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 721
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->fileList:Ljava/util/List;

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", musicFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 909
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 910
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 911
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 912
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 913
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 914
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->albumLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 916
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 917
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 918
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 920
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 921
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 924
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->canPlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 925
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->style:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 926
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 927
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->creatime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 928
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 929
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 930
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->infoType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 932
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->searchSongText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->isShortListen:Ljava/lang/Boolean;

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

    .line 934
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    if-nez p2, :cond_2

    .line 935
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 937
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 938
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    :goto_1
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->needVip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 941
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->musicSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 943
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->tryPlayable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 944
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->playable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 945
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 946
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 947
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->unplayableMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 948
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 949
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->hasCopyright:Ljava/lang/Boolean;

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

    .line 951
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->httpCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 952
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->alg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->sourceID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 954
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->songExtraId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
