.class public Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "KugouMusicInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "KUGOU_MUSIC_INFO"


# instance fields
.field private final fileListConverter:Larl;

.field private final tryFileInfoConverter:Laro;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 82
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    .line 83
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 82
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    .line 83
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 96
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"KUGOU_MUSIC_INFO\" (\"HASH\" TEXT PRIMARY KEY NOT NULL ,\"ALBUM_ID\" TEXT,\"DURATION\" INTEGER NOT NULL ,\"SONG\" TEXT,\"ALBUM_NAME\" TEXT,\"ALBUM_LOGO\" TEXT,\"ARTIST_ID\" TEXT,\"DATA\" TEXT,\"SINGER\" TEXT,\"LOGO\" TEXT,\"LRC_DATA\" TEXT,\"MUSIC_FROM\" INTEGER NOT NULL ,\"OLD_MUSIC_FROM\" INTEGER NOT NULL ,\"OLD_CREATE_TIME\" INTEGER NOT NULL ,\"SIZE\" INTEGER NOT NULL ,\"INFO_NEED\" INTEGER NOT NULL ,\"QUALITY\" INTEGER NOT NULL ,\"UID\" TEXT,\"TS\" INTEGER NOT NULL ,\"CAN_PLAY\" INTEGER NOT NULL ,\"STYLE\" TEXT,\"PLAY_TIME\" INTEGER NOT NULL ,\"CREATIME\" INTEGER NOT NULL ,\"END_TIME\" INTEGER NOT NULL ,\"MUSIC_FROM_TITLE\" TEXT,\"OLD_MUSIC_FROM_TITLE\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"INFO_TYPE\" INTEGER NOT NULL ,\"CAN_FOLD\" INTEGER NOT NULL ,\"SONG_ID\" TEXT,\"SEARCH_SONG_TEXT\" TEXT,\"IS_SHORT_LISTEN\" INTEGER,\"SHORT_DURATION_S\" INTEGER,\"NEED_VIP\" INTEGER NOT NULL ,\"MUSIC_SOURCE\" TEXT,\"TRY_FILE_INFO\" TEXT,\"LISTEN_URL_REFRESH_TIME\" INTEGER NOT NULL ,\"APPEND\" INTEGER NOT NULL ,\"TRY_PLAYABLE\" INTEGER NOT NULL ,\"PLAYABLE\" INTEGER NOT NULL ,\"HOT\" INTEGER NOT NULL ,\"SONG_PLAY_TIME\" INTEGER NOT NULL ,\"FILE_LIST\" TEXT,\"ALG\" TEXT,\"PATH\" TEXT,\"SOURCE_ID\" TEXT,\"SONG_EXTRA_ID\" TEXT,\"VERSION\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"KUGOU_MUSIC_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)V
    .locals 8

    .line 308
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 310
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 312
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 315
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 317
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 319
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 321
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 323
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 326
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 331
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 333
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 338
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 341
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 343
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 346
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 348
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 351
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 353
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 356
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 358
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 360
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 361
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 362
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldCreateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 363
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 364
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 365
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getQuality()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 367
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x12

    .line 369
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x13

    .line 371
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 372
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanPlay()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_b

    move-wide v6, v2

    goto :goto_0

    :cond_b
    move-wide v6, v4

    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 374
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x15

    .line 376
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x16

    .line 378
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 379
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 380
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getEndTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 382
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x19

    .line 384
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 387
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x1a

    .line 389
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x1b

    .line 391
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayCount()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1c

    .line 392
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoType()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1d

    .line 393
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanFold()Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_1

    :cond_f
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 395
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1e

    .line 397
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 400
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x1f

    .line 402
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 405
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x20

    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move-wide v6, v2

    goto :goto_2

    :cond_12
    move-wide v6, v4

    :goto_2
    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 410
    :cond_13
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x21

    .line 412
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_14
    const/16 v0, 0x22

    .line 414
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_3

    :cond_15
    move-wide v6, v4

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 416
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x23

    .line 418
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 421
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x24

    .line 423
    iget-object v6, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v6, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_17
    const/16 v0, 0x25

    .line 425
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x26

    .line 426
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_18

    move-wide v6, v2

    goto :goto_4

    :cond_18
    move-wide v6, v4

    :goto_4
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x27

    .line 427
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTryPlayable()Z

    move-result v1

    if-eqz v1, :cond_19

    move-wide v6, v2

    goto :goto_5

    :cond_19
    move-wide v6, v4

    :goto_5
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x28

    .line 428
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayable()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-wide v6, v2

    goto :goto_6

    :cond_1a
    move-wide v6, v4

    :goto_6
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x29

    .line 429
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHot()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_7

    :cond_1b
    move-wide v2, v4

    :goto_7
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x2a

    .line 430
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 432
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x2b

    .line 434
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 437
    :cond_1c
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v1, 0x2c

    .line 439
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 442
    :cond_1d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x2d

    .line 444
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 447
    :cond_1e
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/16 v1, 0x2e

    .line 449
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 452
    :cond_1f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/16 v1, 0x2f

    .line 454
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_20
    const/16 v0, 0x30

    .line 456
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getVersion()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)V
    .locals 8

    .line 155
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 157
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 159
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 162
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 164
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 166
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 168
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 170
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 175
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 180
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 183
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 185
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 190
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 195
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 198
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 200
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 203
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 205
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 207
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 208
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 209
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 210
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 211
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 212
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getQuality()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 214
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x12

    .line 216
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x13

    .line 218
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 219
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanPlay()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_b

    move-wide v6, v2

    goto :goto_0

    :cond_b
    move-wide v6, v4

    :goto_0
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 221
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x15

    .line 223
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x16

    .line 225
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 226
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 227
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getEndTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 229
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x19

    .line 231
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 234
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x1a

    .line 236
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x1b

    .line 238
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayCount()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1c

    .line 239
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getInfoType()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1d

    .line 240
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getCanFold()Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_1

    :cond_f
    move-wide v6, v4

    :goto_1
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 242
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1e

    .line 244
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 247
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x1f

    .line 249
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 252
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x20

    .line 254
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move-wide v6, v2

    goto :goto_2

    :cond_12
    move-wide v6, v4

    :goto_2
    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 257
    :cond_13
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x21

    .line 259
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_14
    const/16 v0, 0x22

    .line 261
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_3

    :cond_15
    move-wide v6, v4

    :goto_3
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 263
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getMusicSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x23

    .line 265
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 268
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x24

    .line 270
    iget-object v6, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v6, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_17
    const/16 v0, 0x25

    .line 272
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x26

    .line 273
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_18

    move-wide v6, v2

    goto :goto_4

    :cond_18
    move-wide v6, v4

    :goto_4
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x27

    .line 274
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getTryPlayable()Z

    move-result v1

    if-eqz v1, :cond_19

    move-wide v6, v2

    goto :goto_5

    :cond_19
    move-wide v6, v4

    :goto_5
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x28

    .line 275
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPlayable()Z

    move-result v1

    if-eqz v1, :cond_1a

    move-wide v6, v2

    goto :goto_6

    :cond_1a
    move-wide v6, v4

    :goto_6
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x29

    .line 276
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHot()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_7

    :cond_1b
    move-wide v2, v4

    :goto_7
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x2a

    .line 277
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 279
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x2b

    .line 281
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 284
    :cond_1c
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/16 v1, 0x2c

    .line 286
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 289
    :cond_1d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x2d

    .line 291
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 294
    :cond_1e
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSourceID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/16 v1, 0x2e

    .line 296
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 299
    :cond_1f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getSongExtraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/16 v1, 0x2f

    .line 301
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_20
    const/16 v0, 0x30

    .line 303
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getVersion()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 579
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)Z
    .locals 0

    .line 587
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;
    .locals 63

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 466
    new-instance v57, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    add-int/lit8 v2, p2, 0x0

    .line 467
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 468
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    add-int/lit8 v5, p2, 0x2

    .line 469
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-int/lit8 v7, p2, 0x3

    .line 470
    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    add-int/lit8 v8, p2, 0x4

    .line 471
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    add-int/lit8 v9, p2, 0x5

    .line 472
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_4
    add-int/lit8 v10, p2, 0x6

    .line 473
    invoke-interface {v1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_5
    add-int/lit8 v11, p2, 0x7

    .line 474
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v11, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_6
    add-int/lit8 v12, p2, 0x8

    .line 475
    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_7
    add-int/lit8 v13, p2, 0x9

    .line 476
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_8
    add-int/lit8 v14, p2, 0xa

    .line 477
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_9
    add-int/lit8 v15, p2, 0xb

    .line 478
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v4, p2, 0xc

    .line 479
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v4, p2, 0xd

    .line 480
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    add-int/lit8 v4, p2, 0xe

    .line 481
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v4, p2, 0xf

    .line 482
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v4, p2, 0x10

    .line 483
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    add-int/lit8 v4, p2, 0x11

    .line 484
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    :goto_a
    add-int/lit8 v4, p2, 0x12

    .line 485
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    add-int/lit8 v4, p2, 0x13

    .line 486
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/16 v26, 0x1

    const/16 v27, 0x0

    if-eqz v4, :cond_b

    move/from16 v28, v26

    goto :goto_b

    :cond_b
    move/from16 v28, v27

    :goto_b
    add-int/lit8 v4, p2, 0x14

    .line 487
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_c

    const/16 v29, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v29, v4

    :goto_c
    add-int/lit8 v4, p2, 0x15

    .line 488
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    add-int/lit8 v4, p2, 0x16

    .line 489
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    add-int/lit8 v4, p2, 0x17

    .line 490
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    add-int/lit8 v4, p2, 0x18

    .line 491
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_d

    const/16 v36, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    :goto_d
    add-int/lit8 v4, p2, 0x19

    .line 492
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_e

    const/16 v37, 0x0

    goto :goto_e

    :cond_e
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v37, v4

    :goto_e
    add-int/lit8 v4, p2, 0x1a

    .line 493
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    add-int/lit8 v4, p2, 0x1b

    .line 494
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    add-int/lit8 v4, p2, 0x1c

    .line 495
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v40, v26

    goto :goto_f

    :cond_f
    move/from16 v40, v27

    :goto_f
    add-int/lit8 v4, p2, 0x1d

    .line 496
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_10

    const/16 v41, 0x0

    goto :goto_10

    :cond_10
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v41, v4

    :goto_10
    add-int/lit8 v4, p2, 0x1e

    .line 497
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_11

    const/16 v42, 0x0

    goto :goto_11

    :cond_11
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v42, v4

    :goto_11
    add-int/lit8 v4, p2, 0x1f

    .line 498
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_12

    const/16 v43, 0x0

    goto :goto_13

    :cond_12
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_13

    move/from16 v4, v26

    goto :goto_12

    :cond_13
    move/from16 v4, v27

    :goto_12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v43, v4

    :goto_13
    add-int/lit8 v4, p2, 0x20

    .line 499
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v44

    if-eqz v44, :cond_14

    const/16 v44, 0x0

    goto :goto_14

    :cond_14
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v44, v4

    :goto_14
    add-int/lit8 v4, p2, 0x21

    .line 500
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v45, v26

    goto :goto_15

    :cond_15
    move/from16 v45, v27

    :goto_15
    add-int/lit8 v4, p2, 0x22

    .line 501
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_16

    const/16 v46, 0x0

    goto :goto_16

    :cond_16
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v46, v4

    :goto_16
    add-int/lit8 v4, p2, 0x23

    .line 502
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_17

    move/from16 v47, v15

    const/16 v48, 0x0

    goto :goto_17

    :cond_17
    move/from16 v47, v15

    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v4

    move-object/from16 v48, v4

    :goto_17
    add-int/lit8 v4, p2, 0x24

    .line 503
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    add-int/lit8 v4, p2, 0x25

    .line 504
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v51, v26

    goto :goto_18

    :cond_18
    move/from16 v51, v27

    :goto_18
    add-int/lit8 v4, p2, 0x26

    .line 505
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v52, v26

    goto :goto_19

    :cond_19
    move/from16 v52, v27

    :goto_19
    add-int/lit8 v4, p2, 0x27

    .line 506
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v53, v26

    goto :goto_1a

    :cond_1a
    move/from16 v53, v27

    :goto_1a
    add-int/lit8 v4, p2, 0x28

    .line 507
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_1b

    move/from16 v54, v26

    goto :goto_1b

    :cond_1b
    move/from16 v54, v27

    :goto_1b
    add-int/lit8 v4, p2, 0x29

    .line 508
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    add-int/lit8 v4, p2, 0x2a

    .line 509
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    const/16 v58, 0x0

    goto :goto_1c

    :cond_1c
    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v58, v4

    :goto_1c
    add-int/lit8 v4, p2, 0x2b

    .line 510
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    const/16 v59, 0x0

    goto :goto_1d

    :cond_1d
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v59, v4

    :goto_1d
    add-int/lit8 v4, p2, 0x2c

    .line 511
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1e

    const/16 v60, 0x0

    goto :goto_1e

    :cond_1e
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v60, v4

    :goto_1e
    add-int/lit8 v4, p2, 0x2d

    .line 512
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1f

    const/16 v61, 0x0

    goto :goto_1f

    :cond_1f
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v61, v4

    :goto_1f
    add-int/lit8 v4, p2, 0x2e

    .line 513
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_20

    const/16 v62, 0x0

    goto :goto_20

    :cond_20
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v62, v4

    :goto_20
    add-int/lit8 v4, p2, 0x2f

    .line 514
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    move-object/from16 v1, v57

    move-wide v4, v5

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move/from16 v14, v47

    move/from16 v15, v17

    move-wide/from16 v16, v18

    move/from16 v18, v20

    move/from16 v19, v21

    move/from16 v20, v22

    move-object/from16 v21, v23

    move-wide/from16 v22, v24

    move/from16 v24, v28

    move-object/from16 v25, v29

    move-wide/from16 v26, v30

    move-wide/from16 v28, v32

    move-wide/from16 v30, v34

    move-object/from16 v32, v36

    move-object/from16 v33, v37

    move/from16 v34, v38

    move/from16 v35, v39

    move/from16 v36, v40

    move-object/from16 v37, v41

    move-object/from16 v38, v42

    move-object/from16 v39, v43

    move-object/from16 v40, v44

    move/from16 v41, v45

    move-object/from16 v42, v46

    move-object/from16 v43, v48

    move-wide/from16 v44, v49

    move/from16 v46, v51

    move/from16 v47, v52

    move/from16 v48, v53

    move/from16 v49, v54

    move/from16 v50, v55

    move-object/from16 v51, v58

    move-object/from16 v52, v59

    move-object/from16 v53, v60

    move-object/from16 v54, v61

    move-object/from16 v55, v62

    invoke-direct/range {v1 .. v56}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIILjava/lang/String;JZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZLjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;JZZZZILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v57
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;I)V
    .locals 6

    add-int/lit8 v0, p3, 0x0

    .line 521
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHash(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 522
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 523
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setDuration(J)V

    add-int/lit8 v0, p3, 0x3

    .line 524
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSong(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 525
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 526
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 527
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setArtistId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 528
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 529
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSinger(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 530
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 531
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setLrcData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 532
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFrom(I)V

    add-int/lit8 v0, p3, 0xc

    .line 533
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFrom(I)V

    add-int/lit8 v0, p3, 0xd

    .line 534
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldCreateTime(J)V

    add-int/lit8 v0, p3, 0xe

    .line 535
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSize(I)V

    add-int/lit8 v0, p3, 0xf

    .line 536
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoNeed(I)V

    add-int/lit8 v0, p3, 0x10

    .line 537
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setQuality(I)V

    add-int/lit8 v0, p3, 0x11

    .line 538
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 539
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setTs(J)V

    add-int/lit8 v0, p3, 0x13

    .line 540
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanPlay(Z)V

    add-int/lit8 v0, p3, 0x14

    .line 541
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setStyle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 542
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayTime(J)V

    add-int/lit8 v0, p3, 0x16

    .line 543
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCreatime(J)V

    add-int/lit8 v0, p3, 0x17

    .line 544
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setEndTime(J)V

    add-int/lit8 v0, p3, 0x18

    .line 545
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x19

    .line 546
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1a

    .line 547
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayCount(I)V

    add-int/lit8 v0, p3, 0x1b

    .line 548
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setInfoType(I)V

    add-int/lit8 v0, p3, 0x1c

    .line 549
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v3

    :goto_f
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setCanFold(Z)V

    add-int/lit8 v0, p3, 0x1d

    .line 550
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1e

    .line 551
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v0, v2

    goto :goto_11

    :cond_11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1f

    .line 552
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object v0, v2

    goto :goto_13

    :cond_12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_13

    move v0, v1

    goto :goto_12

    :cond_13
    move v0, v3

    :goto_12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_13
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x20

    .line 553
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v0, v2

    goto :goto_14

    :cond_14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_14
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x21

    .line 554
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_15

    :cond_15
    move v0, v3

    :goto_15
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setNeedVip(Z)V

    add-int/lit8 v0, p3, 0x22

    .line 555
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v0, v2

    goto :goto_16

    :cond_16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setMusicSource(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x23

    .line 556
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, v2

    goto :goto_17

    :cond_17
    iget-object v4, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    :goto_17
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    add-int/lit8 v0, p3, 0x24

    .line 557
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setListenUrlRefreshTime(J)V

    add-int/lit8 v0, p3, 0x25

    .line 558
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_18

    :cond_18
    move v0, v3

    :goto_18
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAppend(Z)V

    add-int/lit8 v0, p3, 0x26

    .line 559
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_19

    :cond_19
    move v0, v3

    :goto_19
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setTryPlayable(Z)V

    add-int/lit8 v0, p3, 0x27

    .line 560
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1a

    :cond_1a
    move v0, v3

    :goto_1a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPlayable(Z)V

    add-int/lit8 v0, p3, 0x28

    .line 561
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1b

    :cond_1b
    move v1, v3

    :goto_1b
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setHot(Z)V

    add-int/lit8 v0, p3, 0x29

    .line 562
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongPlayTime(I)V

    add-int/lit8 v0, p3, 0x2a

    .line 563
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v0, v2

    goto :goto_1c

    :cond_1c
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1c
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setFileList(Ljava/util/List;)V

    add-int/lit8 v0, p3, 0x2b

    .line 564
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    move-object v0, v2

    goto :goto_1d

    :cond_1d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setAlg(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2c

    .line 565
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    move-object v0, v2

    goto :goto_1e

    :cond_1e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setPath(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2d

    .line 566
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    move-object v0, v2

    goto :goto_1f

    :cond_1f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSourceID(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2e

    .line 567
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_20

    :cond_20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_20
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setSongExtraId(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2f

    .line 568
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->setVersion(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 461
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;J)Ljava/lang/String;
    .locals 0

    .line 573
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
