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
    .locals 0
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
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getNode(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechNode;

    move-result-object p1

    return-object p1
.end method

.method public getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;
    .locals 0
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
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->getQuery(Ljava/lang/Class;)Lcom/xiaopeng/speech/SpeechQuery;

    move-result-object p1

    return-object p1
.end method

.method public sendActor(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->sendActor(Lcom/xiaopeng/speech/actor/Actor;)V

    return-void
.end method

.method public speak(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->speak(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 0
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
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    return-void
.end method

.method public subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V
    .locals 0
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
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->subscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/IQueryCaller;)V

    return-void
.end method

.method public triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-static {p1}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->unsubscribe(Ljava/lang/Class;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V
    .locals 0
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
    invoke-static {p1, p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->unsubscribe(Ljava/lang/Class;Lcom/xiaopeng/speech/INodeListener;)V

    return-void
.end method
