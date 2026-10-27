.class public Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;
.super Ljava/lang/Object;
.source "SelectedDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfSelectedInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfSelectTime:Landroidx/room/EntityInsertionAdapter;

.field private final __insertionAdapterOfSelectedInfo:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__insertionAdapterOfSelectedInfo:Landroidx/room/EntityInsertionAdapter;

    .line 41
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__insertionAdapterOfSelectTime:Landroidx/room/EntityInsertionAdapter;

    .line 53
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl$3;-><init>(Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__deletionAdapterOfSelectedInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 64
    return-void
.end method


# virtual methods
.method public deleteSelectedInfo(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__deletionAdapterOfSelectedInfo:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insertSelectInfo(Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__insertionAdapterOfSelectedInfo:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insertSelectTime(Lcom/xiaopeng/xuiservice/operation/db/SelectTime;)V
    .locals 2
    .param p1, "selectTime"    # Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__insertionAdapterOfSelectTime:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 85
    nop

    .line 86
    return-void

    .line 84
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public querySelectTimeByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    .locals 9
    .param p1, "resourceType"    # I

    .line 126
    const-string v0, "SELECT * FROM SelectTime WHERE resourceType = ?"

    .line 127
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM SelectTime WHERE resourceType = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 128
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 129
    .local v2, "_argIndex":I
    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 130
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 132
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "resourceType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 133
    .local v4, "_cursorIndexOfResourceType":I
    const-string v5, "lastSelectTime"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 135
    .local v5, "_cursorIndexOfLastSelectTime":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    new-instance v6, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;-><init>()V

    .line 137
    .local v6, "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->resourceType:I

    .line 138
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/xiaopeng/xuiservice/operation/db/SelectTime;->lastSelectTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    :cond_0
    const/4 v6, 0x0

    .line 142
    .restart local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    :goto_0
    nop

    .line 144
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 142
    return-object v6

    .line 144
    .end local v4    # "_cursorIndexOfResourceType":I
    .end local v5    # "_cursorIndexOfLastSelectTime":I
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public querySelectedByType(I)Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    .locals 8
    .param p1, "resourceType"    # I

    .line 101
    const-string v0, "SELECT * FROM selectedinfo WHERE resourceType = ?"

    .line 102
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM selectedinfo WHERE resourceType = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 103
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 104
    .local v2, "_argIndex":I
    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 105
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/SelectedDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 107
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "resourceType"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 108
    .local v4, "_cursorIndexOfResourceType":I
    const-string v5, "resourceId"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 110
    .local v5, "_cursorIndexOfResourceId":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 111
    new-instance v6, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;-><init>()V

    .line 112
    .local v6, "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v6, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceType:I

    .line 113
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;->resourceId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :cond_0
    const/4 v6, 0x0

    .line 117
    .restart local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :goto_0
    nop

    .line 119
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 117
    return-object v6

    .line 119
    .end local v4    # "_cursorIndexOfResourceType":I
    .end local v5    # "_cursorIndexOfResourceId":I
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 120
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method
