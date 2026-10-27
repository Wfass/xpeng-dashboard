.class public abstract Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;
.super Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;
.source "DbBaseLogic.java"


# instance fields
.field public mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    return-void
.end method

.method public beforeAction()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final beforeHandle()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "db wrapper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->getOpenHelperClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method public final handle()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->handle()V

    .line 2
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->beforeAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->action()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v2, "beforeExec error"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->onCreate(Landroid/app/Application;)V

    .line 2
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->getOpenHelperClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/xiaopeng/aicabin/logic/db/b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    const-class v2, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 7
    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    .line 9
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 16
    :cond_1
    :goto_1
    sget-object p1, Lcom/xiaopeng/aicabin/logic/db/b;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;

    if-eqz p1, :cond_2

    .line 17
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/logic/db/AiCabinOpenHelperWrapper;->getSqLiteOpenHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/db/DbBaseLogic;->mSqliteHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_2
    return-void
.end method
