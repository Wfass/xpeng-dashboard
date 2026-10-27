.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;
.super Ljava/lang/Object;
.source "KeyConfigDao_Impl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfKeyConfig:Landroidx/room/EntityInsertionAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1
    .param p1, "__db"    # Landroidx/room/RoomDatabase;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 22
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__insertionAdapterOfKeyConfig:Landroidx/room/EntityInsertionAdapter;

    .line 48
    return-void
.end method


# virtual methods
.method public findByName(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "configName"    # Ljava/lang/String;

    .line 107
    const-string v0, "SELECT * FROM keyconfig WHERE pkgName LIKE ? AND configName LIKE ? LIMIT 1"

    .line 108
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM keyconfig WHERE pkgName LIKE ? AND configName LIKE ? LIMIT 1"

    const/4 v2, 0x2

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
    const/4 v2, 0x2

    .line 116
    if-nez p2, :cond_1

    .line 117
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v1, v2, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 121
    :goto_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 123
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "pkgName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 124
    .local v4, "_cursorIndexOfPkgName":I
    const-string v5, "configName"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 125
    .local v5, "_cursorIndexOfConfigName":I
    const-string v6, "selected"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 126
    .local v6, "_cursorIndexOfSelected":I
    const-string v7, "configInfo"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 128
    .local v7, "_cursorIndexOfConfigInfo":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 129
    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 130
    .local v8, "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 131
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 132
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 133
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 135
    .end local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :cond_2
    const/4 v8, 0x0

    .line 137
    .restart local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :goto_2
    nop

    .line 139
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 137
    return-object v8

    .line 139
    .end local v4    # "_cursorIndexOfPkgName":I
    .end local v5    # "_cursorIndexOfConfigName":I
    .end local v6    # "_cursorIndexOfSelected":I
    .end local v7    # "_cursorIndexOfConfigInfo":I
    .end local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 140
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public findConfigsByPkg(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;"
        }
    .end annotation

    .line 74
    const-string v0, "SELECT * FROM keyconfig WHERE pkgName LIKE ?"

    .line 75
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM keyconfig WHERE pkgName LIKE ?"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 76
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 77
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 78
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 82
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 84
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "pkgName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 85
    .local v4, "_cursorIndexOfPkgName":I
    const-string v5, "configName"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 86
    .local v5, "_cursorIndexOfConfigName":I
    const-string v6, "selected"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "_cursorIndexOfSelected":I
    const-string v7, "configInfo"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 88
    .local v7, "_cursorIndexOfConfigInfo":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v8, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 91
    new-instance v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v9}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 92
    .local v9, "_item":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 93
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 94
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 95
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;

    .line 96
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v9    # "_item":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    goto :goto_1

    .line 98
    :cond_1
    nop

    .line 100
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 98
    return-object v8

    .line 100
    .end local v4    # "_cursorIndexOfPkgName":I
    .end local v5    # "_cursorIndexOfConfigName":I
    .end local v6    # "_cursorIndexOfSelected":I
    .end local v7    # "_cursorIndexOfConfigInfo":I
    .end local v8    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 101
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public findSelected(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 146
    const-string v0, "SELECT * FROM keyconfig WHERE pkgName LIKE ? AND selected = 1 LIMIT 1"

    .line 147
    .local v0, "_sql":Ljava/lang/String;
    const-string v1, "SELECT * FROM keyconfig WHERE pkgName LIKE ? AND selected = 1 LIMIT 1"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v1

    .line 148
    .local v1, "_statement":Landroidx/room/RoomSQLiteQuery;
    const/4 v2, 0x1

    .line 149
    .local v2, "_argIndex":I
    if-nez p1, :cond_0

    .line 150
    invoke-virtual {v1, v2}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {v1, v2, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 154
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v3, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    .line 156
    .local v3, "_cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "pkgName"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 157
    .local v4, "_cursorIndexOfPkgName":I
    const-string v5, "configName"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, "_cursorIndexOfConfigName":I
    const-string v6, "selected"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 159
    .local v6, "_cursorIndexOfSelected":I
    const-string v7, "configInfo"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 161
    .local v7, "_cursorIndexOfConfigInfo":I
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    new-instance v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {v8}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;-><init>()V

    .line 163
    .local v8, "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->pkgName:Ljava/lang/String;

    .line 164
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configName:Ljava/lang/String;

    .line 165
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->selected:I

    .line 166
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;->configInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 168
    .end local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :cond_1
    const/4 v8, 0x0

    .line 170
    .restart local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :goto_1
    nop

    .line 172
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 170
    return-object v8

    .line 172
    .end local v4    # "_cursorIndexOfPkgName":I
    .end local v5    # "_cursorIndexOfConfigName":I
    .end local v6    # "_cursorIndexOfSelected":I
    .end local v7    # "_cursorIndexOfConfigInfo":I
    .end local v8    # "_result":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 173
    invoke-virtual {v1}, Landroidx/room/RoomSQLiteQuery;->release()V

    throw v4
.end method

.method public insertConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__insertionAdapterOfKeyConfig:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 69
    nop

    .line 70
    return-void

    .line 68
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public insertConfigs(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;",
            ">;)V"
        }
    .end annotation

    .line 52
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__insertionAdapterOfKeyConfig:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 58
    nop

    .line 59
    return-void

    .line 57
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method
