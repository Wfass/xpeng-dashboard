.class public Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "ReadHistoryInfoDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "READ_HISTORY_INFO"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/xiaopeng/musicradio/bean/dao/DaoSession;)V
    .locals 0

    .line 60
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

    .line 66
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"READ_HISTORY_INFO\" (\"_id\" INTEGER PRIMARY KEY NOT NULL ,\"ALBUM_NAME\" TEXT,\"ARTIST_ID\" INTEGER NOT NULL ,\"ARTIST\" TEXT,\"LOGO\" TEXT,\"LARGE_LOGO\" TEXT,\"MEDIUM_LOGO\" TEXT,\"TRACK_ID\" INTEGER NOT NULL ,\"TRACK_TITLE\" TEXT,\"SEEK\" INTEGER NOT NULL ,\"DURATION\" INTEGER NOT NULL ,\"UID\" TEXT,\"UPDATE_TIME\" INTEGER NOT NULL ,\"TS\" INTEGER NOT NULL ,\"SORT\" TEXT,\"ORDER_NUM\" INTEGER NOT NULL ,\"SHORT_INTRO\" TEXT,\"INTRO\" TEXT,\"PLAY_COUNT\" INTEGER NOT NULL ,\"CATEGORY_NAME\" TEXT,\"PAYMENT_TYPE\" INTEGER NOT NULL ,\"AUTHORIZED\" INTEGER NOT NULL ,\"TRACK_PAYMENT_TYPE\" INTEGER NOT NULL ,\"TRACK_AUTHORIZED\" INTEGER NOT NULL ,\"CHANNEL_ID\" INTEGER NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 96
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

    const-string p1, "\"READ_HISTORY_INFO\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 8

    .line 176
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 177
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 179
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 181
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 183
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtistId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 185
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 187
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 190
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 192
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 195
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 197
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 200
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 202
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/16 v0, 0x8

    .line 204
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 206
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 208
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xa

    .line 210
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSeek()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 211
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 213
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xc

    .line 215
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xd

    .line 217
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 218
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTs()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 220
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xf

    .line 222
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0x10

    .line 224
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getOrderNum()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 226
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x11

    .line 228
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 231
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    .line 233
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0x13

    .line 235
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayCount()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x14

    .line 239
    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x15

    .line 241
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPaymentType()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 242
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAuthorized()Z

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

    const/16 v0, 0x17

    .line 243
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackPaymentType()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {p1, v0, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 244
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackAuthorized()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    move-wide v2, v4

    :goto_1
    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x19

    .line 245
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getChannelId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V
    .locals 8

    .line 102
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 103
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 105
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 107
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 109
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtistId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getArtist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 113
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    .line 118
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getLargeLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    .line 123
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_3
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getMediumLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x7

    .line 128
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_4
    const/16 v0, 0x8

    .line 130
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 132
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 134
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_5
    const/16 v0, 0xa

    .line 136
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSeek()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xb

    .line 137
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getDuration()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 139
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v1, 0xc

    .line 141
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_6
    const/16 v0, 0xd

    .line 143
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 144
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTs()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 146
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v1, 0xf

    .line 148
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_7
    const/16 v0, 0x10

    .line 150
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getOrderNum()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 152
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getShortIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x11

    .line 154
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    .line 157
    :cond_8
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getIntro()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v1, 0x12

    .line 159
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_9
    const/16 v0, 0x13

    .line 161
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPlayCount()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    .line 163
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/16 v1, 0x14

    .line 165
    invoke-interface {p1, v1, v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_a
    const/16 v0, 0x15

    .line 167
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getPaymentType()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x16

    .line 168
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAuthorized()Z

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

    const/16 v0, 0x17

    .line 169
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackPaymentType()I

    move-result v1

    int-to-long v6, v1

    invoke-interface {p1, v0, v6, v7}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x18

    .line 170
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackAuthorized()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_1

    :cond_c
    move-wide v2, v4

    :goto_1
    invoke-interface {p1, v0, v2, v3}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    const/16 v0, 0x19

    .line 171
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getChannelId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindLong(IJ)V

    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)V

    return-void
.end method

.method public getKey(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Ljava/lang/Long;
    .locals 2

    if-eqz p1, :cond_0

    .line 323
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getAlbumId()J

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
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->getKey(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public hasKey(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Z
    .locals 1

    .line 331
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported for entities with a non-null key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic hasKey(Ljava/lang/Object;)Z
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->hasKey(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Z

    move-result p1

    return p1
.end method

.method protected final isEntityUpdateable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 38

    move-object/from16 v0, p1

    .line 255
    new-instance v35, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    add-int/lit8 v1, p2, 0x0

    .line 256
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    add-int/lit8 v3, p2, 0x1

    .line 257
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

    .line 258
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-int/lit8 v4, p2, 0x3

    .line 259
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

    .line 260
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

    .line 261
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v5

    goto :goto_3

    :cond_3
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    :goto_3
    add-int/lit8 v4, p2, 0x6

    .line 262
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v11, v5

    goto :goto_4

    :cond_4
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :goto_4
    add-int/lit8 v4, p2, 0x7

    .line 263
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    add-int/lit8 v4, p2, 0x8

    .line 264
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v14, v5

    goto :goto_5

    :cond_5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    :goto_5
    add-int/lit8 v4, p2, 0x9

    .line 265
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    add-int/lit8 v4, p2, 0xa

    .line 266
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    add-int/lit8 v4, p2, 0xb

    .line 267
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v5

    goto :goto_6

    :cond_6
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v4

    :goto_6
    add-int/lit8 v4, p2, 0xc

    .line 268
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    add-int/lit8 v4, p2, 0xd

    .line 269
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    add-int/lit8 v4, p2, 0xe

    .line 270
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_7

    move-object/from16 v24, v5

    goto :goto_7

    :cond_7
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    :goto_7
    add-int/lit8 v4, p2, 0xf

    .line 271
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    add-int/lit8 v4, p2, 0x10

    .line 272
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_8

    move-object/from16 v26, v5

    goto :goto_8

    :cond_8
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    :goto_8
    add-int/lit8 v4, p2, 0x11

    .line 273
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v27, v5

    goto :goto_9

    :cond_9
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    :goto_9
    add-int/lit8 v4, p2, 0x12

    .line 274
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    add-int/lit8 v4, p2, 0x13

    .line 275
    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_a

    move-object/from16 v30, v5

    goto :goto_a

    :cond_a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v30, v4

    :goto_a
    add-int/lit8 v4, p2, 0x14

    .line 276
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    add-int/lit8 v4, p2, 0x15

    .line 277
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    const/4 v5, 0x1

    const/16 v32, 0x0

    if-eqz v4, :cond_b

    move/from16 v36, v5

    goto :goto_b

    :cond_b
    move/from16 v36, v32

    :goto_b
    add-int/lit8 v4, p2, 0x16

    .line 278
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    add-int/lit8 v4, p2, 0x17

    .line 279
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getShort(I)S

    move-result v4

    if-eqz v4, :cond_c

    move/from16 v32, v5

    :cond_c
    add-int/lit8 v4, p2, 0x18

    .line 280
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    move-object/from16 v0, v35

    move-wide v4, v6

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-wide v10, v12

    move-object v12, v14

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v19

    move-wide/from16 v18, v20

    move-wide/from16 v20, v22

    move-object/from16 v22, v24

    move/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-wide/from16 v26, v28

    move-object/from16 v28, v30

    move/from16 v29, v31

    move/from16 v30, v36

    move/from16 v31, v37

    invoke-direct/range {v0 .. v34}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;IZIZJ)V

    return-object v35
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->readEntity(Landroid/database/Cursor;I)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object p1

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;I)V
    .locals 3

    add-int/lit8 v0, p3, 0x0

    .line 287
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumId(J)V

    add-int/lit8 v0, p3, 0x1

    .line 288
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
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x2

    .line 289
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setArtistId(J)V

    add-int/lit8 v0, p3, 0x3

    .line 290
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setArtist(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x4

    .line 291
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x5

    .line 292
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setLargeLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x6

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v2

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setMediumLogo(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x7

    .line 294
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackId(J)V

    add-int/lit8 v0, p3, 0x8

    .line 295
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v2

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackTitle(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x9

    .line 296
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setSeek(J)V

    add-int/lit8 v0, p3, 0xa

    .line 297
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setDuration(J)V

    add-int/lit8 v0, p3, 0xb

    .line 298
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setUid(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xc

    .line 299
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setUpdateTime(J)V

    add-int/lit8 v0, p3, 0xd

    .line 300
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTs(J)V

    add-int/lit8 v0, p3, 0xe

    .line 301
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, v2

    goto :goto_7

    :cond_7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setSort(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0xf

    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setOrderNum(I)V

    add-int/lit8 v0, p3, 0x10

    .line 303
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v2

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setShortIntro(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x11

    .line 304
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v0, v2

    goto :goto_9

    :cond_9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setIntro(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x12

    .line 305
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setPlayCount(J)V

    add-int/lit8 v0, p3, 0x13

    .line 306
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {p2, v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setCategoryName(Ljava/lang/String;)V

    add-int/lit8 v0, p3, 0x14

    .line 307
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setPaymentType(I)V

    add-int/lit8 v0, p3, 0x15

    .line 308
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAuthorized(Z)V

    add-int/lit8 v0, p3, 0x16

    .line 309
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackPaymentType(I)V

    add-int/lit8 v0, p3, 0x17

    .line 310
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    invoke-virtual {p2, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackAuthorized(Z)V

    add-int/lit8 p3, p3, 0x18

    .line 311
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setChannelId(J)V

    return-void
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->readEntity(Landroid/database/Cursor;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 0

    add-int/lit8 p2, p2, 0x0

    .line 250
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;J)Ljava/lang/Long;
    .locals 0

    .line 316
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setAlbumId(J)V

    .line 317
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->updateKeyAfterInsert(Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
