.class public Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "LatelyMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_NEW:I = 0x0

.field public static final VERSION_OLD:I = 0x1

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

    .line 461
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    .line 47
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    .line 61
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 436
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    .line 47
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 50
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    .line 55
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    .line 61
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 72
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    .line 437
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->cacheId:Ljava/lang/Long;

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songId:Ljava/lang/String;

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->logo:Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->data:Ljava/lang/String;

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->lrcData:Ljava/lang/String;

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->canPlay:Z

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->artistId:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->playTime:J

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove:Z

    .line 454
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    .line 456
    sget-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->fileList:Ljava/util/List;

    .line 457
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songPlayTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZJLjava/lang/String;JLjava/util/List;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;II)V
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
            "J",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;",
            "II)V"
        }
    .end annotation

    move-object v0, p0

    .line 83
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 40
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v2, 0x0

    .line 46
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    .line 47
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    .line 48
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 49
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 50
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    .line 55
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    .line 61
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 72
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    move-object v1, p1

    .line 84
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->cacheId:Ljava/lang/Long;

    move-object v1, p2

    .line 85
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    move-object v1, p3

    .line 86
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songId:Ljava/lang/String;

    move-object v1, p4

    .line 87
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    move-object v1, p5

    .line 88
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    move-object v1, p6

    .line 89
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->logo:Ljava/lang/String;

    move-object v1, p7

    .line 90
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    move v1, p8

    .line 91
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    move v1, p9

    .line 92
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    move-object v1, p10

    .line 93
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 94
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move-wide/from16 v1, p12

    .line 95
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    move-object/from16 v1, p14

    .line 96
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 97
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p16

    .line 98
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->canPlay:Z

    move-object/from16 v1, p17

    .line 99
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->artistId:Ljava/lang/String;

    move/from16 v1, p18

    .line 100
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 101
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    move-wide/from16 v1, p20

    .line 102
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->playTime:J

    move-object/from16 v1, p22

    .line 103
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    move-wide/from16 v1, p23

    .line 104
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    move-object/from16 v1, p25

    .line 105
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p26

    .line 106
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move/from16 v1, p27

    .line 107
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songPlayTime:I

    move/from16 v1, p28

    .line 108
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;)V
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    .line 367
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setHash(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setSong(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setMusicFrom(I)V

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setData(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setCanPlay(Z)V

    .line 377
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setInfoNeed(I)V

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setNeedVip(Z)V

    .line 380
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setPlayTime(J)V

    .line 381
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setLove(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setTs(J)V

    .line 384
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setListenUrlRefreshTime(J)V

    .line 385
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setFileList(Ljava/util/List;)V

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->setSongPlayTime(I)V

    return-void
.end method

.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setHash(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSong(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setMusicFrom(I)V

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setData(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setCanPlay(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setInfoNeed(I)V

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setNeedVip(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setPlayTime(J)V

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setLove(Z)V

    .line 358
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getTs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setTs(J)V

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setListenUrlRefreshTime(J)V

    .line 361
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setFileList(Ljava/util/List;)V

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSongPlayTime(I)V

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

    .line 249
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

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

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->canPlay:Z

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->data:Ljava/lang/String;

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

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoNeed()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    return v0
.end method

.method public getListenUrlRefreshTime()J
    .locals 2

    .line 330
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 207
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 273
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->playTime:J

    return-wide v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 390
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songPlayTime:I

    return v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 398
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLove()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 239
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->canPlay:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->data:Ljava/lang/String;

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

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 326
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLove(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove:Z

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 243
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->playTime:J

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 394
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songPlayTime:I

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 321
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 402
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatelyMusicInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ts = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->cacheId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->musicFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 421
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 423
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->canPlay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->infoNeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->needVip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 427
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 428
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->isLove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->fileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 432
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 433
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
