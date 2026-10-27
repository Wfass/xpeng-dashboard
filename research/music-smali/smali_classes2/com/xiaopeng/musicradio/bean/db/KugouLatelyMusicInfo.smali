.class public Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;
.super Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;
.source "KugouLatelyMusicInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;",
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

    .line 435
    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 410
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 46
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    .line 51
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    .line 411
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songId:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->logo:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->data:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->lrcData:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->canPlay:Z

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->artistId:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->playTime:J

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->isLove:Z

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    .line 430
    sget-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->fileList:Ljava/util/List;

    .line 431
    const-class v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songPlayTime:I

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

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;-><init>()V

    const-string v1, ""

    .line 36
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    .line 41
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    const/4 v2, 0x0

    .line 42
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    .line 43
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    .line 44
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    .line 45
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 46
    iput-wide v3, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    .line 51
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    .line 57
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    .line 68
    iput v2, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    move-object v1, p1

    .line 79
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    move-object v1, p2

    .line 80
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    move-object v1, p3

    .line 81
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songId:Ljava/lang/String;

    move-object v1, p4

    .line 82
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    move-object v1, p5

    .line 83
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    move-object v1, p6

    .line 84
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->logo:Ljava/lang/String;

    move-object v1, p7

    .line 85
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    move v1, p8

    .line 86
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    move v1, p9

    .line 87
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    move-object v1, p10

    .line 88
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 89
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    move-wide/from16 v1, p12

    .line 90
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    move-object/from16 v1, p14

    .line 91
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->data:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 92
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->lrcData:Ljava/lang/String;

    move/from16 v1, p16

    .line 93
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->canPlay:Z

    move-object/from16 v1, p17

    .line 94
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->artistId:Ljava/lang/String;

    move/from16 v1, p18

    .line 95
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    move/from16 v1, p19

    .line 96
    iput-boolean v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    move-wide/from16 v1, p20

    .line 97
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->playTime:J

    move-object/from16 v1, p22

    .line 98
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    move-wide/from16 v1, p23

    .line 99
    iput-wide v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    move-object/from16 v1, p25

    .line 100
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->fileList:Ljava/util/List;

    move-object/from16 v1, p26

    .line 101
    iput-object v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move/from16 v1, p27

    .line 102
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songPlayTime:I

    move/from16 v1, p28

    .line 103
    iput v1, v0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    return-void
.end method


# virtual methods
.method public copyTo(Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;)V
    .locals 2

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    .line 337
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setHash(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSong(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setUid(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getTs()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setTs(J)V

    .line 344
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setMusicFrom(I)V

    .line 345
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getOldMusicFrom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setOldMusicFrom(I)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setData(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getCanPlay()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setCanPlay(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getInfoNeed()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setInfoNeed(I)V

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getNeedVip()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setNeedVip(Z)V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getPlayTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setPlayTime(J)V

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->isLove()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setLove(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setListenUrlRefreshTime(J)V

    .line 358
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setFileList(Ljava/util/List;)V

    .line 359
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getSongPlayTime()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setSongPlayTime(I)V

    .line 360
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/LatelyMusicInfo;->setVersion(I)V

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

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

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

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheId()Ljava/lang/Long;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-object v0
.end method

.method public getCanPlay()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->canPlay:Z

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->data:Ljava/lang/String;

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

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoNeed()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    return v0
.end method

.method public getListenUrlRefreshTime()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    return-wide v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->logo:Ljava/lang/String;

    return-object v0
.end method

.method public getLrcData()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicFrom()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    return v0
.end method

.method public getMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedVip()Z
    .locals 1

    .line 306
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public getOldMusicFrom()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    return v0
.end method

.method public getOldMusicFromTitle()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->playTime:J

    return-wide v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    return-object v0
.end method

.method public getSongId()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songId:Ljava/lang/String;

    return-object v0
.end method

.method public getSongPlayTime()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songPlayTime:I

    return v0
.end method

.method public getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    return-object v0
.end method

.method public getTs()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 372
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLove()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->isLove:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    return v0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    return-void
.end method

.method public setArtistId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->artistId:Ljava/lang/String;

    return-void
.end method

.method public setCacheId(Ljava/lang/Long;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    return-void
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->canPlay:Z

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->data:Ljava/lang/String;

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

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->fileList:Ljava/util/List;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    return-void
.end method

.method public setInfoNeed(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    return-void
.end method

.method public setListenUrlRefreshTime(J)V
    .locals 0

    .line 319
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->logo:Ljava/lang/String;

    return-void
.end method

.method public setLove(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->isLove:Z

    return-void
.end method

.method public setLrcData(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->lrcData:Ljava/lang/String;

    return-void
.end method

.method public setMusicFrom(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    return-void
.end method

.method public setMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 236
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    return-void
.end method

.method public setOldMusicFrom(I)V
    .locals 0

    .line 286
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFrom:I

    return-void
.end method

.method public setOldMusicFromTitle(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->oldMusicFromTitle:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(J)V
    .locals 0

    .line 270
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->playTime:J

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    return-void
.end method

.method public setSongId(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songId:Ljava/lang/String;

    return-void
.end method

.method public setSongPlayTime(I)V
    .locals 0

    .line 368
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songPlayTime:I

    return-void
.end method

.method public setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V
    .locals 2

    .line 314
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    return-void
.end method

.method public setTs(J)V
    .locals 0

    .line 212
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->version:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LatelyMusicInfo{hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", song=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", singer=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", ts=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->cacheId:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->hash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->song:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->singer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->logo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->musicFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->ts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->lrcData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->canPlay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->artistId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->infoNeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->needVip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 401
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 402
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->isLove:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->albumId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 404
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->listenUrlRefreshTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->fileList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->tryFileInfo:Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 407
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/db/KugouLatelyMusicInfo;->songPlayTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
