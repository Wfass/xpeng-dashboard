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
    invoke-direct {p0}, Lcom/xiaopeng/speech/IRemoteDataSensor$Stub;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    .line 23
    invoke-direct {p0, p0}, Lcom/xiaopeng/speech/SpeechQuery;->bind(Lcom/xiaopeng/speech/IRemoteDataSensor;)Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    return-void
.end method

.method private bind(Lcom/xiaopeng/speech/IRemoteDataSensor;)Lcom/xiaopeng/speech/annotation/IQueryProcessor;
    .locals 6

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Processor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 96
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/annotation/IQueryProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "bind %s error"

    .line 101
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private performQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 73
    :try_start_0
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/speech/annotation/IQueryProcessor;->querySensor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/common/bean/Value;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "performCommand error "

    .line 75
    invoke-static {p0, p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method


# virtual methods
.method public getQueryEvents()[Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0}, Lcom/xiaopeng/speech/annotation/IQueryProcessor;->getQueryEvents()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    return v0
.end method

.method public onQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 3

    .line 60
    sget-object v0, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryProcessor:Lcom/xiaopeng/speech/annotation/IQueryProcessor;

    if-eqz v1, :cond_0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechQuery;->performQuery(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dataApi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ",param data ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", query result value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 64
    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/bean/Value;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechQuery"

    .line 63
    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected onSubscribe()V
    .locals 0

    return-void
.end method

.method protected onUnsubscribe()V
    .locals 0

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
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mQueryCaller:Ljava/lang/Object;

    return-void
.end method

.method public setSubscribed(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mSubscribed:Z

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechQuery;->onSubscribe()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechQuery;->onUnsubscribe()V

    :goto_0
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechQuery;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method
