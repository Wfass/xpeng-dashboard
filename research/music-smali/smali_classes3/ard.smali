.class public Lard;
.super Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$OpenHelper;
.source "MyOpenHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    return-void
.end method

.method private a(Lorg/greenrobot/greendao/database/Database;)V
    .locals 3

    const/16 v0, 0xa

    .line 337
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDowngrade schema from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " with user data"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MyOpenHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->b()V

    .line 331
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/p;->a(Landroid/content/Context;)V

    .line 332
    invoke-virtual {p0, p1}, Lard;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 333
    invoke-virtual {p0, p1}, Lard;->wrap(Landroid/database/sqlite/SQLiteDatabase;)Lorg/greenrobot/greendao/database/Database;

    move-result-object p1

    invoke-virtual {p0, p1}, Lard;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public onUpgrade(Lorg/greenrobot/greendao/database/Database;II)V
    .locals 12

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading schema from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " with user data"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MyOpenHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x41

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge p2, p3, :cond_0

    const-string p2, "onUpgrade: xos5.0 dropTable"

    .line 68
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->b()V

    .line 71
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 72
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 73
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 74
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 75
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 76
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 77
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 78
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 79
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 80
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 81
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 82
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 83
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 84
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 85
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 86
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 87
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 88
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 89
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 90
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 91
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 92
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 93
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 94
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 95
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 96
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 97
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 101
    new-array p2, v1, [Ljava/lang/Class;

    const-class p3, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    aput-object p3, p2, v2

    const-class p3, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    aput-object p3, p2, v3

    invoke-static {p1, p2}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    .line 104
    new-array p2, v1, [Ljava/lang/Class;

    const-class p3, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object p3, p2, v2

    const-class p3, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object p3, p2, v3

    .line 106
    new-array p3, v1, [Ljava/lang/Class;

    const-class v0, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    aput-object v0, p3, v2

    const-class v0, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    aput-object v0, p3, v3

    .line 109
    new-instance v0, Lard$1;

    invoke-direct {v0, p0}, Lard$1;-><init>(Lard;)V

    invoke-static {p1, p2, p3, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;[Ljava/lang/Class;Larc$a;)V

    .line 125
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 127
    new-instance p1, Lard$2;

    invoke-direct {p1, p0}, Lard$2;-><init>(Lard;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-ne p2, p3, :cond_1

    const-string v11, "onUpgrade: 65 ======"

    .line 137
    invoke-static {v0, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SP_MIRGATION_MUSIC"

    .line 138
    invoke-static {v0, v3}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    const-string v0, "SP_MIRGATION_ALBUM"

    .line 139
    invoke-static {v0, v3}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Z)V

    .line 141
    new-array v0, v4, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;

    aput-object v11, v0, v1

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object v11, v0, v10

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    aput-object v11, v0, v9

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    aput-object v11, v0, v8

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v11, v0, v7

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    aput-object v11, v0, v6

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    aput-object v11, v0, v5

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_1
    const/16 v0, 0xe

    if-gt p2, v0, :cond_2

    .line 154
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->b()V

    :cond_2
    const/16 v0, 0x10

    if-gt p2, v0, :cond_3

    .line 157
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/p;->a(Landroid/content/Context;)V

    .line 158
    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 159
    invoke-virtual {p0, p1}, Lard;->onCreate(Lorg/greenrobot/greendao/database/Database;)V

    :cond_3
    const/16 v0, 0x1a

    if-gt p2, v0, :cond_4

    .line 162
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bh;->b()V

    .line 163
    invoke-direct {p0, p1}, Lard;->a(Lorg/greenrobot/greendao/database/Database;)V

    .line 165
    sput p2, Larc;->b:I

    .line 167
    new-instance v0, Lard$3;

    invoke-direct {v0, p0}, Lard$3;-><init>(Lard;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    const/16 v0, 0x2d

    if-gt p2, v0, :cond_5

    .line 177
    invoke-direct {p0, p1}, Lard;->a(Lorg/greenrobot/greendao/database/Database;)V

    :cond_5
    :goto_0
    const/16 v0, 0x2a

    if-gt p2, v0, :cond_6

    .line 181
    new-array v0, v3, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    aput-object v11, v0, v2

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_6
    const/16 v0, 0x2b

    if-gt p2, v0, :cond_7

    .line 184
    new-array v0, v3, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v11, v0, v2

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_7
    const/16 v0, 0x2e

    if-gt p2, v0, :cond_8

    .line 188
    new-array v0, v8, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    aput-object v11, v0, v1

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    aput-object v11, v0, v10

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    aput-object v11, v0, v9

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_8
    const/16 v0, 0x2f

    if-gt p2, v0, :cond_9

    .line 197
    new-array v0, v3, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    aput-object v11, v0, v2

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_9
    const/16 v0, 0x31

    if-gt p2, v0, :cond_a

    .line 202
    new-array v0, v9, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    aput-object v11, v0, v1

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    aput-object v11, v0, v10

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_a
    const/16 v0, 0x32

    if-gt p2, v0, :cond_b

    .line 209
    new-array v0, v10, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    aput-object v11, v0, v1

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_b
    const/16 v0, 0x33

    if-gt p2, v0, :cond_c

    .line 215
    new-array v0, v7, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    aput-object v11, v0, v1

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v11, v0, v10

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    aput-object v11, v0, v9

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    aput-object v11, v0, v8

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_c
    const/16 v0, 0x34

    if-gt p2, v0, :cond_d

    .line 224
    new-array v0, v10, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    aput-object v11, v0, v1

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_d
    const/16 v0, 0x35

    if-ne p2, v0, :cond_e

    .line 230
    new-array v0, v3, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    aput-object v11, v0, v2

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_e
    const/16 v0, 0x36

    if-gt p2, v0, :cond_f

    .line 233
    new-array v0, v10, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    aput-object v11, v0, v1

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_f
    const/16 v0, 0x39

    if-gt p2, v0, :cond_10

    const/16 v0, 0xb

    .line 240
    new-array v0, v0, [Ljava/lang/Class;

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v11, v0, v2

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v11, v0, v3

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    aput-object v11, v0, v1

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object v11, v0, v10

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    aput-object v11, v0, v9

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    aput-object v11, v0, v8

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;

    aput-object v11, v0, v7

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    aput-object v11, v0, v6

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;

    aput-object v11, v0, v5

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    aput-object v11, v0, v4

    const/16 v4, 0xa

    const-class v11, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    aput-object v11, v0, v4

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_10
    const/16 v0, 0x3a

    if-gt p2, v0, :cond_11

    .line 256
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_11
    const/16 v0, 0x3b

    if-gt p2, v0, :cond_12

    .line 263
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_12
    const/16 v0, 0x3c

    if-gt p2, v0, :cond_13

    .line 270
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_13
    const/16 v0, 0x3d

    if-gt p2, v0, :cond_14

    .line 277
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_14
    const/16 v0, 0x3e

    if-gt p2, v0, :cond_15

    .line 284
    new-array v0, v1, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    aput-object v4, v0, v3

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_15
    const/16 v0, 0x3f

    if-gt p2, v0, :cond_16

    .line 291
    new-array v0, v5, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    aput-object v4, v0, v3

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    aput-object v4, v0, v1

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;

    aput-object v4, v0, v10

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;

    aput-object v4, v0, v9

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    aput-object v4, v0, v8

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    aput-object v4, v0, v7

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    aput-object v4, v0, v6

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_16
    const/16 v0, 0x40

    if-gt p2, v0, :cond_17

    .line 304
    new-array v0, v8, [Ljava/lang/Class;

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v4, v0, v2

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;

    aput-object v4, v0, v3

    const-class v4, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    aput-object v4, v0, v1

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    aput-object v1, v0, v10

    const-class v1, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    aput-object v1, v0, v9

    invoke-static {p1, v0}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_17
    if-gt p2, p3, :cond_18

    .line 314
    new-array p3, v3, [Ljava/lang/Class;

    const-class v0, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    aput-object v0, p3, v2

    invoke-static {p1, p3}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_18
    const/16 p3, 0x43

    if-gt p2, p3, :cond_19

    .line 320
    new-array p2, v3, [Ljava/lang/Class;

    const-class p3, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Larc;->a(Lorg/greenrobot/greendao/database/Database;[Ljava/lang/Class;)V

    :cond_19
    return-void
.end method
