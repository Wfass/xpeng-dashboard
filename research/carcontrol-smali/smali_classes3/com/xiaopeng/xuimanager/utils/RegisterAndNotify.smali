.class public Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;
.super Ljava/lang/Object;
.source "RegisterAndNotify.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "T",
            "Listener;",
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final declared-synchronized getListenerCount()I
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "T",
            "Listener;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onFirstRegistered()V
    .locals 0

    return-void
.end method

.method protected onLastUnRegistered()V
    .locals 0

    return-void
.end method

.method public declared-synchronized register(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->onFirstRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 48
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 37
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not register null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotify;->onLastUnRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 56
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not unregister null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
