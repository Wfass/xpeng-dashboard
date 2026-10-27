.class public Lcom/xiaopeng/speech/protocol/SpeechModel;
.super Ljava/lang/Object;
.source "SpeechModel.java"


# instance fields
.field protected mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/SpeechModel;->mMainHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 99
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object v0

    return-object v0
.end method

.method public getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 110
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object v0

    return-object v0
.end method

.method public sendActor(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/xiaopeng/speech/actor/Actor;

    .line 65
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->sendActor(Lcom/xiaopeng/speech/actor/Actor;)V

    .line 66
    return-void
.end method

.method public speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/xiaopeng/speech/INodeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 27
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 28
    return-void
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 0
    .param p2, "queryCaller"    # Lcom/xiaopeng/speech/IQueryCaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;",
            "Lcom/xiaopeng/speech/IQueryCaller;",
            ")V"
        }
    .end annotation

    .line 47
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    .line 48
    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "skill"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "intent"    # Ljava/lang/String;
    .param p4, "slots"    # Ljava/lang/String;

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public unsubscribe(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechQuery;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "queryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechQuery;>;"
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->unsubscribe(Ljava/lang/Class;)V

    .line 57
    return-void
.end method

.method public unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/xiaopeng/speech/INodeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/speech/SpeechNode;",
            ">;",
            "Lcom/xiaopeng/speech/INodeListener;",
            ")V"
        }
    .end annotation

    .line 37
    .local p1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/xiaopeng/speech/SpeechNode;>;"
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    .line 38
    return-void
.end method
