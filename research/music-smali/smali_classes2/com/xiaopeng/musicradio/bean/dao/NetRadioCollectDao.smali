.class public Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "NetRadioCollectDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NET_RADIO_COLLECT"


# instance fields
.field private final playingInfoConverter:Lari;

.field private final programInfosConverter:Larj;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 46
    new-instance p1, Lari;

    invoke-direct {p1}, Lari;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    .line 47
    new-instance p1, Larj;

    invoke-direct {p1}, Larj;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 46
    new-instance p1, Lari;

    invoke-direct {p1}, Lari;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    .line 47
    new-instance p1, Larj;

    invoke-direct {p1}, Larj;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 60
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"NET_RADIO_COLLECT\" (\"_id\" INTEGER PRIMARY KEY NOT NULL ,\"NAME\" TEXT,\"PIC_URL\" TEXT,\"UPDATE_TIME\" INTEGER NOT NULL ,\"HZ\" REAL NOT NULL ,\"AREA_CODE\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"PLAY_URL\" TEXT,\"APPEND\" INTEGER NOT NULL ,\"PLAYING_INFO\" TEXT,\"PROGRAM_INFOS\" TEXT,\"CACHE_TIME\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 77
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

    const-string p1, "\"NET_RADIO_COLLECT\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
    .locals 3

    .line 124
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 125
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 129
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 134
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 136
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 137
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getHz()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 139
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 141
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x7

    .line 143
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 145
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x9

    .line 149
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 153
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    invoke-virtual {v2, v0}, Lari;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 156
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    .line 158
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    invoke-virtual {v2, v0}, Larj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xc

    .line 160
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V
    .locals 3

    .line 83
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 84
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 86
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 88
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 93
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 95
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 96
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getHz()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 98
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 100
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x7

    .line 102
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 104
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 106
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_3
    const/16 v0, 0x9

    .line 108
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getAppend()Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_4
    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 110
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 112
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    invoke-virtual {v2, v0}, Lari;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 115
    :cond_5
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xb

    .line 117
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    invoke-virtual {v2, v0}, Larj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xc

    .line 119
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->getId()J

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

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Z
    .locals 1

    .line 220
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for entities with a non-null key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 170
    new-instance v18, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    add-int/lit8 v2, p2, 0x0

    .line 171
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x1

    .line 172
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    add-int/lit8 v5, p2, 0x2

    .line 173
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    add-int/lit8 v7, p2, 0x3

    .line 174
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-int/lit8 v9, p2, 0x4

    .line 175
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    add-int/lit8 v11, p2, 0x5

    .line 176
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v11, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    add-int/lit8 v12, p2, 0x6

    .line 177
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0x7

    .line 178
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x0

    goto :goto_3

    :cond_3
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    add-int/lit8 v14, p2, 0x8

    .line 179
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v15, p2, 0x9

    .line 180
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const/4 v15, 0x0

    goto :goto_5

    :cond_5
    iget-object v6, v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Lari;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v6

    move-object v15, v6

    :goto_5
    add-int/lit8 v6, p2, 0xa

    .line 181
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v19, v15

    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v19, v15

    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Larj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v15, v6

    :goto_6
    add-int/lit8 v6, p2, 0xb

    .line 182
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-object/from16 v1, v18

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move v13, v14

    move-object/from16 v14, v19

    invoke-direct/range {v1 .. v17}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;-><init>(JLjava/lang/String;Ljava/lang/String;JDLjava/lang/String;ILjava/lang/String;ZLcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;J)V

    return-object v18
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 189
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setId(J)V

    add-int/lit8 v0, p3, 0x1

    .line 190
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 191
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPicUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setUpdateTime(J)V

    add-int/lit8 v0, p3, 0x4

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setHz(D)V

    add-int/lit8 v0, p3, 0x5

    .line 194
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setAreaCode(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayCount(I)V

    add-int/lit8 v0, p3, 0x7

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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setAppend(Z)V

    add-int/lit8 v0, p3, 0x9

    .line 198
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->playingInfoConverter:Lari;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lari;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    add-int/lit8 v0, p3, 0xa

    .line 199
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->programInfosConverter:Larj;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_6
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setProgramInfos(Ljava/util/List;)V

    add-int/lit8 p3, p3, 0xb

    .line 200
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setCacheTime(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    add-int/lit8 p2, p2, 0x0

    .line 165
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;J)Ljava/lang/Long;
    .locals 0

    .line 205
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;->setId(J)V

    .line 206
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NetRadioCollect;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
