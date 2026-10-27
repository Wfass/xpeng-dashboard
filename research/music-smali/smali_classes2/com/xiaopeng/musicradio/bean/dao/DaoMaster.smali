.class public Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$DevOpenHelper;,
        Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$OpenHelper;
    }
.end annotation


# static fields
.field public static final SCHEMA_VERSION:I = 0x43


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 103
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p1}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/16 v0, 0x43

    .line 107
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 108
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 109
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 110
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 111
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 112
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 113
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 114
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 115
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 116
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 117
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 118
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 119
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 120
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 121
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 122
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 123
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 124
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 125
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 126
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 127
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 128
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 129
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 130
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 131
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 132
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 133
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 134
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 135
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 136
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 137
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 138
    const-class p1, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 27
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 28
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 29
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 30
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 31
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 34
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 35
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 36
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 37
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 38
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 39
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 40
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 41
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 42
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 43
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 44
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 45
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 46
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 47
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 48
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 49
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 50
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 51
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 52
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 53
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 54
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 60
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/AudioParseInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 61
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLatelyMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 62
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouLocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 63
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 64
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 65
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 66
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/KugouMusicRadioItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 67
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LatelyMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 68
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/LocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 69
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 70
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 71
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 72
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicLoveInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 73
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicRadioItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 74
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/MusicUrlInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 75
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 76
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NetRadioHistoryDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 77
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLatelyMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 78
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseLocalLoveDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 79
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCollectDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 80
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicAlbumCustomDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 81
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 82
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/NeteaseMusicRadioItemDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 83
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadHistoryInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 84
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadLoveInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 85
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReadingInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 86
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/ReissueInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 87
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/SearchHistoryBeanDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 88
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/TempSheetMusicInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 89
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/XpCacheInfoDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static newDevSession(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/dao/DaoSession;
    .locals 1

    .line 97
    new-instance v0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$DevOpenHelper;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster$DevOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object p0

    .line 98
    new-instance p1, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->newSession()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public newSession()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;
    .locals 4

    .line 142
    new-instance v0, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/xiaopeng/musicradio/bean/dao/DaoSession;
    .locals 3

    .line 146
    new-instance v0, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaopeng/musicradio/bean/dao/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic newSession()Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->newSession()Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lorg/greenrobot/greendao/AbstractDaoSession;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/bean/dao/DaoMaster;->newSession(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)Lcom/xiaopeng/musicradio/bean/dao/DaoSession;

    move-result-object p1

    return-object p1
.end method
