.class public Lcez;
.super Ljava/lang/Object;
.source "CommsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "cez"

.field private static final b:Lcgw;


# instance fields
.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcex;

.field private f:Lcew;

.field private g:Lcgd;

.field private h:Lcfb;

.field private i:Ljava/lang/Thread;

.field private volatile j:Z

.field private final k:Ljava/util/concurrent/Semaphore;

.field private l:Ljava/lang/String;

.field private m:Ljava/util/concurrent/Future;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    sget-object v0, Lcez;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcez;->b:Lcgw;

    return-void
.end method

.method public constructor <init>(Lcew;Lcex;Lcfb;Ljava/io/InputStream;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcez;->c:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcez;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcez;->e:Lcex;

    .line 45
    iput-object v0, p0, Lcez;->f:Lcew;

    .line 47
    iput-object v0, p0, Lcez;->h:Lcfb;

    .line 48
    iput-object v0, p0, Lcez;->i:Ljava/lang/Thread;

    .line 50
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    .line 56
    new-instance v0, Lcgd;

    invoke-direct {v0, p2, p4}, Lcgd;-><init>(Lcex;Ljava/io/InputStream;)V

    iput-object v0, p0, Lcez;->g:Lcgd;

    .line 57
    iput-object p1, p0, Lcez;->f:Lcew;

    .line 58
    iput-object p2, p0, Lcez;->e:Lcex;

    .line 59
    iput-object p3, p0, Lcez;->h:Lcfb;

    .line 60
    sget-object p2, Lcez;->b:Lcgw;

    invoke-virtual {p1}, Lcew;->h()Lcee;

    move-result-object p1

    invoke-interface {p1}, Lcee;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcez;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcez;->m:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcez;->m:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 91
    :cond_0
    sget-object v1, Lcez;->b:Lcgw;

    sget-object v2, Lcez;->a:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "850"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-boolean v1, p0, Lcez;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcez;->c:Z

    .line 94
    iput-boolean v1, p0, Lcez;->j:Z

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcez;->i:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 98
    :try_start_1
    iget-object v1, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :try_start_2
    iget-object v1, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 103
    throw v1

    .line 102
    :catch_0
    iget-object v1, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    goto :goto_0

    .line 86
    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcez;->i:Ljava/lang/Thread;

    .line 109
    sget-object v0, Lcez;->b:Lcgw;

    sget-object v1, Lcez;->a:Ljava/lang/String;

    const-string v2, "stop"

    const-string v3, "851"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 86
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 69
    iput-object p1, p0, Lcez;->l:Ljava/lang/String;

    .line 72
    sget-object p1, Lcez;->b:Lcgw;

    sget-object v0, Lcez;->a:Ljava/lang/String;

    const-string v1, "start"

    const-string v2, "855"

    invoke-interface {p1, v0, v1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcez;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcez;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcez;->c:Z

    .line 76
    invoke-interface {p2, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p2

    iput-object p2, p0, Lcez;->m:Ljava/util/concurrent/Future;

    .line 73
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

.method public run()V
    .locals 9

    .line 116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcez;->i:Ljava/lang/Thread;

    .line 117
    iget-object v0, p0, Lcez;->i:Ljava/lang/Thread;

    iget-object v1, p0, Lcez;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    .line 128
    :goto_0
    iget-boolean v2, p0, Lcez;->c:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcez;->g:Lcgd;

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 131
    :cond_0
    :try_start_1
    sget-object v2, Lcez;->b:Lcgw;

    sget-object v3, Lcez;->a:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "852"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcez;->g:Lcgd;

    invoke-virtual {v2}, Lcgd;->available()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcez;->j:Z

    .line 133
    iget-object v2, p0, Lcez;->g:Lcgd;

    invoke-virtual {v2}, Lcgd;->a()Lcgs;

    move-result-object v2

    .line 134
    iput-boolean v0, p0, Lcez;->j:Z

    .line 137
    instance-of v3, v2, Lcfz;

    if-eqz v3, :cond_5

    .line 138
    iget-object v3, p0, Lcez;->h:Lcfb;

    invoke-virtual {v3, v2}, Lcfb;->a(Lcgs;)Lceu;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 140
    monitor-enter v1
    :try_end_1
    .catch Lceo; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    iget-object v3, p0, Lcez;->e:Lcex;

    check-cast v2, Lcfz;

    invoke-virtual {v3, v2}, Lcex;->a(Lcfz;)V

    .line 140
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 147
    :cond_2
    instance-of v3, v2, Lcgk;

    if-nez v3, :cond_4

    instance-of v3, v2, Lcgj;

    if-nez v3, :cond_4

    instance-of v2, v2, Lcgi;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 156
    :cond_3
    new-instance v2, Lceo;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lceo;-><init>(I)V

    throw v2

    .line 152
    :cond_4
    :goto_2
    sget-object v2, Lcez;->b:Lcgw;

    sget-object v3, Lcez;->a:Ljava/lang/String;

    const-string v4, "run"

    const-string v5, "857"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 161
    iget-object v3, p0, Lcez;->e:Lcex;

    invoke-virtual {v3, v2}, Lcex;->d(Lcgs;)V
    :try_end_3
    .catch Lceo; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v2

    .line 174
    :try_start_4
    sget-object v3, Lcez;->b:Lcgw;

    sget-object v4, Lcez;->a:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "853"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iput-boolean v0, p0, Lcez;->c:Z

    .line 180
    iget-object v3, p0, Lcez;->f:Lcew;

    invoke-virtual {v3}, Lcew;->d()Z

    move-result v3

    if-nez v3, :cond_6

    .line 181
    iget-object v3, p0, Lcez;->f:Lcew;

    new-instance v4, Lceo;

    const/16 v5, 0x7d6d

    invoke-direct {v4, v5, v2}, Lceo;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v3, v1, v4}, Lcew;->a(Lceu;Lceo;)V

    goto :goto_3

    :catch_1
    move-exception v2

    .line 167
    sget-object v3, Lcez;->b:Lcgw;

    sget-object v4, Lcez;->a:Ljava/lang/String;

    const-string v5, "run"

    const-string v6, "856"

    const/4 v7, 0x0

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 168
    iput-boolean v0, p0, Lcez;->c:Z

    .line 170
    iget-object v3, p0, Lcez;->f:Lcew;

    invoke-virtual {v3, v1, v2}, Lcew;->a(Lceu;Lceo;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    :cond_6
    :goto_3
    iput-boolean v0, p0, Lcez;->j:Z

    .line 186
    iget-object v2, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 185
    :goto_4
    iput-boolean v0, p0, Lcez;->j:Z

    .line 186
    iget-object v0, p0, Lcez;->k:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 187
    throw v1

    .line 191
    :cond_7
    :goto_5
    sget-object v0, Lcez;->b:Lcgw;

    sget-object v1, Lcez;->a:Ljava/lang/String;

    const-string v2, "run"

    const-string v3, "854"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :catch_2
    iput-boolean v0, p0, Lcez;->c:Z

    return-void
.end method
