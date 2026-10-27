.class public Lcom/xiaopeng/xui/sound/XSoundEffectManager;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpui-XSoundManager"


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mIsDestroy:Z

.field private mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xui/sound/XSoundEffect;",
            ">;"
        }
    .end annotation
.end field

.field private mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    .locals 1

    .line 38
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;->access$100()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$destroy$2(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V
    .locals 5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    .local v0, "time":J
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 98
    .local v3, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v3, :cond_0

    .line 99
    invoke-interface {v3}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 101
    .end local v3    # "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 103
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static synthetic lambda$play$0(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 6
    .param p1, "resource"    # I

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "play-not for destroy resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 52
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 58
    .local v0, "isRelease":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const-string v3, "play-not for release resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 60
    return-void

    .line 62
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    .local v1, "time":J
    iget-object v3, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 64
    .local v3, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-nez v3, :cond_2

    .line 65
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->create(I)Lcom/xiaopeng/xui/sound/XSoundEffect;

    move-result-object v3

    .line 66
    iget-object v4, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    invoke-interface {v3}, Lcom/xiaopeng/xui/sound/XSoundEffect;->play()V

    .line 70
    return-void
.end method

.method public static synthetic lambda$release$1(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 5
    .param p1, "resource"    # I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 83
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 86
    :cond_0
    const-string v1, "release resource:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static synthetic lambda$resetResource$3(Lcom/xiaopeng/xui/sound/XSoundEffectManager;ILjava/lang/String;II)V
    .locals 5
    .param p1, "resource"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "streamType"    # I

    .line 131
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->resetResource(ILjava/lang/String;II)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 133
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 135
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    const-string v1, "resetResource--resource:%s,path:%s,location:%s,streamType:%s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static synthetic lambda$restoreResource$4(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 5
    .param p1, "resource"    # I

    .line 148
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->restoreResource(I)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 150
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 152
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    const-string v1, "restoreResource resource:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 159
    const-string v0, "xpui-XSoundManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$gAnWfvgV_N-93OUZ2dykrfal-MM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$gAnWfvgV_N-93OUZ2dykrfal-MM;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw v0
.end method

.method public declared-synchronized play(I)V
    .locals 3
    .param p1, "resource"    # I

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$SlLZzyLmP_q9Jgw7EoPYHagmYdY;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$SlLZzyLmP_q9Jgw7EoPYHagmYdY;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 46
    .end local p1    # "resource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized release(I)V
    .locals 3
    .param p1, "resource"    # I

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$wIXGXmGDQzq-cwWNmTR5CyWKfoQ;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$wIXGXmGDQzq-cwWNmTR5CyWKfoQ;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 79
    .end local p1    # "resource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized resetResource(ILjava/lang/String;I)V
    .locals 1
    .param p1, "resource"    # I
    .param p2, "path"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "location"    # I

    monitor-enter p0

    .line 117
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->resetResource(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 116
    .end local p1    # "resource":I
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "location":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized resetResource(ILjava/lang/String;II)V
    .locals 8
    .param p1, "resource"    # I
    .param p2, "path"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "location"    # I
    .param p4, "streamType"    # I

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zBcAqtI6-Ez0rykCABVb4QC0jtQ;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zBcAqtI6-Ez0rykCABVb4QC0jtQ;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;ILjava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 129
    .end local p1    # "resource":I
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "location":I
    .end local p4    # "streamType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized restoreResource(I)V
    .locals 2
    .param p1, "resource"    # I

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xVTBBr68UkEjCh3o-q9_G_PQBcY;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xVTBBr68UkEjCh3o-q9_G_PQBcY;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 146
    .end local p1    # "resource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method
