.class public abstract Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;
.super Ljava/lang/Object;
.source "RegisterAndNotifyWithMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Listener:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final map:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TKey;",
            "Ljava/util/ArrayList<",
            "T",
            "Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic lambda$register$0(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized getListenerCount()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v2

    goto :goto_0

    .line 36
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getListeners(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Ljava/util/List<",
            "T",
            "Listener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 24
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "can not register key=null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected onFirstRegistered()V
    .locals 0

    return-void
.end method

.method protected onLastUnRegistered()V
    .locals 0

    return-void
.end method

.method public declared-synchronized register(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->getListenerCount()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    sget-object v2, Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;->INSTANCE:Lcom/xiaopeng/xuimanager/utils/-$$Lambda$RegisterAndNotifyWithMap$0_IgZk5bT-JUFOgeJWRw1A4R5Xw;

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    .line 62
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 65
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->onFirstRegistered()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    :cond_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    if-nez v0, :cond_1

    .line 65
    :try_start_3
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->onFirstRegistered()V

    .line 67
    :cond_1
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    const/4 p1, 0x0

    .line 69
    monitor-exit p0

    return p1

    .line 55
    :cond_3
    :try_start_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can not register listener=null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can not register key=null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregister(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;T",
            "Listener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 85
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->getListenerCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/utils/RegisterAndNotifyWithMap;->onLastUnRegistered()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_1
    monitor-exit p0

    return p2

    :cond_2
    const/4 p1, 0x0

    .line 96
    monitor-exit p0

    return p1

    .line 80
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can not unregister listener=null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "can not unregister key=null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
