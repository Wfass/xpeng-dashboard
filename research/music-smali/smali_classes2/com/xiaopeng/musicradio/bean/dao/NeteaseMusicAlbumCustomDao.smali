.class public Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "NeteaseMusicAlbumCustomDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NETEASE_MUSIC_ALBUM_CUSTOM"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 42
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

    .line 48
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"NETEASE_MUSIC_ALBUM_CUSTOM\" (\"_id\" INTEGER PRIMARY KEY AUTOINCREMENT ,\"UID\" TEXT,\"ID\" TEXT,\"LOGO\" TEXT,\"NAME\" TEXT,\"CREATE_TIME\" INTEGER NOT NULL ,\"CACHE_TIME\" INTEGER NOT NULL );"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE UNIQUE INDEX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IDX_NETEASE_MUSIC_ALBUM_CUSTOM_UID_ID ON \"NETEASE_MUSIC_ALBUM_CUSTOM\" (\"UID\" ASC,\"ID\" ASC);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 63
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

    const-string p1, "\"NETEASE_MUSIC_ALBUM_CUSTOM\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)V
    .locals 4

    .line 101
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 103
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 108
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 110
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 115
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 118
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 125
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 127
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 128
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)V
    .locals 4

    .line 69
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 71
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheId()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 76
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 78
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 83
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 88
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 93
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 95
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCreateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x7

    .line 96
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)Ljava/lang/Long;
    .locals 0

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheId()Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)Z
    .locals 0

    .line 178
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->getCacheId()Ljava/lang/Long;

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;
    .locals 11

    .line 138
    new-instance v10, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    add-int/lit8 v0, p2, 0x0

    .line 139
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    add-int/lit8 v0, p2, 0x2

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    add-int/lit8 v0, p2, 0x3

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_3
    add-int/lit8 v0, p2, 0x4

    .line 143
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_4
    add-int/lit8 v0, p2, 0x5

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-int/lit8 p2, p2, 0x6

    .line 145
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    move-object v0, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v10
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 152
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setCacheId(Ljava/lang/Long;)V

    add-int/lit8 v0, p3, 0x1

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setId(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 155
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 156
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setCreateTime(J)V

    add-int/lit8 p3, p3, 0x6

    .line 158
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setCacheTime(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 133
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
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;J)Ljava/lang/Long;
    .locals 1

    .line 163
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;->setCacheId(Ljava/lang/Long;)V

    .line 164
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicAlbumCustom;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
