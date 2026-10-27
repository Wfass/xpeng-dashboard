.class public Lcom/xiaopeng/appstore/storeprovider/d;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/d$b;,
        Lcom/xiaopeng/appstore/storeprovider/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaopeng/appstore/storeprovider/d;

.field private static g:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/ServiceConnection;

.field private volatile c:Z

.field private final d:Ljava/lang/Object;

.field private volatile e:Z

.field private f:Landroid/content/Context;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/xiaopeng/appstore/storeprovider/c;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/appstore/storeprovider/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/d$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/d$1;-><init>(Lcom/xiaopeng/appstore/storeprovider/d;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->b:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    .line 76
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->k:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->l:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$SajlAf3qYgAJWgYyPDd48EUM67Y;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$SajlAf3qYgAJWgYyPDd48EUM67Y;-><init>(Lcom/xiaopeng/appstore/storeprovider/d;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->m:Ljava/lang/Runnable;

    .line 91
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$eBC3pBa1bfPWtMsd-Zni74tRU14;

    invoke-direct {v0, p0}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$eBC3pBa1bfPWtMsd-Zni74tRU14;-><init>(Lcom/xiaopeng/appstore/storeprovider/d;)V

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/appstore/storeprovider/d;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->h:Landroid/os/Handler;

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/appstore/storeprovider/d;
    .locals 2

    .line 38
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/d;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/xiaopeng/appstore/storeprovider/d;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/d;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-direct {v1}, Lcom/xiaopeng/appstore/storeprovider/d;-><init>()V

    sput-object v1, Lcom/xiaopeng/appstore/storeprovider/d;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/d;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    return-object v0
.end method

.method private a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "StoreProviderManager"

    const-string v1, "executeWaitConnected"

    .line 451
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    if-eqz v1, :cond_1

    .line 454
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "StoreProviderManager"

    const-string v3, "executeWaitConnected: already connected"

    .line 461
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 455
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    if-nez v1, :cond_2

    .line 456
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->d()V

    .line 459
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->e()Z

    move-result v1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 464
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 466
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 468
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "StoreProviderManager"

    .line 469
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executeWaitConnected error, callback ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "StoreProviderManager"

    const-string v1, "executeWaitConnected error: bindService fail"

    .line 472
    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->g()V

    .line 475
    :goto_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 476
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 5

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->i()V

    .line 254
    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/c$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/c;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->l:Ljava/lang/Object;

    monitor-enter p1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "StoreProviderManager"

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register remote callback in init:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    iget v3, v1, Lcom/xiaopeng/appstore/storeprovider/d$a;->c:I

    iget-object v4, v1, Lcom/xiaopeng/appstore/storeprovider/d$a;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaopeng/appstore/storeprovider/d$a;->a:Lcom/xiaopeng/appstore/storeprovider/d$b;

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/appstore/storeprovider/c;->a(ILjava/lang/String;Lcom/xiaopeng/appstore/storeprovider/b;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StoreProviderManager"

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init, registerCallback ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->f()V

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: service END:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 267
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaopeng/appstore/storeprovider/d;Landroid/os/IBinder;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 3

    const-string v0, "StoreProviderManager"

    .line 314
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    if-eqz v1, :cond_2

    .line 316
    :try_start_0
    instance-of v2, p1, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    if-eqz v2, :cond_0

    .line 317
    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;

    invoke-interface {v1, p2, p1}, Lcom/xiaopeng/appstore/storeprovider/c;->a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/EnqueueRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1

    .line 318
    :cond_0
    instance-of v2, p1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    if-eqz v2, :cond_1

    .line 319
    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;

    invoke-interface {v1, p2, p1}, Lcom/xiaopeng/appstore/storeprovider/c;->a(Ljava/lang/String;Lcom/xiaopeng/appstore/storeprovider/SimpleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1

    .line 321
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble: not support request:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble ex:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/appstore/storeprovider/d;)Ljava/lang/Runnable;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    if-nez v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->d()V

    goto :goto_0

    :cond_0
    const-string v1, "StoreProviderManager"

    const-string v2, "tryToBind: bind already."

    .line 174
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unbindService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->b:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private c()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->h()V

    goto :goto_0

    :cond_0
    const-string v1, "StoreProviderManager"

    const-string v2, "tryToRelease: not connected."

    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", pn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.xiaopeng.resourceservice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StoreProviderManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->i()V

    const/4 v1, 0x1

    .line 194
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    .line 195
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.xiaopeng.appstore.resourceservice.ResourceServiceV2"

    .line 196
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/d;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private e()Z
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 226
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    const-wide/32 v2, 0xafc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "StoreProviderManager"

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitConnected ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 232
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 233
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private f()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 238
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    const/4 v1, 0x1

    .line 239
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 241
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private g()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 246
    :try_start_0
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->c:Z

    .line 247
    iput-boolean v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->e:Z

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private h()V
    .locals 5

    const-string v0, "StoreProviderManager"

    const-string v1, "release"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/d$a;

    .line 277
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregister remote callback in release:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v3, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    iget-object v2, v2, Lcom/xiaopeng/appstore/storeprovider/d$a;->a:Lcom/xiaopeng/appstore/storeprovider/d$b;

    invoke-interface {v3, v2}, Lcom/xiaopeng/appstore/storeprovider/c;->a(Lcom/xiaopeng/appstore/storeprovider/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release, unregisterAssembleListener ex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaopeng/appstore/storeprovider/d;->b(Landroid/content/Context;)V

    .line 286
    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->g()V

    const/4 v1, 0x0

    .line 287
    iput-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->j:Lcom/xiaopeng/appstore/storeprovider/c;

    const-string v1, "release end"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private i()V
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initialize(Context context) should be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$SajlAf3qYgAJWgYyPDd48EUM67Y(Lcom/xiaopeng/appstore/storeprovider/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->b()V

    return-void
.end method

.method public static synthetic lambda$eBC3pBa1bfPWtMsd-Zni74tRU14(Lcom/xiaopeng/appstore/storeprovider/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/appstore/storeprovider/d;->c()V

    return-void
.end method

.method public static synthetic lambda$wObxd3SbJNyCveoBZ4yijp2yva4(Lcom/xiaopeng/appstore/storeprovider/d;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/d;->b(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 1

    .line 307
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/d;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)Lcom/xiaopeng/appstore/storeprovider/AssembleResult;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assemble start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calling:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StoreProviderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$wObxd3SbJNyCveoBZ4yijp2yva4;-><init>(Lcom/xiaopeng/appstore/storeprovider/d;Lcom/xiaopeng/appstore/storeprovider/AssembleRequest;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/appstore/storeprovider/AssembleResult;

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->i:Landroid/os/HandlerThread;

    const-string v1, "StoreProviderManager"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already initialized! Old:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize, ctx:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "2.0.0.10-SNAPSHOT"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "xpdev"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "8808120a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "2023/03/13 17:47:32"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->f:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/xiaopeng/appstore/storeprovider/d;->g:Ljava/lang/String;

    .line 105
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->i:Landroid/os/HandlerThread;

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 107
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d;->h:Landroid/os/Handler;

    return-void
.end method
