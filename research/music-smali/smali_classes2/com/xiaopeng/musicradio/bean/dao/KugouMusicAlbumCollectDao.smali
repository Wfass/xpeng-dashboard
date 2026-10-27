.class public Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "KugouMusicAlbumCollectDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "KUGOU_MUSIC_ALBUM_COLLECT"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 53
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"KUGOU_MUSIC_ALBUM_COLLECT\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"UID\" TEXT,\"ID\" TEXT,\"LOGO\" TEXT,\"NAME\" TEXT,\"SONG_COUNT\" INTEGER NOT NULL ,\"DESCRIPTION\" TEXT,\"TYPE\" INTEGER NOT NULL ,\"CREATE_TIME\" INTEGER NOT NULL ,\"APPEND\" INTEGER NOT NULL ,\"CACHE_TIME\" INTEGER NOT NULL ,\"DISS_EXTRA_ID\" TEXT);"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IDX_KUGOU_MUSIC_ALBUM_COLLECT_UID_ID_TYPE ON \"KUGOU_MUSIC_ALBUM_COLLECT\" (\"UID\" ASC,\"ID\" ASC,\"TYPE\" ASC);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 73
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

    const-string p1, "\"KUGOU_MUSIC_ALBUM_COLLECT\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V
    .locals 4

    .line 124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 126
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 128
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 133
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 146
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 148
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 150
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getSongCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 154
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    .line 156
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 157
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 158
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 159
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const/16 v0, 0xc

    .line 163
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V
    .locals 4

    .line 79
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 81
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 83
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 88
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 93
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 103
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 105
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getSongCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 107
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 109
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    .line 111
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 112
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 113
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 114
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 116
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getDissExtraId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const/16 v0, 0xc

    .line 118
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 216
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Z
    .locals 0

    .line 224
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->getCacheId()Ljava/lang/Long;

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

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;
    .locals 18

    move-object/from16 v0, p1

    .line 174
    new-instance v15, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    add-int/lit8 v1, p2, 0x0

    .line 175
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 176
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v4, p2, 0x2

    .line 177
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    add-int/lit8 v5, p2, 0x3

    .line 178
    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    add-int/lit8 v6, p2, 0x4

    .line 179
    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4
    add-int/lit8 v7, p2, 0x5

    .line 180
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x6

    .line 181
    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    add-int/lit8 v9, p2, 0x7

    .line 182
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v10, p2, 0x8

    .line 183
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    add-int/lit8 v12, p2, 0x9

    .line 184
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getShort(I)S

    move-result v12

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    add-int/lit8 v13, p2, 0xa

    .line 185
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    add-int/lit8 v3, p2, 0xb

    .line 186
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v16, 0x0

    goto :goto_7

    :cond_7
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    :goto_7
    move-object v0, v15

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move v8, v9

    move-wide v9, v10

    move v11, v12

    move-wide v12, v13

    move-object/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJZJLjava/lang/String;)V

    return-object v15
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 193
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 194
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 196
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setSongCount(I)V

    add-int/lit8 v0, p3, 0x6

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setDescription(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 200
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setType(I)V

    add-int/lit8 v0, p3, 0x8

    .line 201
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCreateTime(J)V

    add-int/lit8 v0, p3, 0x9

    .line 202
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setAppend(Z)V

    add-int/lit8 v0, p3, 0xa

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCacheTime(J)V

    add-int/lit8 p3, p3, 0xb

    .line 204
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setDissExtraId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 169
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

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;J)Ljava/lang/Long;
    .locals 1

    .line 209
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;->setCacheId(Ljava/lang/Long;)V

    .line 210
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/KugouMusicAlbumCollect;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
