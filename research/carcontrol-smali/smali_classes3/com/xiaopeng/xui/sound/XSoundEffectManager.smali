.class public Lcom/xiaopeng/xui/sound/XSoundEffectManager;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;,
        Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;
    }
.end annotation


# static fields
.field private static final PLAY_INTERVAL:I = 0x64

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

.field private mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    .locals 1

    .line 43
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$SingletonHolder;->access$100()Lcom/xiaopeng/xui/sound/XSoundEffectManager;

    move-result-object v0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "xpui-XSoundManager"

    .line 219
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private playLocal(I)V
    .locals 3

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    .line 91
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$huGJR5ZOzeh1S69x-AbXgHZTsuw;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$huGJR5ZOzeh1S69x-AbXgHZTsuw;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private useAudioManager(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/16 p1, 0x64

    return p1

    :cond_1
    const/16 p1, 0x65

    return p1

    :cond_2
    const/16 p1, 0x66

    return p1

    :cond_3
    const/16 p1, 0x67

    return p1
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 154
    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$jJ-CPGjWuwske6TDKYuJyluIjmE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$jJ-CPGjWuwske6TDKYuJyluIjmE;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$destroy$2$XSoundEffectManager()V
    .locals 5

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/sound/XSoundEffect;

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v3}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    goto :goto_0

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 163
    iget-object v2, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$playLocal$0$XSoundEffectManager(I)V
    .locals 4

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "play-not for destroy resource:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "play-not for release resource:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void

    .line 105
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    if-nez v0, :cond_2

    .line 108
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->create(I)Lcom/xiaopeng/xui/sound/XSoundEffect;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->play()V

    return-void
.end method

.method public synthetic lambda$release$1$XSoundEffectManager(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "release resource:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$resetResource$3$XSoundEffectManager(ILjava/lang/String;II)V
    .locals 2

    .line 191
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->resetResource(ILjava/lang/String;II)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p1

    const-string p1, "resetResource--resource:%s,path:%s,location:%s,streamType:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$restoreResource$4$XSoundEffectManager(I)V
    .locals 2

    .line 208
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->restoreResource(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "restoreResource resource:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized play(I)V
    .locals 1

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->useAudioManager(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playLocal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playSoundEffectByDisplay(II)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    const-string/jumbo v0, "xpui-XSoundManager"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playSoundEffectByDisplay not play: resource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", displayId = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", cast: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->useAudioManager(I)I

    move-result v0

    if-lez v0, :cond_4

    .line 83
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->playSoundEffectByDisplay(II)V

    goto :goto_1

    .line 85
    :cond_4
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->playLocal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(I)V
    .locals 3

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$8Wd81vpyuA-X8mGVcrX3xX1SDRo;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$8Wd81vpyuA-X8mGVcrX3xX1SDRo;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetResource(ILjava/lang/String;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    .line 177
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->resetResource(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetResource(ILjava/lang/String;II)V
    .locals 8

    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$zG7Nx8cWSQRLaBCfVwA7fqBp5YA;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;ILjava/lang/String;II)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized restoreResource(I)V
    .locals 2

    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xMqojCGb_wGqPP-iwnFxA7uh2Ko;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
