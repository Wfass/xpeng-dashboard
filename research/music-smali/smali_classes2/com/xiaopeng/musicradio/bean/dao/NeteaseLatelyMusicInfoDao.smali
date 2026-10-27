.class public Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "NeteaseLatelyMusicInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NETEASE_LATELY_MUSIC_INFO"


# instance fields
.field private final fileListConverter:Larl;

.field private final tryFileInfoConverter:Laro;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 59
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    .line 60
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 59
    new-instance p1, Larl;

    invoke-direct {p1}, Larl;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    .line 60
    new-instance p1, Laro;

    invoke-direct {p1}, Laro;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 73
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"NETEASE_LATELY_MUSIC_INFO\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"HASH\" TEXT,\"SONG_ID\" TEXT,\"SONG\" TEXT,\"SINGER\" TEXT,\"LOGO\" TEXT,\"UID\" TEXT,\"MUSIC_FROM\" INTEGER NOT NULL ,\"OLD_MUSIC_FROM\" INTEGER NOT NULL ,\"MUSIC_FROM_TITLE\" TEXT,\"OLD_MUSIC_FROM_TITLE\" TEXT,\"TS\" INTEGER NOT NULL ,\"DATA\" TEXT,\"LRC_DATA\" TEXT,\"CAN_PLAY\" INTEGER NOT NULL ,\"ARTIST_ID\" TEXT,\"INFO_NEED\" INTEGER NOT NULL ,\"NEED_VIP\" INTEGER NOT NULL ,\"PLAY_TIME\" INTEGER NOT NULL ,\"ALBUM_ID\" TEXT,\"LISTEN_URL_REFRESH_TIME\" INTEGER NOT NULL ,\"VERSION\" INTEGER NOT NULL ,\"FILE_LIST\" TEXT,\"TRY_FILE_INFO\" TEXT,\"SONG_PLAY_TIME\" INTEGER NOT NULL );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IDX_NETEASE_LATELY_MUSIC_INFO_HASH_UID ON \"NETEASE_LATELY_MUSIC_INFO\" (\"HASH\" ASC,\"UID\" ASC);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 106
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

    const-string p1, "\"NETEASE_LATELY_MUSIC_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V
    .locals 8

    .line 202
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 204
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 206
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 209
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 211
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 214
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 216
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 219
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 221
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 224
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 226
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 229
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 231
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 234
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 236
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0x8

    .line 238
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 239
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 241
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 243
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 246
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 248
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_8
    const/16 v0, 0xc

    .line 250
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 252
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xd

    .line 254
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 257
    :cond_9
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xe

    .line 259
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0xf

    .line 261
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCanPlay()Z

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

    .line 263
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x10

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x11

    .line 267
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 268
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_d
    move-wide v2, v4

    :goto_1
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 269
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 271
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x14

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x15

    .line 275
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 276
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 278
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x17

    .line 280
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 283
    :cond_f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x18

    .line 285
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v2, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_10
    const/16 v0, 0x19

    .line 287
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongPlayTime()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V
    .locals 8

    .line 112
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 114
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 119
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 121
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 124
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 126
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 129
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 131
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 134
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 136
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 139
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 141
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 144
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 146
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0x8

    .line 148
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 149
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getOldMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    .line 153
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 156
    :cond_7
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getOldMusicFromTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xb

    .line 158
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_8
    const/16 v0, 0xc

    .line 160
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 162
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0xd

    .line 164
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 167
    :cond_9
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getLrcData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0xe

    .line 169
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0xf

    .line 171
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCanPlay()Z

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

    .line 173
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getArtistId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const/16 v1, 0x10

    .line 175
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_c
    const/16 v0, 0x11

    .line 177
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getInfoNeed()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x12

    .line 178
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getNeedVip()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_1

    :cond_d
    move-wide v2, v4

    :goto_1
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x13

    .line 179
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getPlayTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 181
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 v1, 0x14

    .line 183
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_e
    const/16 v0, 0x15

    .line 185
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getListenUrlRefreshTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 186
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 188
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getFileList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_f

    const/16 v1, 0x17

    .line 190
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    invoke-virtual {v2, v0}, Larl;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 193
    :cond_f
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getTryFileInfo()Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v1, 0x18

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-virtual {v2, v0}, Laro;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_10
    const/16 v0, 0x19

    .line 197
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getSongPlayTime()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Z
    .locals 0

    .line 373
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->getCacheId()Ljava/lang/Long;

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 297
    new-instance v30, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    add-int/lit8 v2, p2, 0x0

    .line 298
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

    .line 299
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

    .line 300
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v6, p2, 0x3

    .line 301
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_3
    add-int/lit8 v7, p2, 0x4

    .line 302
    invoke-interface {v1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_4
    add-int/lit8 v8, p2, 0x5

    .line 303
    invoke-interface {v1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    add-int/lit8 v9, p2, 0x6

    .line 304
    invoke-interface {v1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    add-int/lit8 v10, p2, 0x7

    .line 305
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    add-int/lit8 v11, p2, 0x8

    .line 306
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    add-int/lit8 v12, p2, 0x9

    .line 307
    invoke-interface {v1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    :goto_7
    add-int/lit8 v13, p2, 0xa

    .line 308
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_8
    add-int/lit8 v14, p2, 0xb

    .line 309
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    add-int/lit8 v4, p2, 0xc

    .line 310
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    goto :goto_9

    :cond_9
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    :goto_9
    add-int/lit8 v4, p2, 0xd

    .line 311
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    goto :goto_a

    :cond_a
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    :goto_a
    add-int/lit8 v4, p2, 0xe

    .line 312
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v4, :cond_b

    move/from16 v21, v19

    goto :goto_b

    :cond_b
    move/from16 v21, v20

    :goto_b
    add-int/lit8 v4, p2, 0xf

    .line 313
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_c

    const/16 v22, 0x0

    goto :goto_c

    :cond_c
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    :goto_c
    add-int/lit8 v4, p2, 0x10

    .line 314
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    add-int/lit8 v4, p2, 0x11

    .line 315
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_d

    move/from16 v20, v19

    :cond_d
    add-int/lit8 v4, p2, 0x12

    .line 316
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    add-int/lit8 v4, p2, 0x13

    .line 317
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v26, 0x0

    goto :goto_d

    :cond_e
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_d
    add-int/lit8 v4, p2, 0x14

    .line 318
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    add-int/lit8 v4, p2, 0x15

    .line 319
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    add-int/lit8 v4, p2, 0x16

    .line 320
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_f

    move-wide/from16 v32, v14

    const/16 v34, 0x0

    goto :goto_e

    :cond_f
    move-wide/from16 v32, v14

    iget-object v14, v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v34, v4

    :goto_e
    add-int/lit8 v4, p2, 0x17

    .line 321
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_10

    const/16 v35, 0x0

    goto :goto_f

    :cond_10
    iget-object v14, v0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v4

    move-object/from16 v35, v4

    :goto_f
    add-int/lit8 v4, p2, 0x18

    .line 322
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move-object/from16 v1, v30

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    move-object v11, v12

    move-object v12, v13

    move-wide/from16 v13, v32

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v21

    move-object/from16 v18, v22

    move/from16 v19, v23

    move-wide/from16 v21, v24

    move-object/from16 v23, v26

    move-wide/from16 v24, v27

    move/from16 v26, v31

    move-object/from16 v27, v34

    move-object/from16 v28, v35

    invoke-direct/range {v1 .. v29}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZJLjava/lang/String;JILjava/util/List;Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;I)V

    return-object v30
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;I)V
    .locals 5

    add-int/lit8 v0, p3, 0x0

    .line 329
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 330
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setHash(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 331
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSongId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 332
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSong(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 333
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSinger(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 334
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 335
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 336
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setMusicFrom(I)V

    add-int/lit8 v0, p3, 0x8

    .line 337
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setOldMusicFrom(I)V

    add-int/lit8 v0, p3, 0x9

    .line 338
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 339
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setOldMusicFromTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 340
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setTs(J)V

    add-int/lit8 v0, p3, 0xc

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xd

    .line 342
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v0, v2

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setLrcData(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 343
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setCanPlay(Z)V

    add-int/lit8 v0, p3, 0xf

    .line 344
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v0, v2

    goto :goto_c

    :cond_c
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setArtistId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x10

    .line 345
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setInfoNeed(I)V

    add-int/lit8 v0, p3, 0x11

    .line 346
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_d

    :cond_d
    move v1, v3

    :goto_d
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setNeedVip(Z)V

    add-int/lit8 v0, p3, 0x12

    .line 347
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setPlayTime(J)V

    add-int/lit8 v0, p3, 0x13

    .line 348
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v0, v2

    goto :goto_e

    :cond_e
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setAlbumId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 349
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setListenUrlRefreshTime(J)V

    add-int/lit8 v0, p3, 0x15

    .line 350
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setVersion(I)V

    add-int/lit8 v0, p3, 0x16

    .line 351
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v0, v2

    goto :goto_f

    :cond_f
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->fileListConverter:Larl;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larl;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_f
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setFileList(Ljava/util/List;)V

    add-int/lit8 v0, p3, 0x17

    .line 352
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_10

    :cond_10
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->tryFileInfoConverter:Laro;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laro;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;

    move-result-object v2

    :goto_10
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setTryFileInfo(Lcom/xiaopeng/musicradio/bean/xpbean/TryFileInfo;)V

    add-int/lit8 p3, p3, 0x18

    .line 353
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setSongPlayTime(I)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 292
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

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;J)Ljava/lang/Long;
    .locals 1

    .line 358
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;->setCacheId(Ljava/lang/Long;)V

    .line 359
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseLatelyMusicInfo;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
