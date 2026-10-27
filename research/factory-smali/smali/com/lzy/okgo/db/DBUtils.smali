.class public Lcom/lzy/okgo/db/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFieldExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 93
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIMIT 0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v2, v1

    .line 94
    if-eqz v2, :cond_1

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    nop

    .line 99
    :cond_1
    if-eqz v2, :cond_2

    .line 100
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    .line 99
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v1}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    nop

    .line 99
    if-eqz v2, :cond_3

    .line 100
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_4

    .line 100
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 89
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_5
    :goto_1
    return v0
.end method

.method public static isNeedUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/lzy/okgo/db/TableEntity;)Z
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Lcom/lzy/okgo/db/TableEntity;

    .line 36
    iget-object v0, p1, Lcom/lzy/okgo/db/TableEntity;->tableName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/lzy/okgo/db/DBUtils;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/lzy/okgo/db/TableEntity;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 41
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/lzy/okgo/db/TableEntity;->getColumnCount()I

    move-result v3

    .line 42
    .local v3, "columnCount":I
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 43
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 44
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/lzy/okgo/db/TableEntity;->getColumnIndex(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 45
    nop

    .line 53
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "columnCount":I
    .end local v4    # "i":I
    .end local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p1    # "table":Lcom/lzy/okgo/db/TableEntity;
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    .line 43
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "columnCount":I
    .restart local v4    # "i":I
    .restart local p0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "table":Lcom/lzy/okgo/db/TableEntity;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "i":I
    :cond_3
    nop

    .line 53
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2

    .line 49
    :cond_4
    goto :goto_1

    .line 53
    .end local v3    # "columnCount":I
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 73
    .local v1, "cursor":Landroid/database/Cursor;
    move v2, v0

    .line 75
    .local v2, "count":I
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "table"

    aput-object v6, v5, v0

    aput-object p1, v5, v3

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    .line 77
    nop

    .line 83
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    .line 79
    :cond_2
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v4

    .line 83
    if-eqz v1, :cond_3

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v4}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    goto :goto_0

    .line 85
    :cond_3
    :goto_1
    if-lez v2, :cond_4

    move v0, v3

    nop

    :cond_4
    return v0

    .line 83
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 70
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "count":I
    :cond_6
    :goto_3
    return v0
.end method
