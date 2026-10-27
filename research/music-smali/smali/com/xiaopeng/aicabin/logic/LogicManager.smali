.class public Lcom/xiaopeng/aicabin/logic/LogicManager;
.super Ljava/lang/Object;
.source "LogicManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAsync(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/logic/a;->b()Lcom/xiaopeng/aicabin/logic/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    iget-object p0, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    const-string v0, "cancel: taskId is empty"

    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    iget-boolean v1, v0, Lcom/xiaopeng/aicabin/logic/a;->d:Z

    if-nez v1, :cond_1

    .line 215
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/a;->a(Landroid/app/Application;)V

    .line 217
    :cond_1
    iget-object v1, v0, Lcom/xiaopeng/aicabin/logic/a;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aicabin/logic/a$a;

    if-eqz v1, :cond_2

    .line 218
    iget-object p0, v1, Lcom/xiaopeng/aicabin/logic/a$a;->a:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    .line 219
    invoke-interface {p0}, Lcom/xiaopeng/aicabin/logic/IAsyncLogic;->cancelAsync()V

    goto :goto_0

    .line 223
    :cond_2
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/ARemoteManager;->cancelAsync(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static exeAsync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/DataReq;->newBuilder()Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/Tracker;->begin(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    const-string v1, "exeAsync"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/Tracker;->trace(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/xiaopeng/aicabin/logic/a;->b()Lcom/xiaopeng/aicabin/logic/a;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lcom/xiaopeng/aicabin/logic/a;->d:Z

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/a;->a(Landroid/app/Application;)V

    .line 10
    :cond_1
    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    .line 11
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/aicabin/ARemoteManager;->startRemoteImpl(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 12
    :cond_2
    const-class v2, Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    .line 15
    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 17
    :goto_0
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocalAsyncLogic: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " newInstance failed e = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 19
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_INSTANCE_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    goto/16 :goto_1

    .line 23
    :cond_3
    iget-object p1, v0, Lcom/xiaopeng/aicabin/logic/a;->g:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    const-class v1, Lcom/xiaopeng/aicabin/logic/ISyncLogic;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 24
    iget-object p1, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is a Sync logic, please use exeSync method"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    .line 26
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_ASYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    goto :goto_1

    .line 30
    :cond_4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "title"

    const-string v1, "LOGIC_MATCH_FAIL"

    .line 31
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAsyncLogic#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "elements"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "total"

    const-string v1, "count:1"

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "msg"

    const-string v1, "async match fail, need to check!"

    .line 34
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "async_logic_match_fail#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Lcom/xiaopeng/aicabin/utils/DataLogUtil;->sendLogicIllegal(Ljava/util/Map;)V

    if-eqz p2, :cond_5

    .line 38
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_5
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static exeSync(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;
    .locals 4

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/DataReq;->newBuilder()Lcom/xiaopeng/aicabin/DataReq;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/Tracker;->begin(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object v0

    const-string v1, "exeSync"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/Tracker;->trace(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/xiaopeng/aicabin/logic/a;->b()Lcom/xiaopeng/aicabin/logic/a;

    move-result-object v0

    .line 6
    iget-boolean v1, v0, Lcom/xiaopeng/aicabin/logic/a;->d:Z

    if-nez v1, :cond_1

    .line 7
    invoke-static {}, Lcom/xiaopeng/aicabin/utils/ClassUtil;->getApplicationByReflect()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/logic/a;->a(Landroid/app/Application;)V

    .line 11
    :cond_1
    invoke-virtual {v0, p0}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    sget-boolean v1, Lcom/xiaopeng/aicabin/AConstant;->DEBUG_LOG:Z

    if-eqz v1, :cond_2

    .line 14
    iget-object v1, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exeSync name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not registered in local, need startRemoteImpl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->i:Lcom/xiaopeng/aicabin/ARemoteManager;

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/aicabin/ARemoteManager;->startRemoteImpl(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    goto/16 :goto_1

    .line 16
    :cond_3
    const-class v2, Lcom/xiaopeng/aicabin/logic/ISyncLogic;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 18
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/aicabin/logic/ISyncLogic;

    .line 19
    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/aicabin/logic/a;->a(Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ISyncLogic;Lcom/xiaopeng/aicabin/DataReq;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 21
    :goto_0
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalSyncLogic: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " newInstance failed e = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_INSTANCE_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    goto :goto_1

    .line 24
    :cond_4
    const-class v2, Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 25
    iget-object v0, v0, Lcom/xiaopeng/aicabin/logic/a;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is a Async logic, please use exeAsync method"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_SYNC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    goto :goto_1

    .line 29
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "title"

    const-string v2, "LOGIC_MATCH_FAIL"

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISyncLogic#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "elements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "total"

    const-string v2, "count:1"

    .line 32
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    const-string v2, "sync match fail, need to check!"

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logic_match_fail#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {v0}, Lcom/xiaopeng/aicabin/utils/DataLogUtil;->sendLogicIllegal(Ljava/util/Map;)V

    .line 36
    sget-object p0, Lcom/xiaopeng/aicabin/logic/LogicCode;->COMMON_LOGIC_MATCH_FAIL:Lcom/xiaopeng/aicabin/logic/LogicCode;

    invoke-static {p0}, Lcom/xiaopeng/aicabin/DataResp;->newBuilder(Lcom/xiaopeng/aicabin/ICode;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p0

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/DataReq;->getTracker()Lcom/xiaopeng/aicabin/Tracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/aicabin/Tracker;->end()V

    return-object p0
.end method

.method public static newBuilder()Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;->newBuilder()Lcom/xiaopeng/aicabin/logic/LogicManagerBuilder;

    move-result-object v0

    return-object v0
.end method
