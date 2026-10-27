.class public Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "KugouMusicRadioItemDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "KUGOU_MUSIC_RADIO_ITEM"


# instance fields
.field private final allLogosConverter:Larn;

.field private final firstSongInfoBoConverter:Larh;

.field private final songInfosConverter:Lark;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 70
    new-instance p1, Larh;

    invoke-direct {p1}, Larh;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    .line 71
    new-instance p1, Lark;

    invoke-direct {p1}, Lark;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    .line 72
    new-instance p1, Larn;

    invoke-direct {p1}, Larn;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 70
    new-instance p1, Larh;

    invoke-direct {p1}, Larh;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    .line 71
    new-instance p1, Lark;

    invoke-direct {p1}, Lark;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    .line 72
    new-instance p1, Larn;

    invoke-direct {p1}, Larn;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 85
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"KUGOU_MUSIC_RADIO_ITEM\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"SYS_UID\" INTEGER NOT NULL ,\"UID\" TEXT,\"CACHE_TIME\" INTEGER NOT NULL ,\"ID\" TEXT,\"LOGO_URL\" TEXT,\"ICON_URL\" TEXT,\"NIGHT_ICON_URL\" TEXT,\"TAG\" TEXT,\"CATEGORY_ID\" TEXT,\"ARTIST_ID\" TEXT,\"TITLE\" TEXT,\"TYPE\" TEXT,\"SINGER\" TEXT,\"SONG_NAME\" TEXT,\"COVER_URL\" TEXT,\"FIRST_SONG_INFO_BO\" TEXT,\"LOGO\" TEXT,\"NAME\" TEXT,\"RANK_ID\" TEXT,\"RANK_NAME\" TEXT,\"IMG_URL\" TEXT,\"RANK_TYPE\" INTEGER NOT NULL ,\"SONG_INFOS\" TEXT,\"NEED_VIP\" INTEGER NOT NULL ,\"CLICK_TYPE\" TEXT,\"SHEET_TYPE\" TEXT,\"SHEET_NAME\" TEXT,\"PRE_TIME\" INTEGER NOT NULL ,\"NOW_TIME\" INTEGER NOT NULL ,\"PRE_LOGO_URL\" TEXT,\"NOW_LOGO_URL\" TEXT,\"PLAY_STATE\" INTEGER NOT NULL ,\"VERSION\" INTEGER NOT NULL ,\"ALL_LOGOS\" TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IDX_KUGOU_MUSIC_RADIO_ITEM_SYS_UID_UID_ID_TYPE ON \"KUGOU_MUSIC_RADIO_ITEM\" (\"SYS_UID\" ASC,\"UID\" ASC,\"ID\" ASC,\"TYPE\" ASC);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 128
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

    const-string p1, "\"KUGOU_MUSIC_RADIO_ITEM\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V
    .locals 4

    .line 282
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 284
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 286
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 288
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSysUid()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 290
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 292
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 294
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 296
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 298
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 301
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 303
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 306
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 308
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 311
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNightIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 316
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    .line 318
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 321
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 323
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 326
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 328
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 331
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    .line 333
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :cond_9
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 338
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 341
    :cond_a
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xe

    .line 343
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 346
    :cond_b
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xf

    .line 348
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 351
    :cond_c
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x10

    .line 353
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 356
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x11

    .line 358
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    invoke-virtual {v2, v0}, Larh;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 361
    :cond_e
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x12

    .line 363
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 366
    :cond_f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x13

    .line 368
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 371
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x14

    .line 373
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 376
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x15

    .line 378
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 381
    :cond_12
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x16

    .line 383
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_13
    const/16 v0, 0x17

    .line 385
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 387
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x18

    .line 389
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    invoke-virtual {v2, v0}, Lark;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_14
    const/16 v0, 0x19

    .line 391
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_15
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 393
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getClickType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x1a

    .line 395
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 398
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSheetType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1b

    .line 400
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 403
    :cond_17
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/16 v1, 0x1c

    .line 405
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_18
    const/16 v0, 0x1d

    .line 407
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPreTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x1e

    .line 408
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNowTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 410
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPreLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1f

    .line 412
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 415
    :cond_19
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNowLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x20

    .line 417
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1a
    const/16 v0, 0x21

    .line 419
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPlayState()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x22

    .line 420
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 422
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getAllLogos()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1b

    const/16 v0, 0x23

    .line 424
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    invoke-virtual {v1, p2}, Larn;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V
    .locals 4

    .line 134
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 136
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 138
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    :cond_0
    const/4 v0, 0x2

    .line 140
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSysUid()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 142
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 144
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 146
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 148
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 150
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 153
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 155
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 158
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 160
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 163
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNightIconUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    .line 165
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 168
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0x9

    .line 170
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 173
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 175
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 178
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 180
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 183
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xc

    .line 185
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 188
    :cond_9
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xd

    .line 190
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_a
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const/16 v1, 0xe

    .line 195
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 198
    :cond_b
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0xf

    .line 200
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 203
    :cond_c
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const/16 v1, 0x10

    .line 205
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 208
    :cond_d
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getFirstSongInfoBo()Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x11

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    invoke-virtual {v2, v0}, Larh;->a(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 213
    :cond_e
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x12

    .line 215
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 218
    :cond_f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x13

    .line 220
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 223
    :cond_10
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const/16 v1, 0x14

    .line 225
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 228
    :cond_11
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/16 v1, 0x15

    .line 230
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 233
    :cond_12
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const/16 v1, 0x16

    .line 235
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_13
    const/16 v0, 0x17

    .line 237
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getRankType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 239
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSongInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_14

    const/16 v1, 0x18

    .line 241
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    invoke-virtual {v2, v0}, Lark;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_14
    const/16 v0, 0x19

    .line 243
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_15
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 245
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getClickType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const/16 v1, 0x1a

    .line 247
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 250
    :cond_16
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSheetType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/16 v1, 0x1b

    .line 252
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 255
    :cond_17
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getSheetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    const/16 v1, 0x1c

    .line 257
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_18
    const/16 v0, 0x1d

    .line 259
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPreTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x1e

    .line 260
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNowTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 262
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPreLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const/16 v1, 0x1f

    .line 264
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 267
    :cond_19
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getNowLogoUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/16 v1, 0x20

    .line 269
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1a
    const/16 v0, 0x21

    .line 271
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getPlayState()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x22

    .line 272
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 274
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getAllLogos()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1b

    const/16 v0, 0x23

    .line 276
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    invoke-virtual {v1, p2}, Larn;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1b
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)Z
    .locals 0

    .line 531
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->getCacheId()Ljava/lang/Long;

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

    .line 24
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 435
    new-instance v41, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    add-int/lit8 v2, p2, 0x0

    .line 436
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, p2, 0x1

    .line 437
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-int/lit8 v3, p2, 0x2

    .line 438
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    :goto_1
    add-int/lit8 v3, p2, 0x3

    .line 439
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    add-int/lit8 v3, p2, 0x4

    .line 440
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    :goto_2
    add-int/lit8 v3, p2, 0x5

    .line 441
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    :goto_3
    add-int/lit8 v3, p2, 0x6

    .line 442
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    :goto_4
    add-int/lit8 v3, p2, 0x7

    .line 443
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    :goto_5
    add-int/lit8 v3, p2, 0x8

    .line 444
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v14, v3

    :goto_6
    add-int/lit8 v3, p2, 0x9

    .line 445
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    :goto_7
    add-int/lit8 v3, p2, 0xa

    .line 446
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    :goto_8
    add-int/lit8 v3, p2, 0xb

    .line 447
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    :goto_9
    add-int/lit8 v3, p2, 0xc

    .line 448
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_a
    add-int/lit8 v3, p2, 0xd

    .line 449
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_b

    const/16 v19, 0x0

    goto :goto_b

    :cond_b
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    :goto_b
    add-int/lit8 v3, p2, 0xe

    .line 450
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v3

    :goto_c
    add-int/lit8 v3, p2, 0xf

    .line 451
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_d

    const/16 v21, 0x0

    goto :goto_d

    :cond_d
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v21, v3

    :goto_d
    add-int/lit8 v3, p2, 0x10

    .line 452
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_e

    const/16 v23, 0x0

    goto :goto_e

    :cond_e
    iget-object v4, v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Larh;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v3

    move-object/from16 v23, v3

    :goto_e
    add-int/lit8 v3, p2, 0x11

    .line 453
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v24, 0x0

    goto :goto_f

    :cond_f
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v3

    :goto_f
    add-int/lit8 v3, p2, 0x12

    .line 454
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/16 v25, 0x0

    goto :goto_10

    :cond_10
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v25, v3

    :goto_10
    add-int/lit8 v3, p2, 0x13

    .line 455
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v26, 0x0

    goto :goto_11

    :cond_11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v26, v3

    :goto_11
    add-int/lit8 v3, p2, 0x14

    .line 456
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v27, 0x0

    goto :goto_12

    :cond_12
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :goto_12
    add-int/lit8 v3, p2, 0x15

    .line 457
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v28, 0x0

    goto :goto_13

    :cond_13
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v28, v3

    :goto_13
    add-int/lit8 v3, p2, 0x16

    .line 458
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    add-int/lit8 v3, p2, 0x17

    .line 459
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v30, 0x0

    goto :goto_14

    :cond_14
    iget-object v4, v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lark;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v30, v3

    :goto_14
    add-int/lit8 v3, p2, 0x18

    .line 460
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getShort(I)S

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_15

    :cond_15
    const/4 v3, 0x0

    :goto_15
    move/from16 v31, v3

    add-int/lit8 v3, p2, 0x19

    .line 461
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v32, 0x0

    goto :goto_16

    :cond_16
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_16
    add-int/lit8 v3, p2, 0x1a

    .line 462
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v33, 0x0

    goto :goto_17

    :cond_17
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v33, v3

    :goto_17
    add-int/lit8 v3, p2, 0x1b

    .line 463
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v34, 0x0

    goto :goto_18

    :cond_18
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v34, v3

    :goto_18
    add-int/lit8 v3, p2, 0x1c

    .line 464
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    add-int/lit8 v3, p2, 0x1d

    .line 465
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    add-int/lit8 v3, p2, 0x1e

    .line 466
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v39, 0x0

    goto :goto_19

    :cond_19
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v39, v3

    :goto_19
    add-int/lit8 v3, p2, 0x1f

    .line 467
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v40, 0x0

    goto :goto_1a

    :cond_1a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v40, v3

    :goto_1a
    add-int/lit8 v3, p2, 0x20

    .line 468
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    add-int/lit8 v3, p2, 0x21

    .line 469
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    add-int/lit8 v3, p2, 0x22

    .line 470
    invoke-interface {v1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/16 v44, 0x0

    goto :goto_1b

    :cond_1b
    iget-object v4, v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Larn;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v44, v1

    :goto_1b
    move-object/from16 v1, v41

    move-wide v3, v5

    move-object v5, v7

    move-wide v6, v8

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v23

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    move/from16 v26, v29

    move-object/from16 v27, v30

    move/from16 v28, v31

    move-object/from16 v29, v32

    move-object/from16 v30, v33

    move-object/from16 v31, v34

    move-wide/from16 v32, v35

    move-wide/from16 v34, v37

    move-object/from16 v36, v39

    move-object/from16 v37, v40

    move/from16 v38, v42

    move/from16 v39, v43

    move-object/from16 v40, v44

    invoke-direct/range {v1 .. v40}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;-><init>(Ljava/lang/Long;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;IILjava/util/List;)V

    return-object v41
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 477
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 478
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSysUid(J)V

    add-int/lit8 v0, p3, 0x2

    .line 479
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 480
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheTime(J)V

    add-int/lit8 v0, p3, 0x4

    .line 481
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 482
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 483
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setIconUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 484
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNightIconUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 485
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setTag(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 486
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCategoryId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 487
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setArtistId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 488
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 489
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setType(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 490
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v0, v2

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSinger(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 491
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSongName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 492
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v0, v2

    goto :goto_d

    :cond_d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_d
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCoverUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 493
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->firstSongInfoBoConverter:Larh;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larh;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setFirstSongInfoBo(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V

    add-int/lit8 v0, p3, 0x11

    .line 494
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_f
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 495
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v0, v2

    goto :goto_10

    :cond_10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x13

    .line 496
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_11

    move-object v0, v2

    goto :goto_11

    :cond_11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 497
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v0, v2

    goto :goto_12

    :cond_12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x15

    .line 498
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v0, v2

    goto :goto_13

    :cond_13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setImgUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x16

    .line 499
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setRankType(I)V

    add-int/lit8 v0, p3, 0x17

    .line 500
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_14

    move-object v0, v2

    goto :goto_14

    :cond_14
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->songInfosConverter:Lark;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lark;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_14
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSongInfos(Ljava/util/List;)V

    add-int/lit8 v0, p3, 0x18

    .line 501
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNeedVip(Z)V

    add-int/lit8 v0, p3, 0x19

    .line 502
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_16

    move-object v0, v2

    goto :goto_16

    :cond_16
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_16
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setClickType(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1a

    .line 503
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v0, v2

    goto :goto_17

    :cond_17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSheetType(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1b

    .line 504
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_18

    move-object v0, v2

    goto :goto_18

    :cond_18
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setSheetName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1c

    .line 505
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPreTime(J)V

    add-int/lit8 v0, p3, 0x1d

    .line 506
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNowTime(J)V

    add-int/lit8 v0, p3, 0x1e

    .line 507
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v0, v2

    goto :goto_19

    :cond_19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPreLogoUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1f

    .line 508
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-object v0, v2

    goto :goto_1a

    :cond_1a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setNowLogoUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x20

    .line 509
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setPlayState(I)V

    add-int/lit8 v0, p3, 0x21

    .line 510
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setVersion(I)V

    add-int/lit8 p3, p3, 0x22

    .line 511
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1b

    :cond_1b
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->allLogosConverter:Larn;

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Larn;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_1b
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setAllLogos(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 430
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;J)Ljava/lang/Long;
    .locals 1

    .line 516
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;->setCacheId(Ljava/lang/Long;)V

    .line 517
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicRadioItem;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
