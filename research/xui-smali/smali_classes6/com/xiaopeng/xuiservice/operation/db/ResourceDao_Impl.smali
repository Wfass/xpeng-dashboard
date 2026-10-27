.class public Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;
.super Ljava/lang/Object;
.source "ResourceDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfResourceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfResourceInfo:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfUpdateResourceStatus:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 28
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__insertionAdapterOfResourceInfo:Landroidx/room/EntityInsertionAdapter;

    .line 89
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__deletionAdapterOfResourceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl$3;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__preparedStmtOfUpdateResourceStatus:Landroidx/room/SharedSQLiteStatement;

    .line 111
    return-void
.end method


# virtual methods
.method public deleteResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__deletionAdapterOfResourceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 154
    nop

    .line 155
    return-void

    .line 153
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs deleteResources([Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "info"    # [Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__deletionAdapterOfResourceInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insertResource(Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__insertionAdapterOfResourceInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs insertResources([Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;)V
    .locals 2
    .param p1, "info"    # [Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__insertionAdapterOfResourceInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 121
    nop

    .line 122
    return-void

    .line 120
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public queryAllResource()Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 180
    const-string v1, "SELECT * FROM resourceinfo"

    .line 181
    .local v1, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM resourceinfo"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 182
    .local v2, "_statement":Landroidx/room/RoomSQLiteQuery;
    move-object/from16 v3, p0

    iget-object v0, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 184
    .local v4, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "resourceId"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "_cursorIndexOfResourceId":I
    const-string v5, "resourceType"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 186
    .local v5, "_cursorIndexOfResourceType":I
    const-string v6, "resourceName"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 187
    .local v6, "_cursorIndexOfResourceName":I
    const-string v7, "targetPath"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 188
    .local v7, "_cursorIndexOfTargetPath":I
    const-string v8, "md5Hash"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 189
    .local v8, "_cursorIndexOfMd5Hash":I
    const-string v9, "effectTime"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 190
    .local v9, "_cursorIndexOfEffectTime":I
    const-string v10, "expireTime"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 191
    .local v10, "_cursorIndexOfExpireTime":I
    const-string v11, "resourceFrom"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 192
    .local v11, "_cursorIndexOfResourceFrom":I
    const-string v12, "extraInfo"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 193
    .local v12, "_cursorIndexOfExtraInfo":I
    const-string v13, "status"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 194
    .local v13, "_cursorIndexOfStatus":I
    const-string v14, "createTime"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 195
    .local v14, "_cursorIndexOfCreateTime":I
    const-string v15, "updateTime"

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 196
    .local v15, "_cursorIndexOfUpdateTime":I
    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "resourceIcon"

    .end local v1    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "_cursorIndexOfResourceIcon":I
    const-string v3, "description"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 198
    .local v3, "_cursorIndexOfDescription":I
    move-object/from16 v17, v2

    :try_start_2
    const-string v2, "price"

    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v17, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "_cursorIndexOfPrice":I
    move/from16 v18, v2

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "_cursorIndexOfPrice":I
    .local v18, "_cursorIndexOfPrice":I
    move/from16 v19, v3

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .end local v3    # "_cursorIndexOfDescription":I
    .local v19, "_cursorIndexOfDescription":I
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    .line 202
    :try_start_3
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 203
    .local v3, "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    move-object/from16 v20, v2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v20, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 204
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 205
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 206
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 207
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    .line 208
    move/from16 v21, v5

    move/from16 v22, v6

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .end local v5    # "_cursorIndexOfResourceType":I
    .end local v6    # "_cursorIndexOfResourceName":I
    .local v21, "_cursorIndexOfResourceType":I
    .local v22, "_cursorIndexOfResourceName":I
    iput-wide v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 209
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 210
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 211
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 212
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 213
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    .line 214
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    .line 215
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 216
    move/from16 v2, v19

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v19    # "_cursorIndexOfDescription":I
    .local v2, "_cursorIndexOfDescription":I
    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 217
    move/from16 v5, v18

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .end local v18    # "_cursorIndexOfPrice":I
    .local v5, "_cursorIndexOfPrice":I
    iput-object v6, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    .line 218
    move-object/from16 v6, v20

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 219
    .end local v3    # "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v20    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    nop

    .line 199
    move/from16 v19, v2

    move/from16 v18, v5

    move-object v2, v6

    move/from16 v5, v21

    move/from16 v6, v22

    goto :goto_0

    .line 222
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfResourceIcon":I
    .end local v2    # "_cursorIndexOfDescription":I
    .end local v5    # "_cursorIndexOfPrice":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v7    # "_cursorIndexOfTargetPath":I
    .end local v8    # "_cursorIndexOfMd5Hash":I
    .end local v9    # "_cursorIndexOfEffectTime":I
    .end local v10    # "_cursorIndexOfExpireTime":I
    .end local v11    # "_cursorIndexOfResourceFrom":I
    .end local v12    # "_cursorIndexOfExtraInfo":I
    .end local v13    # "_cursorIndexOfStatus":I
    .end local v14    # "_cursorIndexOfCreateTime":I
    .end local v15    # "_cursorIndexOfUpdateTime":I
    .end local v21    # "_cursorIndexOfResourceType":I
    .end local v22    # "_cursorIndexOfResourceName":I
    :catchall_0
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_1

    .line 220
    .restart local v0    # "_cursorIndexOfResourceId":I
    .restart local v1    # "_cursorIndexOfResourceIcon":I
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v5, "_cursorIndexOfResourceType":I
    .local v6, "_cursorIndexOfResourceName":I
    .restart local v7    # "_cursorIndexOfTargetPath":I
    .restart local v8    # "_cursorIndexOfMd5Hash":I
    .restart local v9    # "_cursorIndexOfEffectTime":I
    .restart local v10    # "_cursorIndexOfExpireTime":I
    .restart local v11    # "_cursorIndexOfResourceFrom":I
    .restart local v12    # "_cursorIndexOfExtraInfo":I
    .restart local v13    # "_cursorIndexOfStatus":I
    .restart local v14    # "_cursorIndexOfCreateTime":I
    .restart local v15    # "_cursorIndexOfUpdateTime":I
    .restart local v18    # "_cursorIndexOfPrice":I
    .restart local v19    # "_cursorIndexOfDescription":I
    :cond_0
    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v5, v18

    move-object v6, v2

    move/from16 v2, v19

    .line 222
    .end local v18    # "_cursorIndexOfPrice":I
    .end local v19    # "_cursorIndexOfDescription":I
    .local v2, "_cursorIndexOfDescription":I
    .local v5, "_cursorIndexOfPrice":I
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .restart local v21    # "_cursorIndexOfResourceType":I
    .restart local v22    # "_cursorIndexOfResourceName":I
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 223
    move-object/from16 v3, v17

    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 220
    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    return-object v6

    .line 222
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfResourceIcon":I
    .end local v2    # "_cursorIndexOfDescription":I
    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_cursorIndexOfPrice":I
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v7    # "_cursorIndexOfTargetPath":I
    .end local v8    # "_cursorIndexOfMd5Hash":I
    .end local v9    # "_cursorIndexOfEffectTime":I
    .end local v10    # "_cursorIndexOfExpireTime":I
    .end local v11    # "_cursorIndexOfResourceFrom":I
    .end local v12    # "_cursorIndexOfExtraInfo":I
    .end local v13    # "_cursorIndexOfStatus":I
    .end local v14    # "_cursorIndexOfCreateTime":I
    .end local v15    # "_cursorIndexOfUpdateTime":I
    .end local v21    # "_cursorIndexOfResourceType":I
    .end local v22    # "_cursorIndexOfResourceName":I
    .restart local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v3, v17

    .end local v17    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_1

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object v3, v2

    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_1

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v16    # "_sql":Ljava/lang/String;
    .local v1, "_sql":Ljava/lang/String;
    .restart local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    move-object v3, v2

    .end local v1    # "_sql":Ljava/lang/String;
    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 223
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .locals 24
    .param p1, "id"    # Ljava/lang/String;

    .line 337
    move-object/from16 v1, p1

    const-string v2, "SELECT * FROM resourceinfo WHERE resourceId = ?"

    .line 338
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM resourceinfo WHERE resourceId = ?"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 339
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v4, 0x1

    .line 340
    .local v4, "_argIndex":I
    if-nez v1, :cond_0

    .line 341
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v3, v4, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 345
    :goto_0
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 347
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "resourceId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 348
    .local v0, "_cursorIndexOfResourceId":I
    const-string v7, "resourceType"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, "_cursorIndexOfResourceType":I
    const-string v8, "resourceName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 350
    .local v8, "_cursorIndexOfResourceName":I
    const-string v9, "targetPath"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 351
    .local v9, "_cursorIndexOfTargetPath":I
    const-string v10, "md5Hash"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 352
    .local v10, "_cursorIndexOfMd5Hash":I
    const-string v11, "effectTime"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 353
    .local v11, "_cursorIndexOfEffectTime":I
    const-string v12, "expireTime"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 354
    .local v12, "_cursorIndexOfExpireTime":I
    const-string v13, "resourceFrom"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 355
    .local v13, "_cursorIndexOfResourceFrom":I
    const-string v14, "extraInfo"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 356
    .local v14, "_cursorIndexOfExtraInfo":I
    const-string v15, "status"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 357
    .local v15, "_cursorIndexOfStatus":I
    const-string v1, "createTime"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 358
    .local v1, "_cursorIndexOfCreateTime":I
    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "updateTime"

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 359
    .local v2, "_cursorIndexOfUpdateTime":I
    move/from16 v17, v4

    :try_start_2
    const-string v4, "resourceIcon"

    .end local v4    # "_argIndex":I
    .local v17, "_argIndex":I
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 360
    .local v4, "_cursorIndexOfResourceIcon":I
    const-string v5, "description"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 361
    .local v5, "_cursorIndexOfDescription":I
    move-object/from16 v18, v3

    :try_start_3
    const-string v3, "price"

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 363
    .local v3, "_cursorIndexOfPrice":I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v19, :cond_1

    .line 364
    move/from16 v20, v3

    :try_start_4
    new-instance v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    .end local v3    # "_cursorIndexOfPrice":I
    .local v20, "_cursorIndexOfPrice":I
    invoke-direct {v3}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 365
    .local v3, "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    move/from16 v21, v5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5    # "_cursorIndexOfDescription":I
    .local v21, "_cursorIndexOfDescription":I
    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 366
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 367
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 368
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 369
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    .line 370
    move/from16 v22, v7

    move/from16 v23, v8

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .end local v7    # "_cursorIndexOfResourceType":I
    .end local v8    # "_cursorIndexOfResourceName":I
    .local v22, "_cursorIndexOfResourceType":I
    .local v23, "_cursorIndexOfResourceName":I
    iput-wide v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 371
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 372
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 373
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 374
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 375
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    .line 376
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    .line 377
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 378
    move/from16 v5, v21

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .end local v21    # "_cursorIndexOfDescription":I
    .restart local v5    # "_cursorIndexOfDescription":I
    iput-object v7, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 379
    move/from16 v7, v20

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v20    # "_cursorIndexOfPrice":I
    .local v7, "_cursorIndexOfPrice":I
    iput-object v8, v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 385
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfCreateTime":I
    .end local v2    # "_cursorIndexOfUpdateTime":I
    .end local v3    # "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "_cursorIndexOfResourceIcon":I
    .end local v5    # "_cursorIndexOfDescription":I
    .end local v7    # "_cursorIndexOfPrice":I
    .end local v9    # "_cursorIndexOfTargetPath":I
    .end local v10    # "_cursorIndexOfMd5Hash":I
    .end local v11    # "_cursorIndexOfEffectTime":I
    .end local v12    # "_cursorIndexOfExpireTime":I
    .end local v13    # "_cursorIndexOfResourceFrom":I
    .end local v14    # "_cursorIndexOfExtraInfo":I
    .end local v15    # "_cursorIndexOfStatus":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    :catchall_0
    move-exception v0

    move-object/from16 v8, v18

    goto :goto_2

    .line 381
    .restart local v0    # "_cursorIndexOfResourceId":I
    .restart local v1    # "_cursorIndexOfCreateTime":I
    .restart local v2    # "_cursorIndexOfUpdateTime":I
    .local v3, "_cursorIndexOfPrice":I
    .restart local v4    # "_cursorIndexOfResourceIcon":I
    .restart local v5    # "_cursorIndexOfDescription":I
    .local v7, "_cursorIndexOfResourceType":I
    .restart local v8    # "_cursorIndexOfResourceName":I
    .restart local v9    # "_cursorIndexOfTargetPath":I
    .restart local v10    # "_cursorIndexOfMd5Hash":I
    .restart local v11    # "_cursorIndexOfEffectTime":I
    .restart local v12    # "_cursorIndexOfExpireTime":I
    .restart local v13    # "_cursorIndexOfResourceFrom":I
    .restart local v14    # "_cursorIndexOfExtraInfo":I
    .restart local v15    # "_cursorIndexOfStatus":I
    :cond_1
    move/from16 v22, v7

    move/from16 v23, v8

    move v7, v3

    .end local v3    # "_cursorIndexOfPrice":I
    .end local v8    # "_cursorIndexOfResourceName":I
    .local v7, "_cursorIndexOfPrice":I
    .restart local v22    # "_cursorIndexOfResourceType":I
    .restart local v23    # "_cursorIndexOfResourceName":I
    const/4 v3, 0x0

    .line 383
    .local v3, "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    :goto_1
    nop

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 386
    move-object/from16 v8, v18

    invoke-virtual {v8}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 383
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v8, "_statement":Landroidx/room/RoomSQLiteQuery;
    return-object v3

    .line 385
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfCreateTime":I
    .end local v2    # "_cursorIndexOfUpdateTime":I
    .end local v3    # "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v4    # "_cursorIndexOfResourceIcon":I
    .end local v5    # "_cursorIndexOfDescription":I
    .end local v7    # "_cursorIndexOfPrice":I
    .end local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v9    # "_cursorIndexOfTargetPath":I
    .end local v10    # "_cursorIndexOfMd5Hash":I
    .end local v11    # "_cursorIndexOfEffectTime":I
    .end local v12    # "_cursorIndexOfExpireTime":I
    .end local v13    # "_cursorIndexOfResourceFrom":I
    .end local v14    # "_cursorIndexOfExtraInfo":I
    .end local v15    # "_cursorIndexOfStatus":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v8, v18

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object v8, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v17    # "_argIndex":I
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v4, "_argIndex":I
    :catchall_3
    move-exception v0

    move-object v8, v3

    move/from16 v17, v4

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_argIndex":I
    goto :goto_2

    .end local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .local v2, "_sql":Ljava/lang/String;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v4    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    move-object v8, v3

    move/from16 v17, v4

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v4    # "_argIndex":I
    .restart local v8    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual {v8}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryResourceByType(I)Ljava/util/List;
    .locals 24
    .param p1, "resourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 229
    const-string v1, "SELECT * FROM resourceinfo WHERE resourceType = ?"

    .line 230
    .local v1, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM resourceinfo WHERE resourceType = ?"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    .line 231
    .local v2, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v3, 0x1

    .line 232
    .local v3, "_argIndex":I
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-virtual {v2, v3, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 233
    move-object/from16 v5, p0

    iget-object v0, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 235
    .local v6, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "resourceId"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 236
    .local v0, "_cursorIndexOfResourceId":I
    const-string v7, "resourceType"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 237
    .local v7, "_cursorIndexOfResourceType":I
    const-string v8, "resourceName"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 238
    .local v8, "_cursorIndexOfResourceName":I
    const-string v9, "targetPath"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 239
    .local v9, "_cursorIndexOfTargetPath":I
    const-string v10, "md5Hash"

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 240
    .local v10, "_cursorIndexOfMd5Hash":I
    const-string v11, "effectTime"

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 241
    .local v11, "_cursorIndexOfEffectTime":I
    const-string v12, "expireTime"

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 242
    .local v12, "_cursorIndexOfExpireTime":I
    const-string v13, "resourceFrom"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 243
    .local v13, "_cursorIndexOfResourceFrom":I
    const-string v14, "extraInfo"

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 244
    .local v14, "_cursorIndexOfExtraInfo":I
    const-string v15, "status"

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 245
    .local v15, "_cursorIndexOfStatus":I
    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "createTime"

    .end local v1    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 246
    .local v1, "_cursorIndexOfCreateTime":I
    move/from16 v17, v3

    :try_start_2
    const-string v3, "updateTime"

    .end local v3    # "_argIndex":I
    .local v17, "_argIndex":I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 247
    .local v3, "_cursorIndexOfUpdateTime":I
    const-string v4, "resourceIcon"

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 248
    .local v4, "_cursorIndexOfResourceIcon":I
    const-string v5, "description"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 249
    .local v5, "_cursorIndexOfDescription":I
    move-object/from16 v18, v2

    :try_start_3
    const-string v2, "price"

    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, "_cursorIndexOfPrice":I
    move/from16 v19, v2

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "_cursorIndexOfPrice":I
    .local v19, "_cursorIndexOfPrice":I
    move/from16 v20, v5

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .end local v5    # "_cursorIndexOfDescription":I
    .local v20, "_cursorIndexOfDescription":I
    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 251
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    .line 253
    :try_start_4
    new-instance v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-direct {v5}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 254
    .local v5, "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    move-object/from16 v21, v2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 255
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 256
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 257
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 258
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    .line 259
    move/from16 v22, v7

    move/from16 v23, v8

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .end local v7    # "_cursorIndexOfResourceType":I
    .end local v8    # "_cursorIndexOfResourceName":I
    .local v22, "_cursorIndexOfResourceType":I
    .local v23, "_cursorIndexOfResourceName":I
    iput-wide v7, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 260
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 261
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 262
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 263
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 264
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    .line 265
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    .line 266
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 267
    move/from16 v2, v20

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .end local v20    # "_cursorIndexOfDescription":I
    .local v2, "_cursorIndexOfDescription":I
    iput-object v7, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 268
    move/from16 v7, v19

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v19    # "_cursorIndexOfPrice":I
    .local v7, "_cursorIndexOfPrice":I
    iput-object v8, v5, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    .line 269
    move-object/from16 v8, v21

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    .end local v5    # "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    nop

    .line 250
    move/from16 v20, v2

    move/from16 v19, v7

    move-object v2, v8

    move/from16 v7, v22

    move/from16 v8, v23

    goto :goto_0

    .line 273
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfCreateTime":I
    .end local v2    # "_cursorIndexOfDescription":I
    .end local v3    # "_cursorIndexOfUpdateTime":I
    .end local v4    # "_cursorIndexOfResourceIcon":I
    .end local v7    # "_cursorIndexOfPrice":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v9    # "_cursorIndexOfTargetPath":I
    .end local v10    # "_cursorIndexOfMd5Hash":I
    .end local v11    # "_cursorIndexOfEffectTime":I
    .end local v12    # "_cursorIndexOfExpireTime":I
    .end local v13    # "_cursorIndexOfResourceFrom":I
    .end local v14    # "_cursorIndexOfExtraInfo":I
    .end local v15    # "_cursorIndexOfStatus":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    :catchall_0
    move-exception v0

    move-object/from16 v5, v18

    goto :goto_1

    .line 271
    .restart local v0    # "_cursorIndexOfResourceId":I
    .restart local v1    # "_cursorIndexOfCreateTime":I
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .restart local v3    # "_cursorIndexOfUpdateTime":I
    .restart local v4    # "_cursorIndexOfResourceIcon":I
    .local v7, "_cursorIndexOfResourceType":I
    .local v8, "_cursorIndexOfResourceName":I
    .restart local v9    # "_cursorIndexOfTargetPath":I
    .restart local v10    # "_cursorIndexOfMd5Hash":I
    .restart local v11    # "_cursorIndexOfEffectTime":I
    .restart local v12    # "_cursorIndexOfExpireTime":I
    .restart local v13    # "_cursorIndexOfResourceFrom":I
    .restart local v14    # "_cursorIndexOfExtraInfo":I
    .restart local v15    # "_cursorIndexOfStatus":I
    .restart local v19    # "_cursorIndexOfPrice":I
    .restart local v20    # "_cursorIndexOfDescription":I
    :cond_0
    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v7, v19

    move-object v8, v2

    move/from16 v2, v20

    .line 273
    .end local v19    # "_cursorIndexOfPrice":I
    .end local v20    # "_cursorIndexOfDescription":I
    .local v2, "_cursorIndexOfDescription":I
    .local v7, "_cursorIndexOfPrice":I
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .restart local v22    # "_cursorIndexOfResourceType":I
    .restart local v23    # "_cursorIndexOfResourceName":I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    move-object/from16 v5, v18

    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 271
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_statement":Landroidx/room/RoomSQLiteQuery;
    return-object v8

    .line 273
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfCreateTime":I
    .end local v2    # "_cursorIndexOfDescription":I
    .end local v3    # "_cursorIndexOfUpdateTime":I
    .end local v4    # "_cursorIndexOfResourceIcon":I
    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v7    # "_cursorIndexOfPrice":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v9    # "_cursorIndexOfTargetPath":I
    .end local v10    # "_cursorIndexOfMd5Hash":I
    .end local v11    # "_cursorIndexOfEffectTime":I
    .end local v12    # "_cursorIndexOfExpireTime":I
    .end local v13    # "_cursorIndexOfResourceFrom":I
    .end local v14    # "_cursorIndexOfExtraInfo":I
    .end local v15    # "_cursorIndexOfStatus":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v5, v18

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_1

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v2, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object v5, v2

    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_1

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v17    # "_argIndex":I
    .restart local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_argIndex":I
    :catchall_3
    move-exception v0

    move-object v5, v2

    move/from16 v17, v3

    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v3    # "_argIndex":I
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_argIndex":I
    goto :goto_1

    .end local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .local v1, "_sql":Ljava/lang/String;
    .restart local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v3    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v1

    move-object v5, v2

    move/from16 v17, v3

    .end local v1    # "_sql":Ljava/lang/String;
    .end local v2    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v3    # "_argIndex":I
    .restart local v5    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 274
    invoke-virtual {v5}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public queryResourceByTypeAndFrom(ILjava/lang/String;)Ljava/util/List;
    .locals 24
    .param p1, "resourceType"    # I
    .param p2, "resourceFrom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;",
            ">;"
        }
    .end annotation

    .line 280
    move-object/from16 v1, p2

    const-string v2, "SELECT * FROM resourceinfo WHERE resourceType = ? AND resourceFrom = ? "

    .line 281
    .local v2, "_sql":Ljava/lang/String;
    const-string v0, "SELECT * FROM resourceinfo WHERE resourceType = ? AND resourceFrom = ? "

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 282
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v0, 0x1

    .line 283
    .local v0, "_argIndex":I
    move/from16 v4, p1

    int-to-long v5, v4

    invoke-virtual {v3, v0, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 284
    const/4 v5, 0x2

    .line 285
    .end local v0    # "_argIndex":I
    .local v5, "_argIndex":I
    if-nez v1, :cond_0

    .line 286
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v3, v5, v1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 290
    :goto_0
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    move-object v7, v0

    .line 292
    .local v7, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "resourceId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 293
    .local v0, "_cursorIndexOfResourceId":I
    const-string v8, "resourceType"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 294
    .local v8, "_cursorIndexOfResourceType":I
    const-string v9, "resourceName"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 295
    .local v9, "_cursorIndexOfResourceName":I
    const-string v10, "targetPath"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 296
    .local v10, "_cursorIndexOfTargetPath":I
    const-string v11, "md5Hash"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 297
    .local v11, "_cursorIndexOfMd5Hash":I
    const-string v12, "effectTime"

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 298
    .local v12, "_cursorIndexOfEffectTime":I
    const-string v13, "expireTime"

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 299
    .local v13, "_cursorIndexOfExpireTime":I
    const-string v14, "resourceFrom"

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 300
    .local v14, "_cursorIndexOfResourceFrom":I
    const-string v15, "extraInfo"

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 301
    .local v15, "_cursorIndexOfExtraInfo":I
    const-string v1, "status"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 302
    .local v1, "_cursorIndexOfStatus":I
    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "createTime"

    .end local v2    # "_sql":Ljava/lang/String;
    .local v16, "_sql":Ljava/lang/String;
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 303
    .local v2, "_cursorIndexOfCreateTime":I
    const-string v4, "updateTime"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 304
    .local v4, "_cursorIndexOfUpdateTime":I
    move/from16 v17, v5

    :try_start_2
    const-string v5, "resourceIcon"

    .end local v5    # "_argIndex":I
    .local v17, "_argIndex":I
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 305
    .local v5, "_cursorIndexOfResourceIcon":I
    const-string v6, "description"

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 306
    .local v6, "_cursorIndexOfDescription":I
    move-object/from16 v18, v3

    :try_start_3
    const-string v3, "price"

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v18, "_statement":Landroidx/room/RoomSQLiteQuery;
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 307
    .local v3, "_cursorIndexOfPrice":I
    move/from16 v19, v3

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "_cursorIndexOfPrice":I
    .local v19, "_cursorIndexOfPrice":I
    move/from16 v20, v6

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .end local v6    # "_cursorIndexOfDescription":I
    .local v20, "_cursorIndexOfDescription":I
    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_1

    .line 310
    :try_start_4
    new-instance v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;-><init>()V

    .line 311
    .local v6, "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    move-object/from16 v21, v3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v21, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceId:Ljava/lang/String;

    .line 312
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceType:I

    .line 313
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceName:Ljava/lang/String;

    .line 314
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->targetPath:Ljava/lang/String;

    .line 315
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->md5Hash:Ljava/lang/String;

    .line 316
    move/from16 v22, v8

    move/from16 v23, v9

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .end local v8    # "_cursorIndexOfResourceType":I
    .end local v9    # "_cursorIndexOfResourceName":I
    .local v22, "_cursorIndexOfResourceType":I
    .local v23, "_cursorIndexOfResourceName":I
    iput-wide v8, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->effectTime:J

    .line 317
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->expireTime:J

    .line 318
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceFrom:Ljava/lang/String;

    .line 319
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->extraInfo:Ljava/lang/String;

    .line 320
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->status:I

    .line 321
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->createTime:J

    .line 322
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->updateTime:J

    .line 323
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->resourceIcon:Ljava/lang/String;

    .line 324
    move/from16 v3, v20

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .end local v20    # "_cursorIndexOfDescription":I
    .local v3, "_cursorIndexOfDescription":I
    iput-object v8, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->description:Ljava/lang/String;

    .line 325
    move/from16 v8, v19

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .end local v19    # "_cursorIndexOfPrice":I
    .local v8, "_cursorIndexOfPrice":I
    iput-object v9, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;->price:Ljava/lang/String;

    .line 326
    move-object/from16 v9, v21

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 327
    .end local v6    # "_item":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    .end local v21    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    nop

    .line 307
    move/from16 v20, v3

    move/from16 v19, v8

    move-object v3, v9

    move/from16 v8, v22

    move/from16 v9, v23

    goto :goto_1

    .line 330
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfStatus":I
    .end local v2    # "_cursorIndexOfCreateTime":I
    .end local v3    # "_cursorIndexOfDescription":I
    .end local v4    # "_cursorIndexOfUpdateTime":I
    .end local v5    # "_cursorIndexOfResourceIcon":I
    .end local v8    # "_cursorIndexOfPrice":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v10    # "_cursorIndexOfTargetPath":I
    .end local v11    # "_cursorIndexOfMd5Hash":I
    .end local v12    # "_cursorIndexOfEffectTime":I
    .end local v13    # "_cursorIndexOfExpireTime":I
    .end local v14    # "_cursorIndexOfResourceFrom":I
    .end local v15    # "_cursorIndexOfExtraInfo":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    :catchall_0
    move-exception v0

    move-object/from16 v6, v18

    goto :goto_2

    .line 328
    .restart local v0    # "_cursorIndexOfResourceId":I
    .restart local v1    # "_cursorIndexOfStatus":I
    .restart local v2    # "_cursorIndexOfCreateTime":I
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .restart local v4    # "_cursorIndexOfUpdateTime":I
    .restart local v5    # "_cursorIndexOfResourceIcon":I
    .local v8, "_cursorIndexOfResourceType":I
    .local v9, "_cursorIndexOfResourceName":I
    .restart local v10    # "_cursorIndexOfTargetPath":I
    .restart local v11    # "_cursorIndexOfMd5Hash":I
    .restart local v12    # "_cursorIndexOfEffectTime":I
    .restart local v13    # "_cursorIndexOfExpireTime":I
    .restart local v14    # "_cursorIndexOfResourceFrom":I
    .restart local v15    # "_cursorIndexOfExtraInfo":I
    .restart local v19    # "_cursorIndexOfPrice":I
    .restart local v20    # "_cursorIndexOfDescription":I
    :cond_1
    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v8, v19

    move-object v9, v3

    move/from16 v3, v20

    .line 330
    .end local v19    # "_cursorIndexOfPrice":I
    .end local v20    # "_cursorIndexOfDescription":I
    .local v3, "_cursorIndexOfDescription":I
    .local v8, "_cursorIndexOfPrice":I
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .restart local v22    # "_cursorIndexOfResourceType":I
    .restart local v23    # "_cursorIndexOfResourceName":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    move-object/from16 v6, v18

    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 328
    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v6, "_statement":Landroidx/room/RoomSQLiteQuery;
    return-object v9

    .line 330
    .end local v0    # "_cursorIndexOfResourceId":I
    .end local v1    # "_cursorIndexOfStatus":I
    .end local v2    # "_cursorIndexOfCreateTime":I
    .end local v3    # "_cursorIndexOfDescription":I
    .end local v4    # "_cursorIndexOfUpdateTime":I
    .end local v5    # "_cursorIndexOfResourceIcon":I
    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v8    # "_cursorIndexOfPrice":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;>;"
    .end local v10    # "_cursorIndexOfTargetPath":I
    .end local v11    # "_cursorIndexOfMd5Hash":I
    .end local v12    # "_cursorIndexOfEffectTime":I
    .end local v13    # "_cursorIndexOfExpireTime":I
    .end local v14    # "_cursorIndexOfResourceFrom":I
    .end local v15    # "_cursorIndexOfExtraInfo":I
    .end local v22    # "_cursorIndexOfResourceType":I
    .end local v23    # "_cursorIndexOfResourceName":I
    .restart local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_1
    move-exception v0

    move-object/from16 v6, v18

    .end local v18    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v3, "_statement":Landroidx/room/RoomSQLiteQuery;
    :catchall_2
    move-exception v0

    move-object v6, v3

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    goto :goto_2

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v17    # "_argIndex":I
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .local v5, "_argIndex":I
    :catchall_3
    move-exception v0

    move-object v6, v3

    move/from16 v17, v5

    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v17    # "_argIndex":I
    goto :goto_2

    .end local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v16    # "_sql":Ljava/lang/String;
    .end local v17    # "_argIndex":I
    .local v2, "_sql":Ljava/lang/String;
    .restart local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v5    # "_argIndex":I
    :catchall_4
    move-exception v0

    move-object/from16 v16, v2

    move-object v6, v3

    move/from16 v17, v5

    .end local v2    # "_sql":Ljava/lang/String;
    .end local v3    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .end local v5    # "_argIndex":I
    .restart local v6    # "_statement":Landroidx/room/RoomSQLiteQuery;
    .restart local v16    # "_sql":Ljava/lang/String;
    .restart local v17    # "_argIndex":I
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 331
    invoke-virtual {v6}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v0
.end method

.method public updateResourceStatus(Ljava/lang/String;I)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__preparedStmtOfUpdateResourceStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 160
    .local v0, "_stmt":Landroidx/sqlite/db/SupportSQLiteStatement;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 162
    const/4 v1, 0x1

    .line 163
    .local v1, "_argIndex":I
    int-to-long v2, p2

    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 164
    const/4 v1, 0x2

    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 170
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 171
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v1    # "_argIndex":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__preparedStmtOfUpdateResourceStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 175
    nop

    .line 176
    return-void

    .line 173
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 174
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDao_Impl;->__preparedStmtOfUpdateResourceStatus:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw v1
.end method
