.class public Lcom/xiaopeng/speech/common/util/SimpleCallbackList;
.super Ljava/lang/Object;
.source "SimpleCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public collectCallbacks()[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 36
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public size()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
