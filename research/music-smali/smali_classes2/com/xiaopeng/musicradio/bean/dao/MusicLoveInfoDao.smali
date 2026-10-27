.class public Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "MusicLoveInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MUSIC_LOVE_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 43
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

    .line 49
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"MUSIC_LOVE_INFO\" (\"HASH\" TEXT PRIMARY KEY NOT NULL ,\"SONG\" TEXT,\"SINGER\" TEXT,\"LOGO\" TEXT,\"UID\" TEXT,\"MUSIC_FROM\" INTEGER NOT NULL ,\"LRC\" TEXT,\"TS\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 62
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

    const-string p1, "\"MUSIC_LOVE_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)V
    .locals 3

    .line 105
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 107
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 114
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 117
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 119
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 122
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 124
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 127
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 131
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getLrc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 135
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    .line 137
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)V
    .locals 3

    .line 68
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 70
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 72
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 75
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getSong()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 77
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getSinger()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 82
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 85
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 87
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 90
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 92
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x6

    .line 94
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getMusicFrom()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 96
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getLrc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x7

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0x8

    .line 100
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)Z
    .locals 0

    .line 188
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getHash()Ljava/lang/String;

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;
    .locals 11

    .line 147
    new-instance v10, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    add-int/lit8 v0, p2, 0x0

    .line 148
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    add-int/lit8 v0, p2, 0x1

    .line 149
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

    .line 150
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

    .line 151
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

    .line 152
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

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    add-int/lit8 v0, p2, 0x6

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_5
    add-int/lit8 p2, p2, 0x7

    .line 155
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    move-object v0, v10

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    return-object v10
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 162
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setHash(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 163
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setSong(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 164
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setSinger(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 165
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 166
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 167
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setMusicFrom(I)V

    add-int/lit8 v0, p3, 0x6

    .line 168
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setLrc(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x7

    .line 169
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->setTs(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 142
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

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;J)Ljava/lang/String;
    .locals 0

    .line 174
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicLoveInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
