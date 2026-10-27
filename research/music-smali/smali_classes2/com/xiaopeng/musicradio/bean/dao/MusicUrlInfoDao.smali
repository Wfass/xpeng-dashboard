.class public Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "MusicUrlInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "MUSIC_URL_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 39
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

    .line 45
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"MUSIC_URL_INFO\" (\"HASH\" TEXT PRIMARY KEY NOT NULL ,\"URL\" TEXT,\"UPDATE_TIME\" INTEGER NOT NULL ,\"SONG\" TEXT);"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 54
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

    const-string p1, "\"MUSIC_URL_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 83
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 85
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 88
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 90
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 92
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 94
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getSong()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    .line 96
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V
    .locals 3

    .line 60
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 62
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 64
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 67
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 69
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x3

    .line 71
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 73
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getSong()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x4

    .line 75
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)Z
    .locals 0

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;
    .locals 7

    .line 107
    new-instance v6, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    add-int/lit8 v0, p2, 0x0

    .line 108
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

    .line 109
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

    .line 110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    add-int/lit8 p2, p2, 0x3

    .line 111
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v0, v6

    move-object v2, v3

    move-wide v3, v4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v6
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 118
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setHash(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x1

    .line 119
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setUpdateTime(J)V

    add-int/lit8 p3, p3, 0x3

    .line 121
    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->setSong(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 102
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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;J)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
