.class public Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "NeteaseMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;",
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

.field private songId:Ljava/lang/String;

.field private songPlayTime:I

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

    .line 961
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 656
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    const-string v1, "0"

    .line 42
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 43
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    .line 47
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    .line 53
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    .line 54
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    .line 56
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 66
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    .line 70
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    .line 71
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    .line 72
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    .line 76
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    .line 77
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canFold:Z

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 98
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    .line 99
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    .line 112
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 114
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canUp:Z

    .line 117
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->btFake:Z

    .line 132
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 914
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    const-string v1, "0"

    .line 42
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 43
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    .line 47
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    .line 53
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    .line 54
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    .line 56
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    .line 59
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    .line 64
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playBy:I

    const/4 v4, 0x1

    .line 66
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    .line 70
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    .line 71
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    .line 72
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    .line 73
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 75
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    .line 76
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    .line 77
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canFold:Z

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 98
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    .line 99
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    .line 112
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 114
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canUp:Z

    .line 117
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->btFake:Z

    .line 132
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    .line 915
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    .line 916
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    .line 917
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    .line 918
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumName:Ljava/lang/String;

    .line 920
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumLogo:Ljava/lang/String;

    .line 921
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    .line 922
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->data:Ljava/lang/String;

    .line 923
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    .line 924
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->logo:Ljava/lang/String;

    .line 925
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->lrcData:Ljava/lang/String;

    .line 926
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    .line 927
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    .line 928
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->quality:I

    .line 929
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    .line 930
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    .line 931
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->style:Ljava/lang/String;

    .line 932
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    .line 933
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    .line 935
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->searchSongText:Ljava/lang/String;

    .line 939
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

    .line 940
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    .line 941
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_3

    .line 942
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    goto :goto_3

    .line 944
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 946
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    .line 947
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicSource:Ljava/lang/String;

    .line 948
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    .line 950
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    .line 951
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableCode:I

    .line 952
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableMsg:Ljava/lang/String;

    .line 953
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v4

    goto :goto_7

    :cond_7
    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hot:Z

    .line 954
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songPlayTime:I

    .line 955
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

    .line 956
    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_9
    iput-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 957
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v1, v4

    :cond_a
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->httpCache:Z

    .line 958
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->alg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIILjava/lang/String;JZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZLjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;JZZZILjava/util/List;Ljava/lang/String;I)V
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
            "JZZZI",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 608
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 40
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    const-string v2, "0"

    .line 42
    iput-object v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 43
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    .line 47
    iput-object v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    .line 49
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    const/4 v2, 0x0

    .line 52
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    .line 53
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    .line 54
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    .line 55
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    .line 56
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    .line 59
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    .line 64
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playBy:I

    const/4 v5, 0x1

    .line 66
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    .line 70
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    .line 71
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    .line 72
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    .line 73
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 74
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    .line 75
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    .line 76
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    .line 77
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canFold:Z

    .line 83
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    const/4 v1, -0x1

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    .line 98
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    .line 99
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    .line 112
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    .line 114
    iput-boolean v5, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canUp:Z

    .line 117
    iput-boolean v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->btFake:Z

    .line 132
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    move-object v1, p1

    .line 609
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    move-object v1, p2

    .line 610
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    move-wide v1, p3

    .line 611
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    move-object v1, p5

    .line 612
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    move-object v1, p6

    .line 613
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumName:Ljava/lang/String;

    move-object v1, p7

    .line 614
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumLogo:Ljava/lang/String;

    move-object v1, p8

    .line 615
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    move-object v1, p9

    .line 616
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p10

    .line 617
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 618
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->logo:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 619
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p13

    .line 620
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    move/from16 v1, p14

    .line 621
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    move-wide/from16 v1, p15

    .line 622
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    move/from16 v1, p17

    .line 623
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    move/from16 v1, p18

    .line 624
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 625
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->quality:I

    move-object/from16 v1, p20

    .line 626
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    move-wide/from16 v1, p21

    .line 627
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->ts:J

    move/from16 v1, p23

    .line 628
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    move-object/from16 v1, p24

    .line 629
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->style:Ljava/lang/String;

    move-wide/from16 v1, p25

    .line 630
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    move-wide/from16 v1, p27

    .line 631
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    move-wide/from16 v1, p29

    .line 632
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    move-object/from16 v1, p31

    .line 633
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p32

    .line 634
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move/from16 v1, p33

    .line 635
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    move/from16 v1, p34

    .line 636
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    move/from16 v1, p35

    .line 637
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canFold:Z

    move-object/from16 v1, p36

    .line 638
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    move-object/from16 v1, p37

    .line 639
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->searchSongText:Ljava/lang/String;

    move-object/from16 v1, p38

    .line 640
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    move-object/from16 v1, p39

    .line 641
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    move/from16 v1, p40

    .line 642
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    move-object/from16 v1, p41

    .line 643
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicSource:Ljava/lang/String;

    move-object/from16 v1, p42

    .line 644
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-wide/from16 v1, p43

    .line 645
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    move/from16 v1, p45

    .line 646
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->append:Z

    move/from16 v1, p46

    .line 647
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    move/from16 v1, p47

    .line 648
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    move/from16 v1, p48

    .line 649
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songPlayTime:I

    move-object/from16 v1, p49

    .line 650
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p50

    .line 651
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->alg:Ljava/lang/String;

    move/from16 v1, p51

    .line 652
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    return-void
.end method


