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

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xui/sound/XSoundEffectManager$1;

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

.method public static synthetic lambda$destroy$2(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V
    .locals 5

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
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

    .line 158
    .local v3, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v3}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 161
    .end local v3    # "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    :cond_0
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

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static synthetic lambda$playLocal$0(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 6
    .param p1, "resource"    # I

    .line 93
    iget-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "play-not for destroy resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 95
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mReleaseMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 101
    .local v0, "isRelease":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    const-string v3, "play-not for release resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->log(Ljava/lang/String;)V

    .line 103
    return-void

    .line 105
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    .local v1, "time":J
    iget-object v3, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 107
    .local v3, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-nez v3, :cond_2

    .line 108
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->create(I)Lcom/xiaopeng/xui/sound/XSoundEffect;

    move-result-object v3

    .line 109
    iget-object v4, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_2
    invoke-interface {v3}, Lcom/xiaopeng/xui/sound/XSoundEffect;->play()V

    .line 113
    return-void
.end method

.method public static synthetic lambda$release$1(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 5
    .param p1, "resource"    # I

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 143
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 146
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

    .line 147
    return-void
.end method

.method public static synthetic lambda$resetResource$3(Lcom/xiaopeng/xui/sound/XSoundEffectManager;ILjava/lang/String;II)V
    .locals 5
    .param p1, "resource"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "location"    # I
    .param p4, "streamType"    # I

    .line 191
    invoke-static {p1, p2, p3, p4}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->resetResource(ILjava/lang/String;II)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 193
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
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

    .line 198
    return-void
.end method

.method public static synthetic lambda$restoreResource$4(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V
    .locals 5
    .param p1, "resource"    # I

    .line 208
    invoke-static {p1}, Lcom/xiaopeng/xui/sound/SoundEffectFactory;->restoreResource(I)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/sound/XSoundEffect;

    .line 210
    .local v0, "soundEffect":Lcom/xiaopeng/xui/sound/XSoundEffect;
    if-eqz v0, :cond_0

    .line 211
    invoke-interface {v0}, Lcom/xiaopeng/xui/sound/XSoundEffect;->release()V

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mPoolHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
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

    .line 215
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 219
    const-string/jumbo v0, "xpui-XSoundManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method private playLocal(I)V
    .locals 3
    .param p1, "resource"    # I

    .line 90
    const/4 v0, 0x0

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

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$bCpQWhKM74bwPueztuwQSwNsLTs;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$bCpQWhKM74bwPueztuwQSwNsLTs;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method private useAudioManager(I)I
    .locals 1
    .param p1, "id"    # I

    .line 117
    packed-switch p1, :pswitch_data_0

    .line 130
    const/4 v0, -0x1

    return v0

    .line 123
    :pswitch_0
    const/16 v0, 0x64

    return v0

    .line 119
    :pswitch_1
    const/16 v0, 0x65

    return v0

    .line 121
    :pswitch_2
    const/16 v0, 0x66

    return v0

    .line 125
    :pswitch_3
    const/16 v0, 0x67

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    .line 154
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mIsDestroy:Z

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$gAnWfvgV_N-93OUZ2dykrfal-MM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$gAnWfvgV_N-93OUZ2dykrfal-MM;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw v0
.end method

.method public declared-synchronized play(I)V
    .locals 2
    .param p1, "resource"    # I

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->useAudioManager(I)I

    move-result v0

    .line 53
    .local v0, "autoManagerId":I
    if-lez v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->playSoundEffect(I)V

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

    .line 51
    .end local v0    # "autoManagerId":I
    .end local p1    # "resource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized playSoundEffectByDisplay(II)V
    .locals 8
    .param p1, "resource"    # I
    .param p2, "display"    # I

    monitor-enter p0

    .line 66
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

    .line 68
    .local v0, "time":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    .local v1, "t":J
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 73
    .local v3, "cast":J
    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    .line 74
    const-string/jumbo v5, "xpui-XSoundManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playSoundEffectByDisplay not play: resource = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", displayId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", cast: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xui/utils/XLogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 78
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mSoundTimeStamp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0    # "time":Ljava/lang/Long;
    .end local v1    # "t":J
    .end local v3    # "cast":J
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->useAudioManager(I)I

    move-result v0

    .line 82
    .local v0, "autoManagerId":I
    if-lez v0, :cond_4

    .line 83
    invoke-static {}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->get()Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/xiaopeng/xui/sound/XSoundEffectManager$XAudioManager;->playSoundEffectByDisplay(II)V

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

    .line 65
    .end local v0    # "autoManagerId":I
    .end local p1    # "resource":I
    .end local p2    # "display":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .line 65
    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method

.method public declared-synchronized release(I)V
    .locals 3
    .param p1, "resource"    # I

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

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$wIXGXmGDQzq-cwWNmTR5CyWKfoQ;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$wIXGXmGDQzq-cwWNmTR5CyWKfoQ;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 139
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

    .line 177
    const/4 v0, 0x5

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->resetResource(ILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
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

    .line 190
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

    .line 199
    monitor-exit p0

    return-void

    .line 189
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

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/sound/XSoundEffectManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xVTBBr68UkEjCh3o-q9_G_PQBcY;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/sound/-$$Lambda$XSoundEffectManager$xVTBBr68UkEjCh3o-q9_G_PQBcY;-><init>(Lcom/xiaopeng/xui/sound/XSoundEffectManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 206
    .end local p1    # "resource":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xui/sound/XSoundEffectManager;
    throw p1
.end method
