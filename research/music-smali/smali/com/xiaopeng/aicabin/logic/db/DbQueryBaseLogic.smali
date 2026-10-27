.class public abstract Lcom/xiaopeng/aicabin/logic/db/DbQueryBaseLogic;
.super Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;
.source "DbQueryBaseLogic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public final action()V
    .locals 12

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->action()V

    .line 3
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbQueryBaseLogic;->getQueryParam()Lcom/xiaopeng/aicabin/logic/db/DbParam;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v2, "query param is empty"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    return-void

    .line 9
    :cond_0
    iget-object v1, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbQueryBaseLogic;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query table is not support in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/xiaopeng/aicabin/ICabin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    return-void

    .line 14
    :cond_1
    iget v1, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->queryType:I

    if-nez v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-boolean v3, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->distinct:Z

    iget-object v4, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->columns:[Ljava/lang/String;

    iget-object v6, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selection:Ljava/lang/String;

    iget-object v7, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->groupBy:Ljava/lang/String;

    iget-object v9, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->having:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->orderBy:Ljava/lang/String;

    iget-object v11, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->limit:Ljava/lang/String;

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/aicabin/logic/db/DbQueryBaseLogic;->onQueryResult(Lcom/xiaopeng/aicabin/logic/db/DbParam;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    .line 17
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_2

    .line 20
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 22
    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->sql:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaopeng/aicabin/logic/db/DbParam;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 23
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/aicabin/logic/db/DbQueryBaseLogic;->onQueryResult(Lcom/xiaopeng/aicabin/logic/db/DbParam;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_6

    .line 24
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 25
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v2

    if-eqz v1, :cond_4

    .line 27
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v2

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v2, "query type is error"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public abstract getOpenHelperClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueryParam()Lcom/xiaopeng/aicabin/logic/db/DbParam;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract onQueryResult(Lcom/xiaopeng/aicabin/logic/db/DbParam;Landroid/database/Cursor;)V
.end method
