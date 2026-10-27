.class public Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;
.super Ljava/lang/Object;
.source "OperationKeyValueDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfOperationKeyValue:Landroidx/room/EntityInsertionAdapter;

.field private final __updateAdapterOfOperationKeyValue:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__insertionAdapterOfOperationKeyValue:Landroidx/room/EntityInsertionAdapter;

    .line 52
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__updateAdapterOfOperationKeyValue:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 80
    return-void
.end method


# virtual methods
.method public insert(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)J
    .locals 3
    .param p1, "keyValue"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__insertionAdapterOfOperationKeyValue:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 87
    .local v0, "_result":J
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    nop

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 88
    return-wide v0

    .line 90
    .end local v0    # "_result":J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public queryById(J)Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    .locals 12
    .param p1, "id"    # J

    .line 142
    const-string v0, "SELECT * FROM OperationKeyValue WHERE id = ?"

    .line 143
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM OperationKeyValue WHERE id = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 144
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 145
    .local v2, "_argIndex":I
    invoke-virtual {v1, v2, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 146
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 148
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 149
    .local v4, "_cursorIndexOfId":I
    const-string v5, "key"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 150
    .local v5, "_cursorIndexOfKey":I
    const-string v6, "value"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 151
    .local v6, "_cursorIndexOfValue":I
    const-string v7, "time"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 152
    .local v7, "_cursorIndexOfTime":I
    const-string v8, "status"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 154
    .local v8, "_cursorIndexOfStatus":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 155
    new-instance v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    invoke-direct {v9}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;-><init>()V

    .line 156
    .local v9, "_result":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->id:J

    .line 157
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    .line 158
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    .line 159
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    .line 160
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v9    # "_result":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :cond_0
    const/4 v9, 0x0

    .line 164
    .restart local v9    # "_result":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :goto_0
    nop

    .line 166
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 164
    return-object v9

    .line 166
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfKey":I
    .end local v6    # "_cursorIndexOfValue":I
    .end local v7    # "_cursorIndexOfTime":I
    .end local v8    # "_cursorIndexOfStatus":I
    .end local v9    # "_result":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 167
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public queryByKey(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;",
            ">;"
        }
    .end annotation

    .line 107
    const-string v0, "SELECT * FROM OperationKeyValue WHERE key = ?"

    .line 108
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM OperationKeyValue WHERE key = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 109
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 110
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 111
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 117
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 118
    .local v4, "_cursorIndexOfId":I
    const-string v5, "key"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 119
    .local v5, "_cursorIndexOfKey":I
    const-string v6, "value"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 120
    .local v6, "_cursorIndexOfValue":I
    const-string v7, "time"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 121
    .local v7, "_cursorIndexOfTime":I
    const-string v8, "status"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, "_cursorIndexOfStatus":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 125
    new-instance v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    invoke-direct {v10}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;-><init>()V

    .line 126
    .local v10, "_item":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->id:J

    .line 127
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->key:Ljava/lang/String;

    .line 128
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->value:Ljava/lang/String;

    .line 129
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->time:Ljava/lang/String;

    .line 130
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v10, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;->status:I

    .line 131
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v10    # "_item":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;
    goto :goto_1

    .line 133
    :cond_1
    nop

    .line 135
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 133
    return-object v9

    .line 135
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfKey":I
    .end local v6    # "_cursorIndexOfValue":I
    .end local v7    # "_cursorIndexOfTime":I
    .end local v8    # "_cursorIndexOfStatus":I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public update(Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;)V
    .locals 2
    .param p1, "keyValue"    # Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValue;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__updateAdapterOfOperationKeyValue:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 102
    nop

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