# virtual methods
.method public canPlayHighQualityWithoutVip()Z
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 724
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 725
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 726
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

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

.method public clone()Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 3

    .line 465
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 467
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;-><init>()V

    .line 468
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHash(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 470
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFrom(I)V

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isBtFake()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setBtFake(Z)V

    .line 475
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFrom(I)V

    .line 476
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSong(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoNeed()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoNeed(I)V

    .line 478
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setData(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setUid(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanPlay(Z)V

    .line 485
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanFold()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanFold(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isCanUp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanUp(Z)V

    .line 487
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCreatime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCreatime(J)V

    .line 488
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayTime(J)V

    .line 489
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoType(I)V

    .line 490
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFrom(I)V

    .line 492
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isNeedVip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setNeedVip(Z)V

    .line 493
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 495
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setStyle(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setFileList(Ljava/util/List;)V

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 500
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayTime(J)V

    .line 501
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isHot()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHot(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->clone()Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 2

    .line 507
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHash(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFrom(I)V

    .line 513
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isBtFake()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setBtFake(Z)V

    .line 514
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFrom(I)V

    .line 515
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSong(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoNeed(I)V

    .line 517
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setData(Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setUid(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanPlay(Z)V

    .line 524
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCanFold()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanFold(Z)V

    .line 525
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isCanUp()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanUp(Z)V

    .line 526
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCreatime(J)V

    .line 527
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayTime(J)V

    .line 528
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoType(I)V

    .line 529
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFrom(I)V

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isNeedVip()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setNeedVip(Z)V

    .line 532
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 534
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setStyle(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setFileList(Ljava/util/List;)V

    .line 536
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 539
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->isHot()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHot(Z)V

    .line 540
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setVersion(I)V

    return-object p0
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 545
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHash(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlbumName(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFrom(I)V

    .line 551
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isBtFake()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setBtFake(Z)V

    .line 552
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 553
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSong(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoNeed(I)V

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSinger(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLogo(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setData(Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setUid(Ljava/lang/String;)V

    .line 561
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanPlay(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanFold()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanFold(Z)V

    .line 563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isCanUp()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCanUp(Z)V

    .line 564
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCreatime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setCreatime(J)V

    .line 565
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 566
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setInfoType(I)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setOldMusicFrom(I)V

    .line 569
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setNeedVip(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSongId(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHasCopyright()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHasCopyright(Ljava/lang/Boolean;)V

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setStyle(Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setFileList(Ljava/util/List;)V

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTempNetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setTempNetUrl(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setSearchSongText(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    .line 577
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAlg(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isHot()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setHot(Z)V

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getVersion()I

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

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 329
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    .line 330
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumId()Ljava/lang/String;

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

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumLogo()Ljava/lang/String;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlg()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->alg:Ljava/lang/String;

    return-object v0
.end method

.method public getAppend()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->append:Z

    return v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCanFold()Z
    .locals 1

    .line 409
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canFold:Z

    return v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    return v0
.end method

.method public getCreatime()J
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    return-wide v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    return-wide v0
.end method

.method public getEndTime()J
    .locals 2

    .line 393
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

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

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getHasCopyright()Ljava/lang/Boolean;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoNeed()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    return v0
.end method

.method public getInfoType()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    return v0
.end method

.method public getIsShortListen()Ljava/lang/Boolean;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

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

    .line 766
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicSource()Ljava/lang/String;
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicSource:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 667
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    return v0
.end method

.method public getOldCreateTime()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    return-wide v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayBy()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playBy:I

    return v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    return v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    return-wide v0
.end method

.method public getPlayable()Z
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->quality:I

    return v0
.end method

.method public getQualitySize(I)I
    .locals 3

    .line 711
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 712
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 713
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 714
    iget-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

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

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->searchSongText:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDurationS()Ljava/lang/Integer;
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryEnd()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;->getTryBegin()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    return v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    return-object v0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 810
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songPlayTime:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->style:Ljava/lang/String;

    return-object v0
.end method

.method public getTempNetUrl()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tempNetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTryPlayable()Z
    .locals 1

    .line 838
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    return v0
.end method

.method public getTs()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCreatime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getUnplayableCode()I
    .locals 1

    .line 786
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableCode:I

    return v0
.end method

.method public getUnplayableMsg()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 854
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 335
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->append:Z

    return v0
.end method

.method public isBtFake()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->btFake:Z

    return v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 294
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    return v0
.end method

.method public isCanUp()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canUp:Z

    return v0
.end method

.method public isCustomAdded()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isCustomAdded:Z

    return v0
.end method

.method public isEnableLove()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHot()Z
    .locals 1

    .line 802
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hot:Z

    return v0
.end method

.method public isHttpCache()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->httpCache:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 659
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 778
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    return v0
.end method

.method public isSupportSQ()Z
    .locals 4

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 690
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 691
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

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

    .line 770
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setAlbumLogo(Ljava/lang/String;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumLogo:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setAlg(Ljava/lang/String;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->alg:Ljava/lang/String;

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 822
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->append:Z

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setBtFake(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->btFake:Z

    return-void
.end method

.method public setCanFold(Z)V
    .locals 0

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 298
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    return-void
.end method

.method public setCanUp(Z)V
    .locals 0

    .line 421
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canUp:Z

    return-void
.end method

.method public setCreatime(J)V
    .locals 0

    .line 356
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    return-void
.end method

.method public setCustomAdded(Z)V
    .locals 0

    .line 749
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isCustomAdded:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->data:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 2

    int-to-long v0, p1

    .line 160
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 217
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    .line 397
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

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

    .line 684
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setHasCopyright(Ljava/lang/Boolean;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setHot(Z)V
    .locals 0

    .line 806
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hot:Z

    return-void
.end method

.method public setHttpCache(Z)V
    .locals 0

    .line 834
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->httpCache:Z

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 243
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoNeed:I

    return-void
.end method

.method public setInfoType(I)V
    .locals 0

    .line 405
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    return-void
.end method

.method public setIsShortListen(Ljava/lang/Boolean;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 762
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 184
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setMusicSource(Ljava/lang/String;)V
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicSource:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 663
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    return-void
.end method

.method public setOldCreateTime(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldCreateTime:J

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayBy(I)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playBy:I

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 348
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    return-void
.end method

.method public setPlayable(Z)V
    .locals 0

    .line 782
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 380
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->quality:I

    return-void
.end method

.method public setSearchSongText(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->searchSongText:Ljava/lang/String;

    return-void
.end method

.method public setShortDurationS(Ljava/lang/Integer;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 814
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songPlayTime:I

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0

    .line 741
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->style:Ljava/lang/String;

    return-void
.end method

.method public setTempNetUrl(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tempNetUrl:Ljava/lang/String;

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 757
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTryPlayable(Z)V
    .locals 0

    .line 774
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    return-void
.end method

.method public setTs(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCreatime(J)V

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setUnplayableCode(I)V
    .locals 0

    .line 790
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableCode:I

    return-void
.end method

.method public setUnplayableMsg(Ljava/lang/String;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableMsg:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 858
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->version:I

    return-void
.end method

.method public supportQuality(I)Z
    .locals 3

    .line 700
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    .line 701
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 702
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->fileList:Ljava/util/List;

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

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", musicFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 869
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->duration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 872
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 874
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->albumLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 875
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 876
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 877
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 878
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 879
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicFrom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->size:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 884
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->canPlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 885
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->style:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 887
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->creatime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 888
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 889
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->infoType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 891
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 892
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->searchSongText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 893
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->isShortListen:Ljava/lang/Boolean;

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

    .line 894
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    if-nez p2, :cond_2

    .line 895
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 897
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 898
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->shortDurationS:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    :goto_1
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->needVip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 901
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->musicSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 902
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 903
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->tryPlayable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 904
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->playable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 905
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 906
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->unplayableMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 907
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hot:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 908
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->hasCopyright:Ljava/lang/Boolean;

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

    .line 910
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->httpCache:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 911
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->alg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
