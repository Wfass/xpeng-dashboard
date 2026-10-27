.class Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "SyncDataDB_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `sync_data` (`appID` TEXT NOT NULL, `uid` INTEGER NOT NULL, `key` TEXT NOT NULL, `value` TEXT, PRIMARY KEY(`appID`, `uid`, `key`))"

    .line 31
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 32
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"a912e748d0879e5e89ecc70e00720dad\")"

    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `sync_data`"

    .line 38
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$000(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$100(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$200(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$302(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$400(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$500(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 55
    iget-object v1, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$600(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl$1;->this$0:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;->access$700(Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 7

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "appID"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string/jumbo v2, "uid"

    const-string v5, "INTEGER"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v5, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "key"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string/jumbo v2, "value"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 70
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string/jumbo v4, "sync_data"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 71
    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 72
    invoke-virtual {v3, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle sync_data(com.xiaopeng.xvs.tools.tranfer.SyncDataEntity).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
