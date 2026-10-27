.class public Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;
.super Ljava/lang/Object;
.source "AppInfoDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfAppInfoEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __updateAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 27
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__insertionAdapterOfAppInfoEntity:Landroidx/room/EntityInsertionAdapter;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__deletionAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 83
    new-instance v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl$3;-><init>(Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__updateAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 129
    return-void
.end method


# virtual methods
.method public varargs delete([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 2
    .param p1, "appInfoEntities"    # [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__deletionAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public varargs insert([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 2
    .param p1, "appInfoEntities"    # [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__insertionAdapterOfAppInfoEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert([Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 139
    nop

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public queryAll()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation

    .line 166
    const-string v0, "SELECT * FROM app_info"

    .line 167
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM app_info"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 168
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 170
    .local v2, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "group_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 171
    .local v3, "_cursorIndexOfGroupType":I
    const-string v4, "biz_uk_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 172
    .local v4, "_cursorIndexOfBizUkName":I
    const-string v5, "small_icon"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 173
    .local v5, "_cursorIndexOfSmallIcon":I
    const-string v6, "large_icon"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 174
    .local v6, "_cursorIndexOfLargeIcon":I
    const-string v7, "dock_icon"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 175
    .local v7, "_cursorIndexOfDockIcon":I
    const-string v8, "small_night_icon"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 176
    .local v8, "_cursorIndexOfSmallNightIcon":I
    const-string v9, "config_url"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 177
    .local v9, "_cursorIndexOfConfigUrl":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v10, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 180
    new-instance v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {v11}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;-><init>()V

    .line 181
    .local v11, "_item":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    .line 182
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    .line 183
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    .line 184
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    .line 185
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    .line 186
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    .line 187
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    .line 188
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v11    # "_item":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    goto :goto_0

    .line 190
    :cond_0
    nop

    .line 192
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 190
    return-object v10

    .line 192
    .end local v3    # "_cursorIndexOfGroupType":I
    .end local v4    # "_cursorIndexOfBizUkName":I
    .end local v5    # "_cursorIndexOfSmallIcon":I
    .end local v6    # "_cursorIndexOfLargeIcon":I
    .end local v7    # "_cursorIndexOfDockIcon":I
    .end local v8    # "_cursorIndexOfSmallNightIcon":I
    .end local v9    # "_cursorIndexOfConfigUrl":I
    .end local v10    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v3
.end method

.method public queryByGroup(I)Ljava/util/List;
    .locals 14
    .param p1, "groupType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;",
            ">;"
        }
    .end annotation

    .line 199
    const-string v0, "SELECT * FROM app_info WHERE group_type = ?"

    .line 200
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM app_info WHERE group_type = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 201
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 202
    .local v2, "_argIndex":I
    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 203
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 205
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "group_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "_cursorIndexOfGroupType":I
    const-string v5, "biz_uk_name"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 207
    .local v5, "_cursorIndexOfBizUkName":I
    const-string v6, "small_icon"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 208
    .local v6, "_cursorIndexOfSmallIcon":I
    const-string v7, "large_icon"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 209
    .local v7, "_cursorIndexOfLargeIcon":I
    const-string v8, "dock_icon"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 210
    .local v8, "_cursorIndexOfDockIcon":I
    const-string v9, "small_night_icon"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 211
    .local v9, "_cursorIndexOfSmallNightIcon":I
    const-string v10, "config_url"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 212
    .local v10, "_cursorIndexOfConfigUrl":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 213
    .local v11, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 215
    new-instance v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {v12}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;-><init>()V

    .line 216
    .local v12, "_item":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    .line 217
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    .line 218
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    .line 219
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    .line 220
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    .line 221
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    .line 222
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;

    .line 223
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v12    # "_item":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    goto :goto_0

    .line 225
    :cond_0
    nop

    .line 227
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 225
    return-object v11

    .line 227
    .end local v4    # "_cursorIndexOfGroupType":I
    .end local v5    # "_cursorIndexOfBizUkName":I
    .end local v6    # "_cursorIndexOfSmallIcon":I
    .end local v7    # "_cursorIndexOfLargeIcon":I
    .end local v8    # "_cursorIndexOfDockIcon":I
    .end local v9    # "_cursorIndexOfSmallNightIcon":I
    .end local v10    # "_cursorIndexOfConfigUrl":I
    .end local v11    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public queryById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    .locals 13
    .param p1, "pk"    # Ljava/lang/String;

    .line 234
    const-string v0, "SELECT * FROM app_info WHERE biz_uk_name = ?"

    .line 235
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM app_info WHERE biz_uk_name = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 236
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 237
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 238
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 242
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 244
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "group_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 245
    .local v4, "_cursorIndexOfGroupType":I
    const-string v5, "biz_uk_name"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 246
    .local v5, "_cursorIndexOfBizUkName":I
    const-string v6, "small_icon"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 247
    .local v6, "_cursorIndexOfSmallIcon":I
    const-string v7, "large_icon"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 248
    .local v7, "_cursorIndexOfLargeIcon":I
    const-string v8, "dock_icon"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 249
    .local v8, "_cursorIndexOfDockIcon":I
    const-string v9, "small_night_icon"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 250
    .local v9, "_cursorIndexOfSmallNightIcon":I
    const-string v10, "config_url"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 252
    .local v10, "_cursorIndexOfConfigUrl":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 253
    new-instance v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    invoke-direct {v11}, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;-><init>()V

    .line 254
    .local v11, "_result":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->group_type:I

    .line 255
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->biz_uk_name:Ljava/lang/String;

    .line 256
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_icon:Ljava/lang/String;

    .line 257
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->large_icon:Ljava/lang/String;

    .line 258
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->dock_icon:Ljava/lang/String;

    .line 259
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->small_night_icon:Ljava/lang/String;

    .line 260
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;->config_url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 262
    .end local v11    # "_result":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :cond_1
    const/4 v11, 0x0

    .line 264
    .restart local v11    # "_result":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :goto_1
    nop

    .line 266
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 264
    return-object v11

    .line 266
    .end local v4    # "_cursorIndexOfGroupType":I
    .end local v5    # "_cursorIndexOfBizUkName":I
    .end local v6    # "_cursorIndexOfSmallIcon":I
    .end local v7    # "_cursorIndexOfLargeIcon":I
    .end local v8    # "_cursorIndexOfDockIcon":I
    .end local v9    # "_cursorIndexOfSmallNightIcon":I
    .end local v10    # "_cursorIndexOfConfigUrl":I
    .end local v11    # "_result":Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public varargs update([Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;)V
    .locals 2
    .param p1, "appInfoEntities"    # [Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__updateAdapterOfAppInfoEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple([Ljava/lang/Object;)I

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 161
    nop

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
