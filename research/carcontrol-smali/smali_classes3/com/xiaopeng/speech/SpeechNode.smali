.class public abstract Lcom/xiaopeng/speech/SpeechNode;
.super Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;
.source "SpeechNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;"
    }
.end annotation


# instance fields
.field protected mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

.field protected mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/SimpleCallbackList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mSubscribed:Z

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    .line 21
    new-instance v0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    .line 25
    invoke-direct {p0, p0}, Lcom/xiaopeng/speech/SpeechNode;->bind(Lcom/xiaopeng/speech/coreapi/IEventObserver;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode;->performCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bind(Lcom/xiaopeng/speech/coreapi/IEventObserver;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    .locals 6

    .line 98
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

    .line 100
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Class;

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "bind %s error"

    .line 105
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "jarvis.dm.listening"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jarvis.dm.wait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performCommand, command = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/annotation/ICommandProcessor;->performCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "performCommand error "

    .line 86
    invoke-static {p0, p2, p1}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/xiaopeng/speech/annotation/ICommandProcessor;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    return v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/xiaopeng/speech/SpeechNode$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode$1;-><init>(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode;->performCommand(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSubscribe()V
    .locals 0

    return-void
.end method

.method protected onUnsubscribe()V
    .locals 0

    return-void
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setSubscribed(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechNode;->onSubscribe()V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechNode;->onUnsubscribe()V

    :goto_0
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method
