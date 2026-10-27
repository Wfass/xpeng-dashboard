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
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    invoke-direct {p0}, Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    .line 21
    new-instance v0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    .line 25
    invoke-direct {p0, p0}, Lcom/xiaopeng/speech/SpeechNode;->bind(Lcom/xiaopeng/speech/coreapi/IEventObserver;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/speech/SpeechNode;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode;->performCommand(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private bind(Lcom/xiaopeng/speech/coreapi/IEventObserver;)Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    .locals 6
    .param p1, "eventObserver"    # Lcom/xiaopeng/speech/coreapi/IEventObserver;

    .line 98
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
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

    .line 100
    .local v0, "clsName":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 101
    .local v3, "clazz":Ljava/lang/Class;
    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 102
    .local v4, "bindingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/annotation/ICommandProcessor;>;"
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/speech/annotation/ICommandProcessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 103
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "bindingCtor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/xiaopeng/speech/annotation/ICommandProcessor;>;"
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const-string v4, "bind %s error"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    const/4 v1, 0x0

    return-object v1
.end method

.method private performCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 80
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    const-string v0, "jarvis.dm.listening"

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

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "performCommand error "

    invoke-static {p0, v1, v0}, Lcom/xiaopeng/speech/common/util/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
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
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->addCallback(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public getSubscribeEvents()[Ljava/lang/String;
    .locals 1

    .line 91
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/speech/annotation/ICommandProcessor;->getSubscribeEvents()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .line 48
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 38
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    return v0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 65
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mCommandProcessor:Lcom/xiaopeng/speech/annotation/ICommandProcessor;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/speech/SpeechNode$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode$1;-><init>(Lcom/xiaopeng/speech/SpeechNode;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/speech/SpeechNode;->performCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSubscribe()V
    .locals 0

    .line 42
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    return-void
.end method

.method protected onUnsubscribe()V
    .locals 0

    .line 45
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
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
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    .local p1, "listener":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->removeCallback(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setSubscribed(Z)V
    .locals 1
    .param p1, "subscribed"    # Z

    .line 29
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iput-boolean p1, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/speech/SpeechNode;->mSubscribed:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechNode;->onSubscribe()V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/speech/SpeechNode;->onUnsubscribe()V

    .line 35
    :goto_0
    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "workerHandler"    # Landroid/os/Handler;

    .line 52
    .local p0, "this":Lcom/xiaopeng/speech/SpeechNode;, "Lcom/xiaopeng/speech/SpeechNode<TT;>;"
    iput-object p1, p0, Lcom/xiaopeng/speech/SpeechNode;->mWorkerHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method
