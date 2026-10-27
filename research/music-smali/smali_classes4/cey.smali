.class public Lcey;
.super Ljava/lang/Object;
.source "CommsCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:Ljava/lang/String; = "cey"

.field private static final c:Lcgw;


# instance fields
.field public a:Z

.field private d:Lcej;

.field private e:Lcek;

.field private f:Ljava/util/Hashtable;

.field private g:Lcew;

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Vector;

.field private j:Z

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Thread;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Object;

.field private o:Lcex;

.field private p:Z

.field private q:Ljava/lang/String;

.field private final r:Ljava/util/concurrent/Semaphore;

.field private s:Ljava/util/concurrent/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget-object v0, Lcey;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcey;->c:Lcgw;

    return-void
.end method

.method constructor <init>(Lcew;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcey;->a:Z

    .line 60
    iput-boolean v0, p0, Lcey;->j:Z

    .line 61
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcey;->k:Ljava/lang/Object;

    .line 63
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcey;->m:Ljava/lang/Object;

    .line 64
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcey;->n:Ljava/lang/Object;

    .line 66
    iput-boolean v0, p0, Lcey;->p:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    .line 72
    iput-object p1, p0, Lcey;->g:Lcew;

    .line 73
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcey;->h:Ljava/util/Vector;

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcey;->i:Ljava/util/Vector;

    .line 75
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcey;->f:Ljava/util/Hashtable;

    .line 76
    sget-object v0, Lcey;->c:Lcgw;

    invoke-virtual {p1}, Lcew;->h()Lcee;

    move-result-object p1

    invoke-interface {p1}, Lcee;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcgm;)V
    .locals 8

    .line 397
    invoke-virtual {p1}, Lcgm;->g()Ljava/lang/String;

    move-result-object v0

    .line 400
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 401
    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v6, "handleMessage"

    const-string v7, "713"

    .line 400
    invoke-interface {v1, v2, v6, v7, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    invoke-virtual {p1}, Lcgm;->j()I

    move-result v1

    .line 403
    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v2

    .line 402
    invoke-virtual {p0, v0, v1, v2}, Lcey;->a(Ljava/lang/String;ILcep;)Z

    .line 405
    iget-boolean v0, p0, Lcey;->p:Z

    if-nez v0, :cond_1

    .line 406
    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v0

    invoke-virtual {v0}, Lcep;->c()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 407
    iget-object v0, p0, Lcey;->g:Lcew;

    new-instance v1, Lcgi;

    invoke-direct {v1, p1}, Lcgi;-><init>(Lcgm;)V

    .line 408
    new-instance p1, Lceu;

    iget-object v2, p0, Lcey;->g:Lcew;

    invoke-virtual {v2}, Lcew;->h()Lcee;

    move-result-object v2

    invoke-interface {v2}, Lcee;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lceu;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, v1, p1}, Lcew;->a(Lcgs;Lceu;)V

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v0

    invoke-virtual {v0}, Lcep;->c()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 410
    iget-object v0, p0, Lcey;->g:Lcew;

    invoke-virtual {v0, p1}, Lcew;->a(Lcgm;)V

    .line 411
    new-instance v0, Lcgj;

    invoke-direct {v0, p1}, Lcgj;-><init>(Lcgm;)V

    .line 412
    iget-object p1, p0, Lcey;->g:Lcew;

    new-instance v1, Lceu;

    .line 413
    invoke-virtual {p1}, Lcew;->h()Lcee;

    move-result-object v2

    invoke-interface {v2}, Lcee;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lceu;-><init>(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1, v0, v1}, Lcew;->a(Lcgs;Lceu;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lceu;)V
    .locals 8

    .line 238
    monitor-enter p1

    .line 240
    :try_start_0
    sget-object v0, Lcey;->c:Lcgw;

    sget-object v1, Lcey;->b:Ljava/lang/String;

    const-string v2, "handleActionComplete"

    const-string v3, "705"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lceu;->a:Lcfn;

    invoke-virtual {v7}, Lcfn;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v0, v1, v2, v3, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p1}, Lceu;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcey;->o:Lcex;

    invoke-virtual {v0, p1}, Lcex;->a(Lceu;)V

    .line 249
    :cond_0
    iget-object v0, p1, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->g()V

    .line 251
    iget-object v0, p1, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->p()Z

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcey;->d:Lcej;

    if-eqz v0, :cond_1

    .line 255
    instance-of v0, p1, Lcen;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p1}, Lceu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcey;->d:Lcej;

    move-object v1, p1

    check-cast v1, Lcen;

    invoke-interface {v0, v1}, Lcej;->deliveryComplete(Lcef;)V

    .line 260
    :cond_1
    invoke-virtual {p0, p1}, Lcey;->a(Lceu;)V

    .line 264
    :cond_2
    invoke-virtual {p1}, Lceu;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    instance-of v0, p1, Lcen;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lceu;->d()Lced;

    move-result-object v0

    instance-of v0, v0, Lced;

    if-eqz v0, :cond_4

    .line 266
    :cond_3
    iget-object v0, p1, Lceu;->a:Lcfn;

    invoke-virtual {v0, v4}, Lcfn;->a(Z)V

    .line 238
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 110
    iget-object v0, p0, Lcey;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcey;->s:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcey;->s:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 114
    :cond_0
    iget-boolean v1, p0, Lcey;->a:Z

    if-eqz v1, :cond_1

    .line 116
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "700"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcey;->a:Z

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcey;->l:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_1

    .line 120
    :try_start_1
    iget-object v1, p0, Lcey;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    :try_start_2
    sget-object v2, Lcey;->c:Lcgw;

    sget-object v3, Lcey;->b:Ljava/lang/String;

    const-string v4, "stop"

    const-string v5, "701"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v2, p0, Lcey;->m:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 120
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 130
    :try_start_7
    iget-object v2, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 131
    throw v1

    .line 130
    :catch_0
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 134
    iput-object v1, p0, Lcey;->l:Ljava/lang/Thread;

    .line 136
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "703"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method public a(Lcej;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcey;->d:Lcej;

    return-void
.end method

.method public a(Lcek;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcey;->e:Lcek;

    return-void
.end method

.method public a(Lceo;)V
    .locals 7

    const-string v0, "connectionLost"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 289
    :try_start_0
    iget-object v3, p0, Lcey;->d:Lcej;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 291
    sget-object v3, Lcey;->c:Lcgw;

    sget-object v4, Lcey;->b:Ljava/lang/String;

    const-string v5, "708"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-interface {v3, v4, v0, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    iget-object v3, p0, Lcey;->d:Lcej;

    invoke-interface {v3, p1}, Lcej;->connectionLost(Ljava/lang/Throwable;)V

    .line 294
    :cond_0
    iget-object v3, p0, Lcey;->e:Lcek;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 295
    iget-object v3, p0, Lcey;->e:Lcek;

    invoke-interface {v3, p1}, Lcek;->connectionLost(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 301
    sget-object v3, Lcey;->c:Lcgw;

    sget-object v4, Lcey;->b:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "720"

    invoke-interface {v3, v4, v0, p1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lceu;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 315
    invoke-virtual {p1}, Lceu;->d()Lced;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Lceu;->b()Lceo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "716"

    const-string v5, "fireActionEvent"

    if-nez v1, :cond_0

    .line 319
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v6, Lcey;->b:Ljava/lang/String;

    .line 320
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p1, Lceu;->a:Lcfn;

    invoke-virtual {v7}, Lcfn;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 319
    invoke-interface {v1, v6, v5, v4, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-interface {v0, p1}, Lced;->onSuccess(Lceh;)V

    goto :goto_0

    .line 324
    :cond_0
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v6, Lcey;->b:Ljava/lang/String;

    .line 325
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p1, Lceu;->a:Lcfn;

    invoke-virtual {v7}, Lcfn;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    .line 324
    invoke-interface {v1, v6, v5, v4, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    invoke-virtual {p1}, Lceu;->b()Lceo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lced;->onFailure(Lceh;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcex;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcey;->o:Lcex;

    return-void
.end method

.method public a(Lcgm;)V
    .locals 5

    .line 342
    iget-object v0, p0, Lcey;->d:Lcej;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcey;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 347
    :cond_0
    iget-object v0, p0, Lcey;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcey;->a:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcey;->j:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    :try_start_1
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const-string v3, "messageArrived"

    const-string v4, "709"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcey;->n:Ljava/lang/Object;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 347
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 357
    iget-boolean v0, p0, Lcey;->j:Z

    if-nez v0, :cond_3

    .line 358
    iget-object v0, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 360
    iget-object p1, p0, Lcey;->m:Ljava/lang/Object;

    monitor-enter p1

    .line 362
    :try_start_3
    sget-object v0, Lcey;->c:Lcgw;

    sget-object v1, Lcey;->b:Ljava/lang/String;

    const-string v2, "messageArrived"

    const-string v3, "710"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcey;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 360
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 347
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcey;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 89
    iput-object p1, p0, Lcey;->q:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcey;->k:Ljava/lang/Object;

    monitor-enter p1

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcey;->a:Z

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 95
    iget-object v0, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcey;->a:Z

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcey;->j:Z

    .line 99
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lcey;->s:Ljava/util/concurrent/Future;

    .line 90
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected a(Ljava/lang/String;ILcep;)Z
    .locals 5

    .line 486
    iget-object v0, p0, Lcey;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 497
    iget-object v0, p0, Lcey;->d:Lcej;

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {p3, p2}, Lcep;->c(I)V

    .line 499
    iget-object p2, p0, Lcey;->d:Lcej;

    invoke-interface {p2, p1, p3}, Lcej;->messageArrived(Ljava/lang/String;Lcep;)V

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    .line 488
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 489
    invoke-static {v3, p1}, Lcev;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    invoke-virtual {p3, p2}, Lcep;->c(I)V

    .line 491
    iget-object v2, p0, Lcey;->f:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceg;

    invoke-interface {v2, p1, p3}, Lceg;->a(Ljava/lang/String;Lcep;)V

    move v2, v1

    goto :goto_0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x1

    .line 376
    iput-boolean v0, p0, Lcey;->j:Z

    .line 377
    iget-object v0, p0, Lcey;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 379
    :try_start_0
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const-string v3, "quiesce"

    const-string v4, "711"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v1, p0, Lcey;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 377
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lceu;)V
    .locals 7

    .line 434
    iget-boolean v0, p0, Lcey;->a:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcey;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const-string v3, "asyncOperationComplete"

    const-string v4, "715"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object p1, p1, Lceu;->a:Lcfn;

    invoke-virtual {p1}, Lcfn;->o()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-object p1, p0, Lcey;->m:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 437
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 445
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcey;->c(Lceu;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 450
    sget-object v1, Lcey;->c:Lcgw;

    sget-object v2, Lcey;->b:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v3, "asyncOperationComplete"

    const-string v4, "719"

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 453
    iget-object v0, p0, Lcey;->g:Lcew;

    const/4 v1, 0x0

    new-instance v2, Lceo;

    invoke-direct {v2, p1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1, v2}, Lcew;->a(Lceu;Lceo;)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcey;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected d()Ljava/lang/Thread;
    .locals 1

    .line 464
    iget-object v0, p0, Lcey;->l:Ljava/lang/Thread;

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcey;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public run()V
    .locals 9

    .line 154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcey;->l:Ljava/lang/Thread;

    .line 155
    iget-object v0, p0, Lcey;->l:Ljava/lang/Thread;

    iget-object v1, p0, Lcey;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 164
    :goto_0
    iget-boolean v1, p0, Lcey;->a:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 168
    :try_start_1
    iget-object v2, p0, Lcey;->m:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    iget-boolean v3, p0, Lcey;->a:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    iget-object v3, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lcey;->c:Lcgw;

    sget-object v4, Lcey;->b:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "704"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v3, p0, Lcey;->m:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 168
    :cond_1
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 179
    :catch_1
    :goto_1
    :try_start_4
    iget-boolean v2, p0, Lcey;->a:Z

    if-eqz v2, :cond_5

    .line 182
    iget-object v2, p0, Lcey;->i:Ljava/util/Vector;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 183
    :try_start_5
    iget-object v3, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    iget-object v3, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lceu;

    .line 186
    iget-object v4, p0, Lcey;->i:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 182
    :goto_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_3

    .line 190
    :try_start_6
    invoke-direct {p0, v3}, Lcey;->c(Lceu;)V

    .line 195
    :cond_3
    iget-object v2, p0, Lcey;->h:Ljava/util/Vector;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 196
    :try_start_7
    iget-object v3, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 200
    iget-object v3, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcgm;

    .line 202
    iget-object v4, p0, Lcey;->h:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_3

    :cond_4
    move-object v3, v1

    .line 195
    :goto_3
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_5

    .line 206
    :try_start_8
    invoke-direct {p0, v3}, Lcey;->b(Lcgm;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    :catchall_2
    move-exception v3

    .line 195
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_3
    move-exception v3

    .line 182
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v3

    .line 210
    :cond_5
    :goto_4
    iget-boolean v2, p0, Lcey;->j:Z

    if-eqz v2, :cond_6

    .line 211
    iget-object v2, p0, Lcey;->o:Lcex;

    invoke-virtual {v2}, Lcex;->f()Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 222
    :cond_6
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 223
    iget-object v1, p0, Lcey;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_d
    sget-object v2, Lcey;->c:Lcgw;

    sget-object v3, Lcey;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcey;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 218
    :goto_5
    :try_start_e
    sget-object v3, Lcey;->c:Lcgw;

    sget-object v4, Lcey;->b:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "714"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 219
    iput-boolean v0, p0, Lcey;->a:Z

    .line 220
    iget-object v3, p0, Lcey;->g:Lcew;

    new-instance v4, Lceo;

    invoke-direct {v4, v2}, Lceo;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1, v4}, Lcew;->a(Lceu;Lceo;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 222
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 223
    iget-object v1, p0, Lcey;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_f
    sget-object v2, Lcey;->c:Lcgw;

    sget-object v3, Lcey;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcey;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v0

    .line 222
    :goto_6
    iget-object v1, p0, Lcey;->r:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 223
    iget-object v1, p0, Lcey;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_10
    sget-object v2, Lcey;->c:Lcgw;

    sget-object v3, Lcey;->b:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "706"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcey;->n:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 223
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 231
    throw v0

    :catchall_6
    move-exception v0

    .line 223
    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v0

    .line 160
    :catch_2
    iput-boolean v0, p0, Lcey;->a:Z

    return-void
.end method
