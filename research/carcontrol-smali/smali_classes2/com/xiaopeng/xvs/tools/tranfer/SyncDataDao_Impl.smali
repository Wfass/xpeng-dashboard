.class public Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;
.super Ljava/lang/Object;
.source "SyncDataDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfSyncDataEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfErase:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 26
    new-instance v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$1;-><init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__insertionAdapterOfSyncDataEntity:Landroidx/room/EntityInsertionAdapter;

    .line 52
    new-instance v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl$2;-><init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__preparedStmtOfErase:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method


# virtual methods
.method public erase(J)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__preparedStmtOfErase:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 78
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 79
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__preparedStmtOfErase:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception p1

    .line 82
    iget-object p2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 83
    iget-object p2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__preparedStmtOfErase:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public query(J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM sync_data WHERE uid = ?"

    const/4 v1, 0x1

    .line 90
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v1, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "appID"

    .line 95
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    const-string/jumbo v1, "uid"

    .line 96
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key"

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "value"

    .line 98
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    new-instance v5, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;

    invoke-direct {v5}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;-><init>()V

    .line 103
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    .line 104
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->uid:J

    .line 105
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    .line 106
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    .line 107
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception p2

    .line 111
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw p2
.end method

.method public queryAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM sync_data"

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "appID"

    .line 122
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "uid"

    .line 123
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key"

    .line 124
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "value"

    .line 125
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 126
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 129
    new-instance v7, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;

    invoke-direct {v7}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;-><init>()V

    .line 130
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->appID:Ljava/lang/String;

    .line 131
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->uid:J

    .line 132
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->key:Ljava/lang/String;

    .line 133
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;->value:Ljava/lang/String;

    .line 134
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v6

    :catchall_0
    move-exception v2

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 139
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v2
.end method

.method public queryUid()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT uid FROM sync_data group by uid"

    const/4 v1, 0x0

    .line 146
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 149
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    invoke-interface {v2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 155
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 157
    :goto_1
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 161
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 162
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v1
.end method

.method public save(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/tools/tranfer/SyncDataEntity;",
            ">;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__insertionAdapterOfSyncDataEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw p1
.end method
