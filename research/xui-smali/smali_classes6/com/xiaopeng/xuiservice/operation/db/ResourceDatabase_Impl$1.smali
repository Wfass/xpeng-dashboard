.class Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "ResourceDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;
    .param p2, "x0"    # I

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 35
    const-string v0, "CREATE TABLE IF NOT EXISTS `ResourceInfo` (`resourceId` TEXT NOT NULL, `resourceType` INTEGER NOT NULL, `resourceName` TEXT NOT NULL, `targetPath` TEXT, `md5Hash` TEXT, `effectTime` INTEGER NOT NULL, `expireTime` INTEGER NOT NULL, `resourceFrom` TEXT, `extraInfo` TEXT, `status` INTEGER NOT NULL, `createTime` INTEGER NOT NULL, `updateTime` INTEGER NOT NULL, `resourceIcon` TEXT, `description` TEXT, `price` TEXT, PRIMARY KEY(`resourceId`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    const-string v0, "CREATE TABLE IF NOT EXISTS `SelectedInfo` (`resourceType` INTEGER NOT NULL, `resourceId` TEXT NOT NULL, PRIMARY KEY(`resourceType`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 37
    const-string v0, "CREATE TABLE IF NOT EXISTS `ResourceAccountBinding` (`id` TEXT NOT NULL, `timestamp` INTEGER NOT NULL, PRIMARY KEY(`id`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 38
    const-string v0, "CREATE TABLE IF NOT EXISTS `SelectTime` (`resourceType` INTEGER NOT NULL, `lastSelectTime` INTEGER NOT NULL, PRIMARY KEY(`resourceType`))"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"fc14e7e034b39140f4db47f3b134561e\")"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 45
    const-string v0, "DROP TABLE IF EXISTS `ResourceInfo`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    const-string v0, "DROP TABLE IF EXISTS `SelectedInfo`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 47
    const-string v0, "DROP TABLE IF EXISTS `ResourceAccountBinding`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    const-string v0, "DROP TABLE IF EXISTS `SelectTime`"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$000(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$100(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$200(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$302(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$400(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$500(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "_i":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$600(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "_size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 66
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl$1;->this$0:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;->access$700(Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "_i":I
    .end local v1    # "_size":I
    :cond_0
    return-void
.end method

.method protected validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 24
    .param p1, "_db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 73
    move-object/from16 v0, p1

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 74
    .local v1, "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v2, "resourceId"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "resourceId"

    const-string v5, "TEXT"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v2, "resourceType"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "resourceType"

    const-string v5, "INTEGER"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v2, "resourceName"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "resourceName"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "targetPath"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "targetPath"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v2, "md5Hash"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "md5Hash"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v2, "effectTime"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "effectTime"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v2, "expireTime"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "expireTime"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "resourceFrom"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "resourceFrom"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v2, "extraInfo"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "extraInfo"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v2, "status"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "status"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v2, "createTime"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "createTime"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v2, "updateTime"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "updateTime"

    const-string v5, "INTEGER"

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v2, "resourceIcon"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "resourceIcon"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v2, "description"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "description"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "price"

    new-instance v3, Landroidx/room/util/TableInfo$Column;

    const-string v4, "price"

    const-string v5, "TEXT"

    invoke-direct {v3, v4, v5, v7, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 90
    .local v2, "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 91
    .local v3, "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v4, Landroidx/room/util/TableInfo;

    const-string v5, "ResourceInfo"

    invoke-direct {v4, v5, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 92
    .local v4, "_infoResourceInfo":Landroidx/room/util/TableInfo;
    const-string v5, "ResourceInfo"

    invoke-static {v0, v5}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v5

    .line 93
    .local v5, "_existingResourceInfo":Landroidx/room/util/TableInfo;
    invoke-virtual {v4, v5}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 98
    new-instance v8, Ljava/util/HashMap;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 99
    .local v8, "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v10, "resourceType"

    new-instance v11, Landroidx/room/util/TableInfo$Column;

    const-string v12, "resourceType"

    const-string v13, "INTEGER"

    invoke-direct {v11, v12, v13, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v10, "resourceId"

    new-instance v11, Landroidx/room/util/TableInfo$Column;

    const-string v12, "resourceId"

    const-string v13, "TEXT"

    invoke-direct {v11, v12, v13, v6, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v8, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 102
    .local v10, "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 103
    .local v11, "_indicesSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v12, Landroidx/room/util/TableInfo;

    const-string v13, "SelectedInfo"

    invoke-direct {v12, v13, v8, v10, v11}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 104
    .local v12, "_infoSelectedInfo":Landroidx/room/util/TableInfo;
    const-string v13, "SelectedInfo"

    invoke-static {v0, v13}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v13

    .line 105
    .local v13, "_existingSelectedInfo":Landroidx/room/util/TableInfo;
    invoke-virtual {v12, v13}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 110
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 111
    .local v14, "_columnsResourceAccountBinding":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v15, "id"

    new-instance v9, Landroidx/room/util/TableInfo$Column;

    const-string v7, "id"

    move-object/from16 v16, v1

    const-string v1, "TEXT"

    .end local v1    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v16, "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    invoke-direct {v9, v7, v1, v6, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v14, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "timestamp"

    new-instance v7, Landroidx/room/util/TableInfo$Column;

    const-string v9, "timestamp"

    const-string v15, "INTEGER"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-direct {v7, v9, v15, v6, v2}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .end local v2    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v17, "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-virtual {v14, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 114
    .local v1, "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v2}, Ljava/util/HashSet;-><init>(I)V

    move-object v2, v7

    .line 115
    .local v2, "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v7, Landroidx/room/util/TableInfo;

    const-string v9, "ResourceAccountBinding"

    invoke-direct {v7, v9, v14, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 116
    .local v7, "_infoResourceAccountBinding":Landroidx/room/util/TableInfo;
    const-string v9, "ResourceAccountBinding"

    invoke-static {v0, v9}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v9

    .line 117
    .local v9, "_existingResourceAccountBinding":Landroidx/room/util/TableInfo;
    invoke-virtual {v7, v9}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 122
    new-instance v15, Ljava/util/HashMap;

    const/4 v6, 0x2

    invoke-direct {v15, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v6, v15

    .line 123
    .local v6, "_columnsSelectTime":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    const-string v15, "resourceType"

    move-object/from16 v18, v1

    new-instance v1, Landroidx/room/util/TableInfo$Column;

    .end local v1    # "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v18, "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    move-object/from16 v19, v2

    const-string v2, "resourceType"

    .end local v2    # "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v19, "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    move-object/from16 v20, v3

    const-string v3, "INTEGER"

    .end local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v20, "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    move-object/from16 v21, v8

    const/4 v8, 0x1

    invoke-direct {v1, v2, v3, v8, v8}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .end local v8    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v21, "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    invoke-virtual {v6, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "lastSelectTime"

    new-instance v2, Landroidx/room/util/TableInfo$Column;

    const-string v3, "lastSelectTime"

    const-string v15, "INTEGER"

    move-object/from16 v22, v10

    const/4 v10, 0x0

    invoke-direct {v2, v3, v15, v8, v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .end local v10    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v22, "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 126
    .local v1, "_foreignKeysSelectTime":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 127
    .local v2, "_indicesSelectTime":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v8, "SelectTime"

    invoke-direct {v3, v8, v6, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 128
    .local v3, "_infoSelectTime":Landroidx/room/util/TableInfo;
    const-string v8, "SelectTime"

    invoke-static {v0, v8}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object v8

    .line 129
    .local v8, "_existingSelectTime":Landroidx/room/util/TableInfo;
    invoke-virtual {v3, v8}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 134
    return-void

    .line 130
    :cond_0
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migration didn\'t properly handle SelectTime(com.xiaopeng.xuiservice.operation.db.SelectTime).\n Expected:\n"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n Found:\n"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 118
    .end local v6    # "_columnsSelectTime":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v18    # "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v19    # "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v21    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v22    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v1, "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v2, "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v3, "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .local v8, "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v10    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_1
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    .end local v1    # "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v2    # "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v8    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v10    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v18    # "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v19    # "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .restart local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .restart local v21    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v22    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle ResourceAccountBinding(com.xiaopeng.xuiservice.operation.db.ResourceAccountBinding).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    .end local v7    # "_infoResourceAccountBinding":Landroidx/room/util/TableInfo;
    .end local v9    # "_existingResourceAccountBinding":Landroidx/room/util/TableInfo;
    .end local v14    # "_columnsResourceAccountBinding":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v16    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v17    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v18    # "_foreignKeysResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v19    # "_indicesResourceAccountBinding":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v21    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v22    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .local v1, "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .local v2, "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .restart local v8    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v10    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v8

    move-object/from16 v22, v10

    .end local v1    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v2    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v8    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v10    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v16    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v17    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .restart local v21    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v22    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle SelectedInfo(com.xiaopeng.xuiservice.operation.db.SelectedInfo).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    .end local v11    # "_indicesSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v12    # "_infoSelectedInfo":Landroidx/room/util/TableInfo;
    .end local v13    # "_existingSelectedInfo":Landroidx/room/util/TableInfo;
    .end local v16    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v17    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .end local v21    # "_columnsSelectedInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v22    # "_foreignKeysSelectedInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v1    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v2    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v20, v3

    .end local v1    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .end local v2    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .end local v3    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    .restart local v16    # "_columnsResourceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/room/util/TableInfo$Column;>;"
    .restart local v17    # "_foreignKeysResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$ForeignKey;>;"
    .restart local v20    # "_indicesResourceInfo":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroidx/room/util/TableInfo$Index;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle ResourceInfo(com.xiaopeng.xuiservice.operation.db.ResourceInfo).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
