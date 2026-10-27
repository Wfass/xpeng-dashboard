.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;
.super Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;
.source "ConfigDatabase_Impl.java"


# instance fields
.field private volatile _keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->assertNotMainThread()V

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 97
    .local v0, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->beginTransaction()V

    .line 98
    const-string v1, "DELETE FROM `KeyConfig`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->endTransaction()V

    .line 102
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "VACUUM"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void

    .line 101
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->endTransaction()V

    .line 102
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    const-string v2, "VACUUM"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    .line 89
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "KeyConfig"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 28
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;I)V

    const-string v2, "faaa1c367f1f27bb58c7351f0288bfb3"

    const-string v3, "12ffec286e62b71047bd56072509e320"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 81
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 83
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 84
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public keyConfigDao()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->_keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->_keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    return-object v0

    .line 114
    :cond_0
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->_keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->_keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase_Impl;->_keyConfigDao:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    monitor-exit p0

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
