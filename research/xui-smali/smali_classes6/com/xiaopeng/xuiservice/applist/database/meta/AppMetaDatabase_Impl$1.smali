.class Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "AppMetaDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;
    .param p2, "x0"    # I

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 31
    const-string v0, "CREATE TABLE IF NOT EXISTS `applist_meta` (`appId` TEXT NOT NULL, `category` INTEGER NOT NULL, `status` INTEGER NOT NULL, `isFirstLaunch` INTEGER NOT NULL, `pkgName` TEXT, `title` TEXT, `dayIconPath` TEXT, `storeNightIconPath` TEXT, `dockerIconPath` TEXT, `extra` TEXT, PRIMARY KEY(`appId`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"8ec15b13ffbae4292d3c4ff2a267a0fb\")"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 38
    const-string v0, "DROP TABLE IF EXISTS `applist_meta`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$000(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$100(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$200(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$302(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$400(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$500(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$600(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 56
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;->access$700(Lcom/xiaopeng/xuiservice/applist/database/meta/AppMetaDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 8
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 64
    .local v0, "_columnsApplistMeta":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v1, "appId"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "appId"

    const-string v4, "TEXT"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "category"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "category"

    const-string v4, "INTEGER"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "status"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "status"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "isFirstLaunch"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "isFirstLaunch"

    const-string v4, "INTEGER"

    invoke-direct {v2, v3, v4, v5, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "pkgName"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "pkgName"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "title"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "title"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "dayIconPath"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "dayIconPath"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "storeNightIconPath"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "storeNightIconPath"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "dockerIconPath"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "dockerIconPath"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "extra"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "extra"

    const-string v4, "TEXT"

    invoke-direct {v2, v3, v4, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 75
    .local v1, "_foreignKeysApplistMeta":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 76
    .local v2, "_indicesApplistMeta":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v4, "applist_meta"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 77
    .local v3, "_infoApplistMeta":Landroidx/room/util/TableInfo;
    const-string v4, "applist_meta"

    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v4

    .line 78
    .local v4, "_existingApplistMeta":Landroidx/room/util/TableInfo;
    invoke-virtual {v3, v4}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    return-void

    .line 79
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migration didn\'t properly handle applist_meta(com.xiaopeng.xuiservice.applist.database.meta.AppMeta).\n Expected:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n Found:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
