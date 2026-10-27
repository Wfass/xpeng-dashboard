.class public Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "NeteaseLatelyMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private albumId:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private cacheId:Ljava/lang/Long;

.field private canPlay:Z

.field private data:Ljava/lang/String;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation
.end field

.field private hash:Ljava/lang/String;

.field private infoNeed:I

.field private isLove:Z

.field private listenUrlRefreshTime:J

.field private logo:Ljava/lang/String;

.field private lrcData:Ljava/lang/String;

.field private musicFrom:I

.field private musicFromTitle:Ljava/lang/String;

.field private needVip:Z

.field private oldMusicFrom:I

.field private oldMusicFromTitle:Ljava/lang/String;

.field private playTime:J

.field private singer:Ljava/lang/String;

.field private song:Ljava/lang/String;

.field private songId:Ljava/lang/String;

.field private songPlayTime:I

.field private tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

.field private ts:J

.field private uid:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 431
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 406
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    .line 407
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songId:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->logo:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->data:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->lrcData:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->canPlay:Z

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->artistId:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->playTime:J

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->isLove:Z

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    .line 426
    sget-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->fileList:Ljava/util/List;

    .line 427
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songPlayTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZJLjava/lang/String;JILjava/util/List;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZJ",
            "Ljava/lang/String;",
            "JI",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 36
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    .line 51
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 60
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songId:Ljava/lang/String;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->logo:Ljava/lang/String;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    move v1, p8

    .line 86
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    move v1, p9

    .line 87
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 89
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move-wide/from16 v1, p12

    .line 90
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    move-object/from16 v1, p14

    .line 91
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 92
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p16

    .line 93
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->canPlay:Z

    move-object/from16 v1, p17

    .line 94
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->artistId:Ljava/lang/String;

    move/from16 v1, p18

    .line 95
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 96
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    move-wide/from16 v1, p20

    .line 97
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->playTime:J

    move-object/from16 v1, p22

    .line 98
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    move-wide/from16 v1, p23

    .line 99
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    move/from16 v1, p25

    .line 100
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    move-object/from16 v1, p26

    .line 101
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p27

    .line 102
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move/from16 v1, p28

    .line 103
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songPlayTime:I

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setHash(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSong(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getTs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTs(J)V

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setMusicFrom(I)V

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setData(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCanPlay(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setInfoNeed(I)V

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setNeedVip(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setPlayTime(J)V

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->isLove()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLove(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setListenUrlRefreshTime(J)V

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setFileList(Ljava/util/List;)V

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongPlayTime(I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->canPlay:Z

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->data:Ljava/lang/String;

    return-object v0
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

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoNeed()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    return v0
.end method

.method public getListenUrlRefreshTime()J
    .locals 2

    .line 324
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->playTime:J

    return-wide v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songPlayTime:I

    return v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 210
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLove()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->isLove:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->canPlay:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->data:Ljava/lang/String;

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

    .line 222
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0

    .line 150
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 320
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLove(Z)V
    .locals 0

    .line 230
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->isLove:Z

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 238
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 287
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 271
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->playTime:J

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 364
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songPlayTime:I

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 316
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 214
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 372
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatelyMusicInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->musicFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->canPlay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->infoNeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->needVip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 397
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 398
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->isLove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->fileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 403
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
