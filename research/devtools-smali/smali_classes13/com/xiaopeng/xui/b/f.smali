.class public Lcom/xiaopeng/xui/b/f;
.super Ljava/lang/Object;
.source "XSoundEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/b/f$a;
    }
.end annotation


# instance fields
.field private abm:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xui/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private abn:Z

.field private abo:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/b/f;->abm:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/b/f;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/b/f;->abo:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xui/b/f$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/xui/b/f;-><init>()V

    return-void
.end method

.method private synthetic eu(I)V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->abm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/b/e;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/xiaopeng/xui/b/e;->release()V

    .line 86
    :cond_0
    const-string v0, "release resource:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/f;->log(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private synthetic ev(I)V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/xui/b/f;->abn:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "play-not for destroy resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/f;->log(Ljava/lang/String;)V

    .line 52
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->abo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 58
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "play-not for release resource:%s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/f;->log(Ljava/lang/String;)V

    .line 60
    return-void

    .line 62
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->abm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/b/e;

    .line 64
    if-nez v0, :cond_2

    .line 65
    invoke-static {p1}, Lcom/xiaopeng/xui/b/b;->et(I)Lcom/xiaopeng/xui/b/e;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/xui/b/f;->abm:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_2
    invoke-interface {v0}, Lcom/xiaopeng/xui/b/e;->play()V

    .line 70
    return-void
.end method

.method public static synthetic lambda$NAPh5ICIAzb0xgy001mJRgzwncU(Lcom/xiaopeng/xui/b/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/f;->ev(I)V

    return-void
.end method

.method public static synthetic lambda$qvfYch_ox2x_SNilcfeUwR8kSos(Lcom/xiaopeng/xui/b/f;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/b/f;->eu(I)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 159
    const-string v0, "xpui-XSoundManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static qL()Lcom/xiaopeng/xui/b/f;
    .locals 1

    .line 38
    invoke-static {}, Lcom/xiaopeng/xui/b/f$a;->qM()Lcom/xiaopeng/xui/b/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized play(I)V
    .locals 3

    monitor-enter p0

    .line 47
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaopeng/xui/b/f;->abn:Z

    .line 48
    iget-object v1, p0, Lcom/xiaopeng/xui/b/f;->abo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/b/-$$Lambda$f$NAPh5ICIAzb0xgy001mJRgzwncU;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/b/-$$Lambda$f$NAPh5ICIAzb0xgy001mJRgzwncU;-><init>(Lcom/xiaopeng/xui/b/f;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(I)V
    .locals 3

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->abo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/b/f;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaopeng/xui/b/-$$Lambda$f$qvfYch_ox2x_SNilcfeUwR8kSos;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xui/b/-$$Lambda$f$qvfYch_ox2x_SNilcfeUwR8kSos;-><init>(Lcom/xiaopeng/xui/b/f;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
