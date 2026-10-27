.class public Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "NeteaseMusicInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NETEASE_MUSIC_INFO"


# instance fields
.field private final fileListConverter:Larl;

.field private final tryFileInfoConverter:Laro;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 78
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    .line 79
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 78
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    .line 79
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 92
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"NETEASE_MUSIC_INFO\" (\"HASH\" TEXT PRIMARY KEY NOT NULL ,\"ALBUM_ID\" TEXT,\"DURATION\" INTEGER NOT NULL ,\"SONG\" TEXT,\"ALBUM_NAME\" TEXT,\"ALBUM_LOGO\" TEXT,\"ARTIST_ID\" TEXT,\"DATA\" TEXT,\"SINGER\" TEXT,\"LOGO\" TEXT,\"LRC_DATA\" TEXT,\"MUSIC_FROM\" INTEGER NOT NULL ,\"OLD_MUSIC_FROM\" INTEGER NOT NULL ,\"OLD_CREATE_TIME\" INTEGER NOT NULL ,\"SIZE\" INTEGER NOT NULL ,\"INFO_NEED\" INTEGER NOT NULL ,\"QUALITY\" INTEGER NOT NULL ,\"UID\" TEXT,\"TS\" INTEGER NOT NULL ,\"CAN_PLAY\" INTEGER NOT NULL ,\"STYLE\" TEXT,\"PLAY_TIME\" INTEGER NOT NULL ,\"CREATIME\" INTEGER NOT NULL ,\"END_TIME\" INTEGER NOT NULL ,\"MUSIC_FROM_TITLE\" TEXT,\"OLD_MUSIC_FROM_TITLE\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"INFO_TYPE\" INTEGER NOT NULL ,\"CAN_FOLD\" INTEGER NOT NULL ,\"SONG_ID\" TEXT,\"SEARCH_SONG_TEXT\" TEXT,\"IS_SHORT_LISTEN\" INTEGER,\"SHORT_DURATION_S\" INTEGER,\"NEED_VIP\" INTEGER NOT NULL ,\"MUSIC_SOURCE\" TEXT,\"TRY_FILE_INFO\" TEXT,\"LISTEN_URL_REFRESH_TIME\" INTEGER NOT NULL ,\"APPEND\" INTEGER NOT NULL ,\"TRY_PLAYABLE\" INTEGER NOT NULL ,\"PLAYABLE\" INTEGER NOT NULL ,\"SONG_PLAY_TIME\" INTEGER NOT NULL ,\"FILE_LIST\" TEXT,\"ALG\" TEXT,\"VERSION\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 141
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

    const-string p1, "\"NETEASE_MUSIC_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)V
    .locals 8

    .line 284
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 286
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 288
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 293
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 295
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 297
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 299
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 302
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 304
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 307
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 309
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 312
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 314
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 317
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 319
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 322
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 324
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 327
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 329
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 332
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 334
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 336
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 337
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 338
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldCreateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 339
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 340
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 341
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getQuality()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 343
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x12

    .line 345
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x13

    .line 347
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 348
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanPlay()Z

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

    .line 350
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x15

    .line 352
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x16

    .line 354
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 355
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 356
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getEndTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 358
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x19

    .line 360
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 363
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x1a

    .line 365
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x1b

    .line 367
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayCount()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1c

    .line 368
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoType()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1d

    .line 369
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanFold()Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_1

    :cond_f
    move-wide v6, v4

    :goto_1
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 371
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1e

    .line 373
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 376
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x1f

    .line 378
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 381
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x20

    .line 383
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move-wide v6, v2

    goto :goto_2

    :cond_12
    move-wide v6, v4

    :goto_2
    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 386
    :cond_13
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x21

    .line 388
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {p1, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_14
    const/16 v0, 0x22

    .line 390
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_3

    :cond_15
    move-wide v6, v4

    :goto_3
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 392
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x23

    .line 394
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 397
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x24

    .line 399
    iget-object v6, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v6, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_17
    const/16 v0, 0x25

    .line 401
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x26

    .line 402
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_18

    move-wide v6, v2

    goto :goto_4

    :cond_18
    move-wide v6, v4

    :goto_4
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x27

    .line 403
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTryPlayable()Z

    move-result v1

    if-eqz v1, :cond_19

    move-wide v6, v2

    goto :goto_5

    :cond_19
    move-wide v6, v4

    :goto_5
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x28

    .line 404
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayable()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_6

    :cond_1a
    move-wide v2, v4

    :goto_6
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x29

    .line 405
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 407
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x2a

    .line 409
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 412
    :cond_1b
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x2b

    .line 414
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1c
    const/16 v0, 0x2c

    .line 416
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getVersion()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)V
    .locals 8

    .line 147
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 149
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 151
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 156
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 158
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 160
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 162
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 165
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    .line 167
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 170
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlbumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    .line 172
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 175
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 177
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 180
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    .line 182
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 185
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    .line 187
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 190
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xa

    .line 192
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 195
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xb

    .line 197
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0xc

    .line 199
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 200
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 201
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 202
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSize()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 203
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 204
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getQuality()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 206
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x12

    .line 208
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x13

    .line 210
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x14

    .line 211
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanPlay()Z

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

    .line 213
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getStyle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x15

    .line 215
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x16

    .line 217
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x17

    .line 218
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCreatime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 219
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getEndTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 221
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x19

    .line 223
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 226
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x1a

    .line 228
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x1b

    .line 230
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayCount()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1c

    .line 231
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getInfoType()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1d

    .line 232
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getCanFold()Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v6, v2

    goto :goto_1

    :cond_f
    move-wide v6, v4

    :goto_1
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 234
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x1e

    .line 236
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 239
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSearchSongText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x1f

    .line 241
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 244
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x20

    .line 246
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    move-wide v6, v2

    goto :goto_2

    :cond_12
    move-wide v6, v4

    :goto_2
    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 249
    :cond_13
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x21

    .line 251
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-interface {p1, v1, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_14
    const/16 v0, 0x22

    .line 253
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    move-wide v6, v2

    goto :goto_3

    :cond_15
    move-wide v6, v4

    :goto_3
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 255
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getMusicSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x23

    .line 257
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 260
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x24

    .line 262
    iget-object v6, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v6, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_17
    const/16 v0, 0x25

    .line 264
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v6

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x26

    .line 265
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_18

    move-wide v6, v2

    goto :goto_4

    :cond_18
    move-wide v6, v4

    :goto_4
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x27

    .line 266
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getTryPlayable()Z

    move-result v1

    if-eqz v1, :cond_19

    move-wide v6, v2

    goto :goto_5

    :cond_19
    move-wide v6, v4

    :goto_5
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x28

    .line 267
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getPlayable()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_6

    :cond_1a
    move-wide v2, v4

    :goto_6
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x29

    .line 268
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getSongPlayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 270
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x2a

    .line 272
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 275
    :cond_1b
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getAlg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x2b

    .line 277
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1c
    const/16 v0, 0x2c

    .line 279
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getVersion()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Z
    .locals 0

    .line 539
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;
    .locals 59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 426
    new-instance v53, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    add-int/lit8 v2, p2, 0x0

    .line 427
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

    .line 428
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

    .line 429
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-int/lit8 v7, p2, 0x3

    .line 430
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

    .line 431
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

    .line 432
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

    .line 433
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

    .line 434
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

    .line 435
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

    .line 436
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

    .line 437
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

    .line 438
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    add-int/lit8 v4, p2, 0xc

    .line 439
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    add-int/lit8 v4, p2, 0xd

    .line 440
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    add-int/lit8 v4, p2, 0xe

    .line 441
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    add-int/lit8 v4, p2, 0xf

    .line 442
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    add-int/lit8 v4, p2, 0x10

    .line 443
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    add-int/lit8 v4, p2, 0x11

    .line 444
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

    .line 445
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    add-int/lit8 v4, p2, 0x13

    .line 446
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

    .line 447
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

    .line 448
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    add-int/lit8 v4, p2, 0x16

    .line 449
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    add-int/lit8 v4, p2, 0x17

    .line 450
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    add-int/lit8 v4, p2, 0x18

    .line 451
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

    .line 452
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

    .line 453
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    add-int/lit8 v4, p2, 0x1b

    .line 454
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v39

    add-int/lit8 v4, p2, 0x1c

    .line 455
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_f

    move/from16 v40, v26

    goto :goto_f

    :cond_f
    move/from16 v40, v27

    :goto_f
    add-int/lit8 v4, p2, 0x1d

    .line 456
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

    .line 457
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

    .line 458
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

    .line 459
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

    .line 460
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_15

    move/from16 v45, v26

    goto :goto_15

    :cond_15
    move/from16 v45, v27

    :goto_15
    add-int/lit8 v4, p2, 0x22

    .line 461
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

    .line 462
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_17

    move/from16 v47, v15

    const/16 v48, 0x0

    goto :goto_17

    :cond_17
    move/from16 v47, v15

    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v4

    move-object/from16 v48, v4

    :goto_17
    add-int/lit8 v4, p2, 0x24

    .line 463
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    add-int/lit8 v4, p2, 0x25

    .line 464
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_18

    move/from16 v51, v26

    goto :goto_18

    :cond_18
    move/from16 v51, v27

    :goto_18
    add-int/lit8 v4, p2, 0x26

    .line 465
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_19

    move/from16 v54, v26

    goto :goto_19

    :cond_19
    move/from16 v54, v27

    :goto_19
    add-int/lit8 v4, p2, 0x27

    .line 466
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_1a

    move/from16 v55, v26

    goto :goto_1a

    :cond_1a
    move/from16 v55, v27

    :goto_1a
    add-int/lit8 v4, p2, 0x28

    .line 467
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v56

    add-int/lit8 v4, p2, 0x29

    .line 468
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1b

    const/16 v57, 0x0

    goto :goto_1b

    :cond_1b
    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v57, v4

    :goto_1b
    add-int/lit8 v4, p2, 0x2a

    .line 469
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_1c

    const/16 v58, 0x0

    goto :goto_1c

    :cond_1c
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v58, v4

    :goto_1c
    add-int/lit8 v4, p2, 0x2b

    .line 470
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    move-object/from16 v1, v53

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

    move/from16 v47, v54

    move/from16 v48, v55

    move/from16 v49, v56

    move-object/from16 v50, v57

    move-object/from16 v51, v58

    invoke-direct/range {v1 .. v52}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIILjava/lang/String;JZLjava/lang/String;JJJLjava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;ZLjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;JZZZILjava/util/List;Ljava/lang/String;I)V

    return-object v53
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;I)V
    .locals 6

    add-int/lit8 v0, p3, 0x0

    .line 477
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setHash(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 478
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 479
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setDuration(J)V

    add-int/lit8 v0, p3, 0x3

    .line 480
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSong(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 481
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 482
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlbumLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 483
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setArtistId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 484
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 485
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSinger(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 486
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 487
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setLrcData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 488
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFrom(I)V

    add-int/lit8 v0, p3, 0xc

    .line 489
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFrom(I)V

    add-int/lit8 v0, p3, 0xd

    .line 490
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldCreateTime(J)V

    add-int/lit8 v0, p3, 0xe

    .line 491
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSize(I)V

    add-int/lit8 v0, p3, 0xf

    .line 492
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoNeed(I)V

    add-int/lit8 v0, p3, 0x10

    .line 493
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setQuality(I)V

    add-int/lit8 v0, p3, 0x11

    .line 494
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 495
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setTs(J)V

    add-int/lit8 v0, p3, 0x13

    .line 496
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanPlay(Z)V

    add-int/lit8 v0, p3, 0x14

    .line 497
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setStyle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 498
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayTime(J)V

    add-int/lit8 v0, p3, 0x16

    .line 499
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCreatime(J)V

    add-int/lit8 v0, p3, 0x17

    .line 500
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setEndTime(J)V

    add-int/lit8 v0, p3, 0x18

    .line 501
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x19

    .line 502
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1a

    .line 503
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayCount(I)V

    add-int/lit8 v0, p3, 0x1b

    .line 504
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setInfoType(I)V

    add-int/lit8 v0, p3, 0x1c

    .line 505
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v3

    :goto_f
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setCanFold(Z)V

    add-int/lit8 v0, p3, 0x1d

    .line 506
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1e

    .line 507
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object v0, v2

    goto :goto_11

    :cond_11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSearchSongText(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1f

    .line 508
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setIsShortListen(Ljava/lang/Boolean;)V

    add-int/lit8 v0, p3, 0x20

    .line 509
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setShortDurationS(Ljava/lang/Integer;)V

    add-int/lit8 v0, p3, 0x21

    .line 510
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_15

    move v0, v1

    goto :goto_15

    :cond_15
    move v0, v3

    :goto_15
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setNeedVip(Z)V

    add-int/lit8 v0, p3, 0x22

    .line 511
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v0, v2

    goto :goto_16

    :cond_16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setMusicSource(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x23

    .line 512
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v0, v2

    goto :goto_17

    :cond_17
    iget-object v4, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    :goto_17
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    add-int/lit8 v0, p3, 0x24

    .line 513
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setListenUrlRefreshTime(J)V

    add-int/lit8 v0, p3, 0x25

    .line 514
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_18

    :cond_18
    move v0, v3

    :goto_18
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAppend(Z)V

    add-int/lit8 v0, p3, 0x26

    .line 515
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_19

    :cond_19
    move v0, v3

    :goto_19
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setTryPlayable(Z)V

    add-int/lit8 v0, p3, 0x27

    .line 516
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1a

    :cond_1a
    move v1, v3

    :goto_1a
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setPlayable(Z)V

    add-int/lit8 v0, p3, 0x28

    .line 517
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setSongPlayTime(I)V

    add-int/lit8 v0, p3, 0x29

    .line 518
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object v0, v2

    goto :goto_1b

    :cond_1b
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1b
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setFileList(Ljava/util/List;)V

    add-int/lit8 v0, p3, 0x2a

    .line 519
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1c

    :cond_1c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setAlg(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x2b

    .line 520
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->setVersion(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 421
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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;J)Ljava/lang/String;
    .locals 0

    .line 525
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
