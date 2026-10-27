.class public Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;
.super Ljava/lang/Object;
.source "ResourceAccountBindingDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfResourceAccountBinding:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfResourceAccountBinding:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 23
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__insertionAdapterOfResourceAccountBinding:Landroidx/room/EntityInsertionAdapter;

    .line 39
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl$2;-><init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__deletionAdapterOfResourceAccountBinding:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 54
    return-void
.end method


# virtual methods
.method public delete(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .locals 2
    .param p1, "binding"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__deletionAdapterOfResourceAccountBinding:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insert(Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;)V
    .locals 2
    .param p1, "binding"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__insertionAdapterOfResourceAccountBinding:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 64
    nop

    .line 65
    return-void

    .line 63
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public query(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .line 80
    const-string v0, "SELECT * FROM ResourceAccountBinding WHERE id = ?"

    .line 81
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM ResourceAccountBinding WHERE id = ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 82
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 83
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 88
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 90
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 91
    .local v4, "_cursorIndexOfId":I
    const-string v5, "timestamp"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 93
    .local v5, "_cursorIndexOfTimestamp":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    new-instance v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;

    invoke-direct {v6}, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;-><init>()V

    .line 95
    .local v6, "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->id:Ljava/lang/String;

    .line 96
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;->timestamp:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 98
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    :cond_1
    const/4 v6, 0x0

    .line 100
    .restart local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    :goto_1
    nop

    .line 102
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 100
    return-object v6

    .line 102
    .end local v4    # "_cursorIndexOfId":I
    .end local v5    # "_cursorIndexOfTimestamp":I
    .end local v6    # "_result":Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 103
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method
