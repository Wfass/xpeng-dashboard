.class public abstract Lcom/xiaopeng/speech/SpeechQuery;
.super Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;
.source "SpeechQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;"
    }
.end annotation


# instance fields
.field protected mQueryCaller:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

.field private mSubscribed:Z

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    invoke-direct {p0}, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    .line 23
    invoke-direct {p0, p0}, Lcom/xiaopeng/speech/SpeechQuery;->bind(Lcom/xiaopeng/speech/IRemoteDataSensor;)Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    .line 24
    return-void
.end method

.method private bind(Lcom/xiaopeng/speech/IRemoteDataSensor;)Lcom/xiaopeng/speech/annotation/IQueryProcessor;
    .locals 6
    .param p1, "remoteDataSensor"    # Lcom/xiaopeng/speech/IRemoteDataSensor;

    .line 94
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Processor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 97
    .local v3, "clazz":Ljava/lang/Class;
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 98
    .local v4, "bindingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/annotation/IQueryProcessor;>;"
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/annotation/IQueryProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 99
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "bindingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/annotation/IQueryProcessor;>;"
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const-string v4, "bind %s error"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    const/4 v1, 0x0

    return-object v1
.end method

.method private performQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 73
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    :try_start_0
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/speech/annotation/IQueryProcessor;->querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/bean/Value;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "performCommand error "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    return-object v0
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 1

    .line 81
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/speech/annotation/IQueryProcessor;->getQueryEvents()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .line 50
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 40
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    return v0
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 4
    .param p1, "dataApi"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 60
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    sget-object v0, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    .line 61
    .local v0, "value":Lcom/xiaopeng/speech/common/bean/Value;
    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechQuery;->performQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v0

    .line 63
    const-string v1, "SpeechQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataApi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",param data ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", query result value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/bean/Value;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-object v0
.end method

.method protected onSubscribe()V
    .locals 0

    .line 44
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    return-void
.end method

.method protected onUnsubscribe()V
    .locals 0

    .line 47
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    return-void
.end method

.method public setQueryCaller(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    .local p1, "queryCaller":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryCaller:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setSubscribed(Z)V
    .locals 1
    .param p1, "subscribed"    # Z

    .line 27
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    iput-boolean p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    .line 28
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechQuery;->onSubscribe()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechQuery;->onUnsubscribe()V

    .line 33
    :goto_0
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "workerHandler"    # Landroid/os/Handler;

    .line 54
    .local p0, "this":Lcom/xiaopeng/speech/SpeechQuery;, "Lcom/xiaopeng/speech/SpeechQuery<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mWorkerHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method
