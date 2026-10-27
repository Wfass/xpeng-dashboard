.class public Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "NetRadioHistoryDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "NET_RADIO_HISTORY"


# instance fields
.field private final playingInfoConverter:Lari;

.field private final programInfosConverter:Larj;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    .line 45
    new-instance p1, Lari;

    invoke-direct {p1}, Lari;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    .line 46
    new-instance p1, Larj;

    invoke-direct {p1}, Larj;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    .line 45
    new-instance p1, Lari;

    invoke-direct {p1}, Lari;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    .line 46
    new-instance p1, Larj;

    invoke-direct {p1}, Larj;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 59
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"NET_RADIO_HISTORY\" (\"_id\" INTEGER PRIMARY KEY NOT NULL ,\"NAME\" TEXT,\"PIC_URL\" TEXT,\"UPDATE_TIME\" INTEGER NOT NULL ,\"HZ\" REAL NOT NULL ,\"AREA_CODE\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"PLAY_URL\" TEXT,\"PLAYING_INFO\" TEXT,\"PROGRAM_INFOS\" TEXT,\"CACHE_TIME\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 75
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

    const-string p1, "\"NET_RADIO_HISTORY\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 122
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 126
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 129
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 131
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 133
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 134
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getHz()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 136
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 138
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x7

    .line 140
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayCount()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 142
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 144
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 147
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 149
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    invoke-virtual {v2, v0}, Lari;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 152
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 154
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    invoke-virtual {v2, v0}, Larj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xb

    .line 156
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getCacheTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V
    .locals 3

    .line 81
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 82
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 84
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 86
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 89
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    .line 91
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_1
    const/4 v0, 0x4

    .line 93
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/4 v0, 0x5

    .line 94
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getHz()D

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindDouble(ID)V

    .line 96
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 98
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x7

    .line 100
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 102
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 104
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 107
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x9

    .line 109
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    invoke-virtual {v2, v0}, Lari;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 112
    :cond_4
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getProgramInfos()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    .line 114
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    invoke-virtual {v2, v0}, Larj;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xb

    .line 116
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getCacheTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->getId()J

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Z
    .locals 1

    .line 214
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for entities with a non-null key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 166
    new-instance v17, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    add-int/lit8 v2, p2, 0x0

    .line 167
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-int/lit8 v4, p2, 0x1

    .line 168
    invoke-interface {v1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    add-int/lit8 v5, p2, 0x2

    .line 169
    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v5, v6

    goto :goto_1

    :cond_1
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    add-int/lit8 v7, p2, 0x3

    .line 170
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    add-int/lit8 v9, p2, 0x4

    .line 171
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    add-int/lit8 v11, p2, 0x5

    .line 172
    invoke-interface {v1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v11, v6

    goto :goto_2

    :cond_2
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_2
    add-int/lit8 v12, p2, 0x6

    .line 173
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    add-int/lit8 v13, p2, 0x7

    .line 174
    invoke-interface {v1, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v13, v6

    goto :goto_3

    :cond_3
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    add-int/lit8 v14, p2, 0x8

    .line 175
    invoke-interface {v1, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v14, v6

    goto :goto_4

    :cond_4
    iget-object v15, v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Lari;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v14

    :goto_4
    add-int/lit8 v15, p2, 0x9

    .line 176
    invoke-interface {v1, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_5

    :cond_5
    iget-object v6, v0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Larj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    :goto_5
    move-object v15, v6

    add-int/lit8 v6, p2, 0xa

    .line 177
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v1, v17

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    move v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-wide/from16 v15, v18

    invoke-direct/range {v1 .. v16}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;-><init>(JLjava/lang/String;Ljava/lang/String;JDLjava/lang/String;ILjava/lang/String;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;Ljava/util/List;J)V

    return-object v17
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 184
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setId(J)V

    add-int/lit8 v0, p3, 0x1

    .line 185
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 186
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPicUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x3

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setUpdateTime(J)V

    add-int/lit8 v0, p3, 0x4

    .line 188
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setHz(D)V

    add-int/lit8 v0, p3, 0x5

    .line 189
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setAreaCode(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 190
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayCount(I)V

    add-int/lit8 v0, p3, 0x7

    .line 191
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayUrl(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x8

    .line 192
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->playingInfoConverter:Lari;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lari;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    add-int/lit8 v0, p3, 0x9

    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->programInfosConverter:Larj;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Larj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_5
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setProgramInfos(Ljava/util/List;)V

    add-int/lit8 p3, p3, 0xa

    .line 194
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setCacheTime(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    add-int/lit8 p2, p2, 0x0

    .line 161
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;J)Ljava/lang/Long;
    .locals 0

    .line 199
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;->setId(J)V

    .line 200
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/NetRadioHistory;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
