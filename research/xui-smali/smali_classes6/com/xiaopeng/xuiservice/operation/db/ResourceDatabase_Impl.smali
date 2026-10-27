.class public Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;
.super Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;
.source "ResourceDatabase_Impl.java"


# instance fields
.field private volatile _resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

.field private volatile _resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

.field private volatile _selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;
    .param p1, "x1"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 151
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->assertNotMainThread()V

    .line 152
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 154
    .local v0, "_db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->beginTransaction()V

    .line 155
    const-string v1, "DELETE FROM `ResourceInfo`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v1, "DELETE FROM `SelectedInfo`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v1, "DELETE FROM `ResourceAccountBinding`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v1, "DELETE FROM `SelectTime`"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->endTransaction()V

    .line 162
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 163
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "VACUUM"

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void

    .line 161
    :catchall_0
    move-exception v1

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->endTransaction()V

    .line 162
    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 163
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    .line 164
    const-string v2, "VACUUM"

    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 5

    .line 146
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "ResourceInfo"

    const-string v2, "SelectedInfo"

    const-string v3, "ResourceAccountBinding"

    const-string v4, "SelectTime"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;

    .line 32
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;I)V

    const-string v2, "fc14e7e034b39140f4db47f3b134561e"

    const-string v3, "eeb3d8b9b5d772b6cbfc0a4526b5920d"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v0, "_openCallback":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 137
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v1

    .line 140
    .local v1, "_sqliteConfig":Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v2, v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v2

    .line 141
    .local v2, "_helper":Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    return-object v2
.end method

.method public resourceAccountBindingDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    return-object v0

    .line 202
    :cond_0
    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceAccountBindingDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;

    monitor-exit p0

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resourceDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    return-object v0

    .line 174
    :cond_0
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    if-nez v0, :cond_1

    .line 176
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_resourceDao:Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;

    monitor-exit p0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectedDao()Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    return-object v0

    .line 188
    :cond_0
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    if-nez v0, :cond_1

    .line 190
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->_selectedDao:Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;

    monitor-exit p0

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
