.class public Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;
.super Ljava/lang/Object;
.source "AppMetaDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfAppMeta:Landroidx/room/EntityInsertionAdapter;

.field private final __updateAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__insertionAdapterOfAppMeta:Landroidx/room/EntityInsertionAdapter;

    .line 77
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__deletionAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 92
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl$3;-><init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__updateAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 147
    return-void
.end method


# virtual methods
.method public delete(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__deletionAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 190
    nop

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs delete([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__deletionAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insert(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__insertionAdapterOfAppMeta:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs insert([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__insertionAdapterOfAppMeta:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public queryAll()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 217
    const-string v1, "SELECT * FROM applist_meta"

    .line 218
    .local v1, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM applist_meta"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 219
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v5, v0

    .line 221
    .local v5, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "appId"

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 222
    .local v0, "_cursorIndexOfAppId":I
    const-string v6, "category"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 223
    .local v6, "_cursorIndexOfCategory":I
    const-string v7, "status"

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 224
    .local v7, "_cursorIndexOfStatus":I
    const-string v8, "isFirstLaunch"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 225
    .local v8, "_cursorIndexOfIsFirstLaunch":I
    const-string v9, "pkgName"

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 226
    .local v9, "_cursorIndexOfPkgName":I
    const-string v10, "title"

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 227
    .local v10, "_cursorIndexOfTitle":I
    const-string v11, "dayIconPath"

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 228
    .local v11, "_cursorIndexOfDayIconPath":I
    const-string v12, "storeNightIconPath"

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 229
    .local v12, "_cursorIndexOfStoreNightIconPath":I
    const-string v13, "dockerIconPath"

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 230
    .local v13, "_cursorIndexOfDockerIconPath":I
    const-string v14, "extra"

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 231
    .local v14, "_cursorIndexOfExtra":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 232
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    new-instance v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    .local v2, "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    move-object/from16 v16, v1

    :try_start_1
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    iput-object v1, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    .line 236
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    .line 237
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 239
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 240
    .local v1, "_tmp":I
    if-eqz v1, :cond_0

    const/16 v17, 0x1

    move/from16 v18, v0

    move/from16 v0, v17

    goto :goto_1

    :cond_0
    move/from16 v18, v0

    const/4 v0, 0x0

    .end local v0    # "_cursorIndexOfAppId":I
    .local v18, "_cursorIndexOfAppId":I
    :goto_1
    iput-boolean v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 241
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    .line 242
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    .line 243
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    .line 244
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    .line 245
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    .line 246
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 247
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    .end local v1    # "_tmp":I
    .end local v2    # "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    nop

    .line 231
    move-object/from16 v1, v16

    move/from16 v0, v18

    goto :goto_0

    .line 251
    .end local v6    # "_cursorIndexOfCategory":I
    .end local v7    # "_cursorIndexOfStatus":I
    .end local v8    # "_cursorIndexOfIsFirstLaunch":I
    .end local v9    # "_cursorIndexOfPkgName":I
    .end local v10    # "_cursorIndexOfTitle":I
    .end local v11    # "_cursorIndexOfDayIconPath":I
    .end local v12    # "_cursorIndexOfStoreNightIconPath":I
    .end local v13    # "_cursorIndexOfDockerIconPath":I
    .end local v14    # "_cursorIndexOfExtra":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    .end local v18    # "_cursorIndexOfAppId":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 249
    .end local v16    # "_sql":Ljava/lang/String;
    .restart local v0    # "_cursorIndexOfAppId":I
    .local v1, "_sql":Ljava/lang/String;
    .restart local v6    # "_cursorIndexOfCategory":I
    .restart local v7    # "_cursorIndexOfStatus":I
    .restart local v8    # "_cursorIndexOfIsFirstLaunch":I
    .restart local v9    # "_cursorIndexOfPkgName":I
    .restart local v10    # "_cursorIndexOfTitle":I
    .restart local v11    # "_cursorIndexOfDayIconPath":I
    .restart local v12    # "_cursorIndexOfStoreNightIconPath":I
    .restart local v13    # "_cursorIndexOfDockerIconPath":I
    .restart local v14    # "_cursorIndexOfExtra":I
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    :cond_1
    move/from16 v18, v0

    move-object/from16 v16, v1

    .line 251
    .end local v0    # "_cursorIndexOfAppId":I
    .end local v1    # "_sql":Ljava/lang/String;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v18    # "_cursorIndexOfAppId":I
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 249
    return-object v15

    .line 251
    .end local v6    # "_cursorIndexOfCategory":I
    .end local v7    # "_cursorIndexOfStatus":I
    .end local v8    # "_cursorIndexOfIsFirstLaunch":I
    .end local v9    # "_cursorIndexOfPkgName":I
    .end local v10    # "_cursorIndexOfTitle":I
    .end local v11    # "_cursorIndexOfDayIconPath":I
    .end local v12    # "_cursorIndexOfStoreNightIconPath":I
    .end local v13    # "_cursorIndexOfDockerIconPath":I
    .end local v14    # "_cursorIndexOfExtra":I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    .end local v16    # "_sql":Ljava/lang/String;
    .end local v18    # "_cursorIndexOfAppId":I
    .restart local v1    # "_sql":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    .end local v1    # "_sql":Ljava/lang/String;
    .restart local v16    # "_sql":Ljava/lang/String;
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 252
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryByCategory(I)Ljava/util/List;
    .locals 20
    .param p1, "category"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 305
    const-string v1, "SELECT * FROM applist_meta WHERE category = ?"

    .line 306
    .local v1, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM applist_meta WHERE category = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 307
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 308
    .local v4, "_argIndex":I
    move/from16 v5, p1

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 309
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 311
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "appId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 312
    .local v0, "_cursorIndexOfAppId":I
    const-string v8, "category"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 313
    .local v8, "_cursorIndexOfCategory":I
    const-string v9, "status"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 314
    .local v9, "_cursorIndexOfStatus":I
    const-string v10, "isFirstLaunch"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 315
    .local v10, "_cursorIndexOfIsFirstLaunch":I
    const-string v11, "pkgName"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 316
    .local v11, "_cursorIndexOfPkgName":I
    const-string v12, "title"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 317
    .local v12, "_cursorIndexOfTitle":I
    const-string v13, "dayIconPath"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 318
    .local v13, "_cursorIndexOfDayIconPath":I
    const-string v14, "storeNightIconPath"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 319
    .local v14, "_cursorIndexOfStoreNightIconPath":I
    const-string v15, "dockerIconPath"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 320
    .local v15, "_cursorIndexOfDockerIconPath":I
    const-string v2, "extra"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 321
    .local v2, "_cursorIndexOfExtra":I
    move-object/from16 v16, v1

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    move/from16 v17, v4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .end local v4    # "_argIndex":I
    .local v17, "_argIndex":I
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 324
    new-instance v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;-><init>()V

    .line 325
    .local v4, "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    .line 326
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    .line 327
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 329
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 330
    .local v5, "_tmp":I
    if-eqz v5, :cond_0

    move/from16 v19, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v18, 0x0

    move/from16 v19, v0

    move/from16 v0, v18

    .end local v0    # "_cursorIndexOfAppId":I
    .local v19, "_cursorIndexOfAppId":I
    :goto_1
    iput-boolean v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 331
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    .line 332
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    .line 333
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    .line 334
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    .line 335
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    .line 336
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 337
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v4    # "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v5    # "_tmp":I
    nop

    .line 321
    move/from16 v0, v19

    move/from16 v5, p1

    goto :goto_0

    .line 339
    .end local v19    # "_cursorIndexOfAppId":I
    .restart local v0    # "_cursorIndexOfAppId":I
    :cond_1
    move/from16 v19, v0

    .line 341
    .end local v0    # "_cursorIndexOfAppId":I
    .restart local v19    # "_cursorIndexOfAppId":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 339
    return-object v1

    .line 341
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    .end local v2    # "_cursorIndexOfExtra":I
    .end local v8    # "_cursorIndexOfCategory":I
    .end local v9    # "_cursorIndexOfStatus":I
    .end local v10    # "_cursorIndexOfIsFirstLaunch":I
    .end local v11    # "_cursorIndexOfPkgName":I
    .end local v12    # "_cursorIndexOfTitle":I
    .end local v13    # "_cursorIndexOfDayIconPath":I
    .end local v14    # "_cursorIndexOfStoreNightIconPath":I
    .end local v15    # "_cursorIndexOfDockerIconPath":I
    .end local v19    # "_cursorIndexOfAppId":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .end local v17    # "_argIndex":I
    .local v4, "_argIndex":I
    :catchall_1
    move-exception v0

    move/from16 v17, v4

    .end local v4    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    goto :goto_2

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .local v1, "_sql":Ljava/lang/String;
    .restart local v4    # "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v17, v4

    .end local v1    # "_sql":Ljava/lang/String;
    .end local v4    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 342
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryByCategoryAndStatus(II)Ljava/util/List;
    .locals 20
    .param p1, "category"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;",
            ">;"
        }
    .end annotation

    .line 348
    const-string v1, "SELECT * FROM applist_meta WHERE category = ? AND status = ?"

    .line 349
    .local v1, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM applist_meta WHERE category = ? AND status = ?"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 350
    .local v2, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 351
    .local v0, "_argIndex":I
    move/from16 v3, p1

    int-to-long v4, v3

    invoke-virtual {v2, v0, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 352
    const/4 v4, 0x2

    .line 353
    .end local v0    # "_argIndex":I
    .local v4, "_argIndex":I
    move/from16 v5, p2

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 354
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 356
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "appId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "_cursorIndexOfAppId":I
    const-string v8, "category"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 358
    .local v8, "_cursorIndexOfCategory":I
    const-string v9, "status"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 359
    .local v9, "_cursorIndexOfStatus":I
    const-string v10, "isFirstLaunch"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 360
    .local v10, "_cursorIndexOfIsFirstLaunch":I
    const-string v11, "pkgName"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 361
    .local v11, "_cursorIndexOfPkgName":I
    const-string v12, "title"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 362
    .local v12, "_cursorIndexOfTitle":I
    const-string v13, "dayIconPath"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 363
    .local v13, "_cursorIndexOfDayIconPath":I
    const-string v14, "storeNightIconPath"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 364
    .local v14, "_cursorIndexOfStoreNightIconPath":I
    const-string v15, "dockerIconPath"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 365
    .local v15, "_cursorIndexOfDockerIconPath":I
    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "extra"

    .end local v1    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "_cursorIndexOfExtra":I
    new-instance v3, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v17, v4

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .end local v4    # "_argIndex":I
    .local v17, "_argIndex":I
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    new-instance v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;-><init>()V

    .line 370
    .local v4, "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    .line 371
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    .line 372
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 374
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 375
    .local v5, "_tmp":I
    if-eqz v5, :cond_0

    const/16 v18, 0x1

    .end local v0    # "_cursorIndexOfAppId":I
    .local v19, "_cursorIndexOfAppId":I
    :goto_1
    move/from16 v19, v0

    move/from16 v0, v18

    goto :goto_2

    .end local v19    # "_cursorIndexOfAppId":I
    .restart local v0    # "_cursorIndexOfAppId":I
    :cond_0
    const/16 v18, 0x0

    goto :goto_1

    .end local v0    # "_cursorIndexOfAppId":I
    .restart local v19    # "_cursorIndexOfAppId":I
    :goto_2
    iput-boolean v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 376
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    .line 377
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    .line 378
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    .line 379
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    .line 380
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    .line 381
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;

    .line 382
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    .end local v4    # "_item":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v5    # "_tmp":I
    nop

    .line 366
    move/from16 v0, v19

    move/from16 v5, p2

    goto :goto_0

    .line 384
    .end local v19    # "_cursorIndexOfAppId":I
    .restart local v0    # "_cursorIndexOfAppId":I
    :cond_1
    move/from16 v19, v0

    .line 386
    .end local v0    # "_cursorIndexOfAppId":I
    .restart local v19    # "_cursorIndexOfAppId":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 384
    return-object v3

    .line 386
    .end local v1    # "_cursorIndexOfExtra":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;>;"
    .end local v8    # "_cursorIndexOfCategory":I
    .end local v9    # "_cursorIndexOfStatus":I
    .end local v10    # "_cursorIndexOfIsFirstLaunch":I
    .end local v11    # "_cursorIndexOfPkgName":I
    .end local v12    # "_cursorIndexOfTitle":I
    .end local v13    # "_cursorIndexOfDayIconPath":I
    .end local v14    # "_cursorIndexOfStoreNightIconPath":I
    .end local v15    # "_cursorIndexOfDockerIconPath":I
    .end local v19    # "_cursorIndexOfAppId":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v17    # "_argIndex":I
    .local v4, "_argIndex":I
    :catchall_1
    move-exception v0

    move/from16 v17, v4

    .end local v4    # "_argIndex":I
    .restart local v17    # "_argIndex":I
    goto :goto_3

    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .local v1, "_sql":Ljava/lang/String;
    .restart local v4    # "_argIndex":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    move/from16 v17, v4

    .end local v1    # "_sql":Ljava/lang/String;
    .end local v4    # "_argIndex":I
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 387
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .locals 20
    .param p1, "appId"    # Ljava/lang/String;

    .line 258
    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM applist_meta WHERE appId = ?"

    .line 259
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM applist_meta WHERE appId = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v4

    .line 260
    .local v4, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v5, 0x1

    .line 261
    .local v5, "_argIndex":I
    if-nez v1, :cond_0

    .line 262
    invoke-virtual {v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v4, v5, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 266
    :goto_0
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v4}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 268
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "appId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 269
    .local v0, "_cursorIndexOfAppId":I
    const-string v8, "category"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 270
    .local v8, "_cursorIndexOfCategory":I
    const-string v9, "status"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 271
    .local v9, "_cursorIndexOfStatus":I
    const-string v10, "isFirstLaunch"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 272
    .local v10, "_cursorIndexOfIsFirstLaunch":I
    const-string v11, "pkgName"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 273
    .local v11, "_cursorIndexOfPkgName":I
    const-string v12, "title"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 274
    .local v12, "_cursorIndexOfTitle":I
    const-string v13, "dayIconPath"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 275
    .local v13, "_cursorIndexOfDayIconPath":I
    const-string v14, "storeNightIconPath"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 276
    .local v14, "_cursorIndexOfStoreNightIconPath":I
    const-string v15, "dockerIconPath"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 277
    .local v15, "_cursorIndexOfDockerIconPath":I
    const-string v3, "extra"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 279
    .local v3, "_cursorIndexOfExtra":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 280
    new-instance v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 281
    .local v1, "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    move-object/from16 v18, v2

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "_sql":Ljava/lang/String;
    .local v18, "_sql":Ljava/lang/String;
    iput-object v2, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->appId:Ljava/lang/String;

    .line 282
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->category:I

    .line 283
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->status:I

    .line 285
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 286
    .local v2, "_tmp":I
    if-eqz v2, :cond_1

    move/from16 v19, v0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    move/from16 v19, v0

    move/from16 v0, v16

    .end local v0    # "_cursorIndexOfAppId":I
    .local v19, "_cursorIndexOfAppId":I
    :goto_1
    iput-boolean v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->isFirstLaunch:Z

    .line 287
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->pkgName:Ljava/lang/String;

    .line 288
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->title:Ljava/lang/String;

    .line 289
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dayIconPath:Ljava/lang/String;

    .line 290
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->storeNightIconPath:Ljava/lang/String;

    .line 291
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->dockerIconPath:Ljava/lang/String;

    .line 292
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;->extra:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v2    # "_tmp":I
    goto :goto_2

    .line 298
    .end local v1    # "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v3    # "_cursorIndexOfExtra":I
    .end local v8    # "_cursorIndexOfCategory":I
    .end local v9    # "_cursorIndexOfStatus":I
    .end local v10    # "_cursorIndexOfIsFirstLaunch":I
    .end local v11    # "_cursorIndexOfPkgName":I
    .end local v12    # "_cursorIndexOfTitle":I
    .end local v13    # "_cursorIndexOfDayIconPath":I
    .end local v14    # "_cursorIndexOfStoreNightIconPath":I
    .end local v15    # "_cursorIndexOfDockerIconPath":I
    .end local v19    # "_cursorIndexOfAppId":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 294
    .end local v18    # "_sql":Ljava/lang/String;
    .restart local v0    # "_cursorIndexOfAppId":I
    .local v2, "_sql":Ljava/lang/String;
    .restart local v3    # "_cursorIndexOfExtra":I
    .restart local v8    # "_cursorIndexOfCategory":I
    .restart local v9    # "_cursorIndexOfStatus":I
    .restart local v10    # "_cursorIndexOfIsFirstLaunch":I
    .restart local v11    # "_cursorIndexOfPkgName":I
    .restart local v12    # "_cursorIndexOfTitle":I
    .restart local v13    # "_cursorIndexOfDayIconPath":I
    .restart local v14    # "_cursorIndexOfStoreNightIconPath":I
    .restart local v15    # "_cursorIndexOfDockerIconPath":I
    :cond_2
    move/from16 v19, v0

    move-object/from16 v18, v2

    .end local v0    # "_cursorIndexOfAppId":I
    .end local v2    # "_sql":Ljava/lang/String;
    .restart local v18    # "_sql":Ljava/lang/String;
    .restart local v19    # "_cursorIndexOfAppId":I
    const/4 v1, 0x0

    .restart local v1    # "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    :goto_2
    move-object v0, v1

    .line 296
    .end local v1    # "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .local v0, "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    nop

    .line 298
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 296
    return-object v0

    .line 298
    .end local v0    # "_result":Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;
    .end local v3    # "_cursorIndexOfExtra":I
    .end local v8    # "_cursorIndexOfCategory":I
    .end local v9    # "_cursorIndexOfStatus":I
    .end local v10    # "_cursorIndexOfIsFirstLaunch":I
    .end local v11    # "_cursorIndexOfPkgName":I
    .end local v12    # "_cursorIndexOfTitle":I
    .end local v13    # "_cursorIndexOfDayIconPath":I
    .end local v14    # "_cursorIndexOfStoreNightIconPath":I
    .end local v15    # "_cursorIndexOfDockerIconPath":I
    .end local v18    # "_sql":Ljava/lang/String;
    .end local v19    # "_cursorIndexOfAppId":I
    .restart local v2    # "_sql":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "_sql":Ljava/lang/String;
    .restart local v18    # "_sql":Ljava/lang/String;
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 299
    invoke-virtual {v4}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public update(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMeta"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__updateAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 212
    nop

    .line 213
    return-void

    .line 211
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs update([Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;)V
    .locals 2
    .param p1, "appMetas"    # [Lcom/xiaopeng/xuiservice/applist/database/meta/AppMeta;

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__updateAdapterOfAppMeta:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 201
    nop

    .line 202
    return-void

    .line 200
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
