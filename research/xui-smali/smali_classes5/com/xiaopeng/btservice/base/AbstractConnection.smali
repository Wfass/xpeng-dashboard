.class public abstract Lcom/xiaopeng/btservice/base/AbstractConnection;
.super Ljava/lang/Object;
.source "AbstractConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;
    }
.end annotation


# instance fields
.field private mToDoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/btservice/base/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public onConnected(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 0
    .param p1, "nForeService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/btservice/base/AbstractConnection;->register(Lcom/nforetek/bt/aidl/UiCommand;)V

    .line 29
    invoke-virtual {p0}, Lcom/xiaopeng/btservice/base/AbstractConnection;->work()V

    .line 30
    return-void
.end method

.method public abstract onDisconnected()V
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Runnable;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public abstract register(Lcom/nforetek/bt/aidl/UiCommand;)V
.end method

.method public abstract registerConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V
.end method

.method remove(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Runnable;

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public abstract unRegister()V
.end method

.method public abstract unregisterConnecteCompletedCallback(Lcom/xiaopeng/btservice/base/AbstractConnection$ConnecteCompletedCallback;)V
.end method

.method work()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/btservice/base/AbstractConnection;->mToDoList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 40
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method
