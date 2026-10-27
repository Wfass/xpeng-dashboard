.class public Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ReadLoveInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "READ_LOVE_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 52
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

    .line 58
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"READ_LOVE_INFO\" (\"_id\" INTEGER PRIMARY KEY NOT NULL ,\"ALBUM_NAME\" TEXT,\"ARTIST_ID\" INTEGER NOT NULL ,\"ARTIST\" TEXT,\"UID\" TEXT,\"TS\" INTEGER NOT NULL ,\"LOGO\" TEXT,\"UPDATE_TIME\" INTEGER NOT NULL ,\"LARGE_LOGO\" TEXT,\"MEDIUM_LOGO\" TEXT,\"SHORT_INTRO\" TEXT,\"INTRO\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"CATEGORY_NAME\" TEXT,\"PAYMENT_TYPE\" INTEGER NOT NULL ,\"AUTHORIZED\" INTEGER NOT NULL ,\"APPEND\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 80
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

    const-string p1, "\"READ_LOVE_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 8

    .line 144
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 145
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 147
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 149
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 151
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtistId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 153
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 155
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 160
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    .line 162
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 164
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    .line 166
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x8

    .line 168
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 170
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 175
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 177
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 180
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    .line 182
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 185
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xc

    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0xd

    .line 189
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xe

    .line 193
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_8
    const/16 v0, 0xf

    .line 195
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPaymentType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 196
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAuthorized()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_9

    move-wide v6, v2

    goto :goto_0

    :cond_9
    move-wide v6, v4

    :goto_0
    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 197
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAppend()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    move-wide v2, v4

    :goto_1
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V
    .locals 8

    .line 86
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 87
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 89
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 91
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 93
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtistId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 95
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 97
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 100
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 102
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x6

    .line 104
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 106
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    .line 108
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x8

    .line 110
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 114
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 119
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    .line 124
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :cond_6
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xc

    .line 129
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0xd

    .line 131
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPlayCount()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 133
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0xe

    .line 135
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_8
    const/16 v0, 0xf

    .line 137
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getPaymentType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x10

    .line 138
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAuthorized()Z

    move-result v1

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_9

    move-wide v6, v2

    goto :goto_0

    :cond_9
    move-wide v6, v4

    :goto_0
    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x11

    .line 139
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAppend()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_a
    move-wide v2, v4

    :goto_1
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->getAlbumId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Z
    .locals 1

    .line 267
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for entities with a non-null key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;
    .locals 26

    move-object/from16 v0, p1

    .line 207
    new-instance v23, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    add-int/lit8 v1, p2, 0x0

    .line 208
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-int/lit8 v3, p2, 0x1

    .line 209
    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    add-int/lit8 v4, p2, 0x2

    .line 210
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v4, p2, 0x3

    .line 211
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    goto :goto_1

    :cond_1
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    :goto_1
    add-int/lit8 v4, p2, 0x4

    .line 212
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v5

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :goto_2
    add-int/lit8 v4, p2, 0x5

    .line 213
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    add-int/lit8 v4, p2, 0x6

    .line 214
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v5

    goto :goto_3

    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :goto_3
    add-int/lit8 v4, p2, 0x7

    .line 215
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    add-int/lit8 v4, p2, 0x8

    .line 216
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v15, v5

    goto :goto_4

    :cond_4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    :goto_4
    add-int/lit8 v4, p2, 0x9

    .line 217
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v16, v5

    goto :goto_5

    :cond_5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    :goto_5
    add-int/lit8 v4, p2, 0xa

    .line 218
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v17, v5

    goto :goto_6

    :cond_6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    :goto_6
    add-int/lit8 v4, p2, 0xb

    .line 219
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v5

    goto :goto_7

    :cond_7
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    :goto_7
    add-int/lit8 v4, p2, 0xc

    .line 220
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    add-int/lit8 v4, p2, 0xd

    .line 221
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v21, v5

    goto :goto_8

    :cond_8
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    :goto_8
    add-int/lit8 v4, p2, 0xe

    .line 222
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    add-int/lit8 v4, p2, 0xf

    .line 223
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/4 v5, 0x1

    const/16 v24, 0x0

    if-eqz v4, :cond_9

    move/from16 v25, v5

    goto :goto_9

    :cond_9
    move/from16 v25, v24

    :goto_9
    add-int/lit8 v4, p2, 0x10

    .line 224
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v24, v5

    :cond_a
    move-object/from16 v0, v23

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move-wide v8, v10

    move-object v10, v12

    move-wide v11, v13

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-wide/from16 v17, v19

    move-object/from16 v19, v21

    move/from16 v20, v22

    move/from16 v21, v25

    move/from16 v22, v24

    invoke-direct/range {v0 .. v22}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IZZ)V

    return-object v23
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 231
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    add-int/lit8 v0, p3, 0x1

    .line 232
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtistId(J)V

    add-int/lit8 v0, p3, 0x3

    .line 234
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setArtist(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 235
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 236
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setTs(J)V

    add-int/lit8 v0, p3, 0x6

    .line 237
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 238
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setUpdateTime(J)V

    add-int/lit8 v0, p3, 0x8

    .line 239
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setLargeLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 240
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setMediumLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xa

    .line 241
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setShortIntro(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xb

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setIntro(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 243
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPlayCount(J)V

    add-int/lit8 v0, p3, 0xd

    .line 244
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setCategoryName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xe

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setPaymentType(I)V

    add-int/lit8 v0, p3, 0xf

    .line 246
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAuthorized(Z)V

    add-int/lit8 p3, p3, 0x10

    .line 247
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAppend(Z)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    add-int/lit8 p2, p2, 0x0

    .line 202
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;J)Ljava/lang/Long;
    .locals 0

    .line 252
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;->setAlbumId(J)V

    .line 253
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
