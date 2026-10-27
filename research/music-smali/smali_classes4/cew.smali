.class public Lcew;
.super Ljava/lang/Object;
.source "ClientComms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcew$a;,
        Lcew$b;,
        Lcew$c;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "${project.version}"

.field public static b:Ljava/lang/String; = "L${build.level}"

.field private static final c:Ljava/lang/String; = "cew"

.field private static final d:Lcgw;


# instance fields
.field private e:Lcee;

.field private f:I

.field private g:[Lcfj;

.field private h:Lcez;

.field private i:Lcfa;

.field private j:Lcey;

.field private k:Lcex;

.field private l:Lcem;

.field private m:Lcel;

.field private n:Lces;

.field private o:Lcfb;

.field private p:Z

.field private q:B

.field private r:Ljava/lang/Object;

.field private s:Z

.field private t:Z

.field private u:Lcfd;

.field private v:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-object v0, Lcew;->c:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcew;->d:Lcgw;

    return-void
.end method

.method public constructor <init>(Lcee;Lcel;Lces;Ljava/util/concurrent/ExecutorService;)V
    .locals 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcew;->p:Z

    const/4 v1, 0x3

    .line 80
    iput-byte v1, p0, Lcew;->q:B

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcew;->r:Ljava/lang/Object;

    .line 82
    iput-boolean v0, p0, Lcew;->s:Z

    .line 83
    iput-boolean v0, p0, Lcew;->t:Z

    .line 98
    iput-byte v1, p0, Lcew;->q:B

    .line 99
    iput-object p1, p0, Lcew;->e:Lcee;

    .line 100
    iput-object p2, p0, Lcew;->m:Lcel;

    .line 101
    iput-object p3, p0, Lcew;->n:Lces;

    .line 102
    iget-object p1, p0, Lcew;->n:Lces;

    invoke-interface {p1, p0}, Lces;->a(Lcew;)V

    .line 103
    iput-object p4, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    .line 105
    new-instance p1, Lcfb;

    invoke-virtual {p0}, Lcew;->h()Lcee;

    move-result-object p4

    invoke-interface {p4}, Lcee;->b()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcfb;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcew;->o:Lcfb;

    .line 106
    new-instance p1, Lcey;

    invoke-direct {p1, p0}, Lcey;-><init>(Lcew;)V

    iput-object p1, p0, Lcew;->j:Lcey;

    .line 107
    new-instance p1, Lcex;

    iget-object v2, p0, Lcew;->o:Lcfb;

    iget-object v3, p0, Lcew;->j:Lcey;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcex;-><init>(Lcel;Lcfb;Lcey;Lcew;Lces;)V

    iput-object p1, p0, Lcew;->k:Lcex;

    .line 109
    iget-object p1, p0, Lcew;->j:Lcey;

    iget-object p2, p0, Lcew;->k:Lcex;

    invoke-virtual {p1, p2}, Lcey;->a(Lcex;)V

    .line 110
    sget-object p1, Lcew;->d:Lcgw;

    invoke-virtual {p0}, Lcew;->h()Lcee;

    move-result-object p2

    invoke-interface {p2}, Lcee;->b()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcew;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 86
    iget-object p0, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lcew;Lcez;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcew;->h:Lcez;

    return-void
.end method

.method static synthetic a(Lcew;Lcfa;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcew;->i:Lcfa;

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 6

    .line 796
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    const-string v2, "handleRunException"

    const-string v3, "804"

    const/4 v4, 0x0

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 798
    instance-of v0, p1, Lceo;

    if-nez v0, :cond_0

    .line 799
    new-instance v0, Lceo;

    const/16 v1, 0x7d6d

    invoke-direct {v0, v1, p1}, Lceo;-><init>(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 801
    :cond_0
    move-object v0, p1

    check-cast v0, Lceo;

    :goto_0
    const/4 p1, 0x0

    .line 804
    invoke-virtual {p0, p1, v0}, Lcew;->a(Lceu;Lceo;)V

    return-void
.end method

.method private b(Lceu;Lceo;)Lceu;
    .locals 4

    .line 445
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    const-string v2, "handleOldTokens"

    const-string v3, "222"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcew;->o:Lcfb;

    iget-object v2, p1, Lceu;->a:Lcfn;

    invoke-virtual {v2}, Lcfn;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcfb;->a(Ljava/lang/String;)Lceu;

    move-result-object v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Lcew;->o:Lcfb;

    iget-object v2, p1, Lceu;->a:Lcfn;

    invoke-virtual {v2}, Lcfn;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcfb;->a(Lceu;Ljava/lang/String;)V

    .line 457
    :cond_0
    iget-object p1, p0, Lcew;->k:Lcex;

    invoke-virtual {p1, p2}, Lcex;->a(Lceo;)Ljava/util/Vector;

    move-result-object p1

    .line 458
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    .line 459
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    .line 460
    :cond_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lceu;

    .line 462
    iget-object v1, p2, Lceu;->a:Lcfn;

    invoke-virtual {v1}, Lcfn;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 463
    iget-object v1, p2, Lceu;->a:Lcfn;

    invoke-virtual {v1}, Lcfn;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Con"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 470
    :cond_2
    iget-object v1, p0, Lcew;->j:Lcey;

    invoke-virtual {v1, p2}, Lcey;->b(Lceu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    move-object v0, p2

    goto :goto_0

    :catch_0
    :goto_2
    return-object v0
.end method

.method static synthetic b(Lcew;)Lcfb;
    .locals 0

    .line 77
    iget-object p0, p0, Lcew;->o:Lcfb;

    return-object p0
.end method

.method static synthetic c(Lcew;)[Lcfj;
    .locals 0

    .line 69
    iget-object p0, p0, Lcew;->g:[Lcfj;

    return-object p0
.end method

.method static synthetic d(Lcew;)I
    .locals 0

    .line 68
    iget p0, p0, Lcew;->f:I

    return p0
.end method

.method static synthetic e(Lcew;)Lcex;
    .locals 0

    .line 73
    iget-object p0, p0, Lcew;->k:Lcex;

    return-object p0
.end method

.method static synthetic f(Lcew;)Lcez;
    .locals 0

    .line 70
    iget-object p0, p0, Lcew;->h:Lcez;

    return-object p0
.end method

.method static synthetic g(Lcew;)Lcfa;
    .locals 0

    .line 71
    iget-object p0, p0, Lcew;->i:Lcfa;

    return-object p0
.end method

.method static synthetic h(Lcew;)Lcey;
    .locals 0

    .line 72
    iget-object p0, p0, Lcew;->j:Lcey;

    return-object p0
.end method

.method static synthetic k()Lcgw;
    .locals 1

    .line 59
    sget-object v0, Lcew;->d:Lcgw;

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcew;->c:Ljava/lang/String;

    return-object v0
.end method

.method private m()V
    .locals 5

    const-string v0, "shutdownExecutorService"

    .line 119
    iget-object v1, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 121
    :try_start_0
    iget-object v1, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    sget-object v1, Lcew;->d:Lcgw;

    sget-object v2, Lcew;->c:Ljava/lang/String;

    const-string v3, "executorService did not terminate"

    invoke-interface {v1, v2, v0, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    iget-object v0, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lced;)Lceu;
    .locals 1

    .line 784
    :try_start_0
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p1}, Lcex;->a(Lced;)Lceu;

    move-result-object p1
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 788
    invoke-direct {p0, p1}, Lcew;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 786
    invoke-direct {p0, p1}, Lcew;->a(Ljava/lang/Exception;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 609
    iput p1, p0, Lcew;->f:I

    return-void
.end method

.method public a(JJZ)V
    .locals 1

    .line 522
    iget-object v0, p0, Lcew;->k:Lcex;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0, p1, p2}, Lcex;->b(J)V

    .line 525
    :cond_0
    new-instance p1, Lceu;

    iget-object p2, p0, Lcew;->e:Lcee;

    invoke-interface {p2}, Lcee;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lceu;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p5, :cond_1

    .line 529
    :try_start_0
    new-instance p5, Lcgc;

    invoke-direct {p5}, Lcgc;-><init>()V

    invoke-virtual {p0, p5, p1}, Lcew;->a(Lcgs;Lceu;)V

    .line 532
    invoke-virtual {p1, p3, p4}, Lceu;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 539
    iget-object p4, p1, Lceu;->a:Lcfn;

    invoke-virtual {p4, p2, p2}, Lcfn;->a(Lcgs;Lceo;)V

    .line 540
    invoke-virtual {p0, p1, p2}, Lcew;->a(Lceu;Lceo;)V

    .line 541
    throw p3

    .line 539
    :catch_0
    :cond_1
    :goto_0
    iget-object p3, p1, Lceu;->a:Lcfn;

    invoke-virtual {p3, p2, p2}, Lcfn;->a(Lcgs;Lceo;)V

    .line 540
    invoke-virtual {p0, p1, p2}, Lcew;->a(Lceu;Lceo;)V

    return-void
.end method

.method public a(Lcej;)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcew;->j:Lcey;

    invoke-virtual {v0, p1}, Lcey;->a(Lcej;)V

    return-void
.end method

.method public a(Lcek;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcew;->j:Lcey;

    invoke-virtual {v0, p1}, Lcey;->a(Lcek;)V

    return-void
.end method

.method public a(Lcem;Lceu;)V
    .locals 18

    move-object/from16 v7, p0

    .line 256
    iget-object v8, v7, Lcew;->r:Ljava/lang/Object;

    monitor-enter v8

    .line 257
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcew;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v7, Lcew;->s:Z

    if-nez v0, :cond_0

    .line 259
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v2, Lcew;->c:Ljava/lang/String;

    const-string v3, "connect"

    const-string v4, "214"

    invoke-interface {v0, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iput-byte v1, v7, Lcew;->q:B

    move-object/from16 v0, p1

    .line 263
    iput-object v0, v7, Lcew;->l:Lcem;

    .line 265
    new-instance v0, Lcgb;

    iget-object v1, v7, Lcew;->e:Lcee;

    invoke-interface {v1}, Lcee;->b()Ljava/lang/String;

    move-result-object v10

    .line 266
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->d()I

    move-result v11

    .line 267
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->l()Z

    move-result v12

    .line 268
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->c()I

    move-result v13

    .line 269
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->b()Ljava/lang/String;

    move-result-object v14

    .line 270
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->a()[C

    move-result-object v15

    .line 271
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->i()Lcep;

    move-result-object v16

    .line 272
    iget-object v1, v7, Lcew;->l:Lcem;

    invoke-virtual {v1}, Lcem;->h()Ljava/lang/String;

    move-result-object v17

    move-object v9, v0

    .line 265
    invoke-direct/range {v9 .. v17}, Lcgb;-><init>(Ljava/lang/String;IZILjava/lang/String;[CLcep;Ljava/lang/String;)V

    .line 274
    iget-object v1, v7, Lcew;->k:Lcex;

    iget-object v2, v7, Lcew;->l:Lcem;

    invoke-virtual {v2}, Lcem;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcex;->a(J)V

    .line 275
    iget-object v1, v7, Lcew;->k:Lcex;

    iget-object v2, v7, Lcew;->l:Lcem;

    invoke-virtual {v2}, Lcem;->l()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcex;->a(Z)V

    .line 276
    iget-object v1, v7, Lcew;->k:Lcex;

    iget-object v2, v7, Lcew;->l:Lcem;

    invoke-virtual {v2}, Lcem;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Lcex;->a(I)V

    .line 278
    iget-object v1, v7, Lcew;->o:Lcfb;

    invoke-virtual {v1}, Lcfb;->a()V

    .line 279
    new-instance v9, Lcew$a;

    iget-object v6, v7, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcew$a;-><init>(Lcew;Lcew;Lceu;Lcgb;Ljava/util/concurrent/ExecutorService;)V

    .line 280
    invoke-virtual {v9}, Lcew$a;->a()V

    .line 256
    monitor-exit v8

    return-void

    .line 284
    :cond_0
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v2, Lcew;->c:Ljava/lang/String;

    const-string v3, "connect"

    const-string v4, "207"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Byte;

    iget-byte v9, v7, Lcew;->q:B

    invoke-direct {v6, v9}, Ljava/lang/Byte;-><init>(B)V

    aput-object v6, v1, v5

    invoke-interface {v0, v2, v3, v4, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcew;->e()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, v7, Lcew;->s:Z

    if-nez v0, :cond_3

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcew;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcew;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    new-instance v0, Lceo;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    :cond_1
    const/16 v0, 0x7d64

    .line 292
    invoke-static {v0}, Lcfe;->a(I)Lceo;

    move-result-object v0

    throw v0

    .line 288
    :cond_2
    new-instance v0, Lceo;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    .line 286
    :cond_3
    new-instance v0, Lceo;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lceo;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v0

    .line 256
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lceu;Lceo;)V
    .locals 8

    .line 333
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_0
    iget-boolean v1, p0, Lcew;->p:Z

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcew;->s:Z

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcew;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x1

    .line 337
    iput-boolean v1, p0, Lcew;->p:Z

    .line 340
    sget-object v2, Lcew;->d:Lcgw;

    sget-object v3, Lcew;->c:Ljava/lang/String;

    const-string v4, "shutdownConnection"

    const-string v5, "216"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcew;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcew;->d()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v4, 0x2

    .line 343
    iput-byte v4, p0, Lcew;->q:B

    .line 333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_2

    .line 348
    invoke-virtual {p1}, Lceu;->h()Z

    move-result v0

    if-nez v0, :cond_2

    .line 349
    iget-object v0, p1, Lceu;->a:Lcfn;

    invoke-virtual {v0, p2}, Lcfn;->a(Lceo;)V

    .line 354
    :cond_2
    iget-object v0, p0, Lcew;->j:Lcey;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcey;->a()V

    .line 357
    :cond_3
    iget-object v0, p0, Lcew;->h:Lcez;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcez;->a()V

    .line 361
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcew;->g:[Lcfj;

    if-eqz v0, :cond_5

    .line 362
    iget-object v0, p0, Lcew;->g:[Lcfj;

    iget v4, p0, Lcew;->f:I

    aget-object v0, v0, v4

    if-eqz v0, :cond_5

    .line 364
    invoke-interface {v0}, Lcfj;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 372
    :catch_0
    :cond_5
    iget-object v0, p0, Lcew;->o:Lcfb;

    new-instance v4, Lceo;

    const/16 v5, 0x7d66

    invoke-direct {v4, v5}, Lceo;-><init>(I)V

    invoke-virtual {v0, v4}, Lcfb;->a(Lceo;)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcew;->b(Lceu;Lceo;)Lceu;

    move-result-object p1

    .line 381
    :try_start_2
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p2}, Lcex;->b(Lceo;)V

    .line 382
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0}, Lcex;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lcew;->j:Lcey;

    invoke-virtual {v0}, Lcey;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 388
    :catch_1
    :cond_6
    iget-object v0, p0, Lcew;->i:Lcfa;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcfa;->a()V

    .line 390
    :cond_7
    iget-object v0, p0, Lcew;->n:Lces;

    if-eqz v0, :cond_8

    .line 391
    invoke-interface {v0}, Lces;->b()V

    .line 395
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcew;->u:Lcfd;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcew;->m:Lcel;

    if-eqz v0, :cond_9

    .line 396
    iget-object v0, p0, Lcew;->m:Lcel;

    invoke-interface {v0}, Lcel;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 404
    :catch_2
    :cond_9
    iget-object v4, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v4

    .line 406
    :try_start_4
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v5, Lcew;->c:Ljava/lang/String;

    const-string v6, "shutdownConnection"

    const-string v7, "217"

    invoke-interface {v0, v5, v6, v7}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 408
    iput-byte v0, p0, Lcew;->q:B

    .line 409
    iput-boolean v3, p0, Lcew;->p:Z

    .line 404
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p1, :cond_a

    move v0, v1

    goto :goto_1

    :cond_a
    move v0, v3

    .line 417
    :goto_1
    iget-object v4, p0, Lcew;->j:Lcey;

    if-eqz v4, :cond_b

    move v3, v1

    :cond_b
    and-int/2addr v0, v3

    if-eqz v0, :cond_c

    .line 418
    iget-object v0, p0, Lcew;->j:Lcey;

    invoke-virtual {v0, p1}, Lcey;->b(Lceu;)V

    :cond_c
    if-eqz v2, :cond_d

    .line 421
    iget-object p1, p0, Lcew;->j:Lcey;

    if-eqz p1, :cond_d

    .line 423
    invoke-virtual {p1, p2}, Lcey;->a(Lceo;)V

    .line 427
    :cond_d
    iget-object p1, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter p1

    .line 428
    :try_start_5
    iget-boolean p2, p0, Lcew;->s:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p2, :cond_e

    .line 430
    :try_start_6
    invoke-virtual {p0, v1}, Lcew;->a(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 427
    :catch_3
    :cond_e
    :try_start_7
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    .line 404
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1

    .line 335
    :cond_f
    :goto_2
    :try_start_9
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p1

    .line 333
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1
.end method

.method public a(Lcfd;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcew;->u:Lcfd;

    return-void
.end method

.method public a(Lcga;Lceo;)V
    .locals 5

    .line 300
    invoke-virtual {p1}, Lcga;->w_()I

    move-result p1

    .line 301
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 305
    :try_start_0
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string v2, "connectComplete"

    const-string v3, "215"

    invoke-interface {p1, p2, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iput-byte v1, p0, Lcew;->q:B

    .line 308
    monitor-exit v0

    return-void

    .line 301
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v2, Lcew;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    const-string p1, "connectComplete"

    const-string v1, "204"

    invoke-interface {v0, v2, p1, v1, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    throw p2

    :catchall_0
    move-exception p1

    .line 301
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcgc;JLceu;)V
    .locals 9

    .line 481
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_0
    invoke-virtual {p0}, Lcew;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 486
    invoke-virtual {p0}, Lcew;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 490
    invoke-virtual {p0}, Lcew;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 494
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcew;->j:Lcey;

    invoke-virtual {v2}, Lcey;->d()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 502
    sget-object v1, Lcew;->d:Lcgw;

    sget-object v2, Lcew;->c:Ljava/lang/String;

    const-string v3, "disconnect"

    const-string v4, "218"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 503
    iput-byte v1, p0, Lcew;->q:B

    .line 504
    new-instance v1, Lcew$b;

    iget-object v8, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcew$b;-><init>(Lcew;Lcgc;JLceu;Ljava/util/concurrent/ExecutorService;)V

    .line 505
    invoke-virtual {v1}, Lcew$b;->a()V

    .line 481
    monitor-exit v0

    return-void

    .line 496
    :cond_0
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "210"

    invoke-interface {p1, p2, p3, p4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6b

    .line 498
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    .line 492
    :cond_1
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "219"

    invoke-interface {p1, p2, p3, p4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d66

    .line 493
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    .line 488
    :cond_2
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "211"

    invoke-interface {p1, p2, p3, p4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d65

    .line 489
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    .line 484
    :cond_3
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string p3, "disconnect"

    const-string p4, "223"

    invoke-interface {p1, p2, p3, p4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d6f

    .line 485
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 481
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Lcgm;)V
    .locals 1

    .line 625
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p1}, Lcex;->b(Lcgm;)V

    return-void
.end method

.method a(Lcgs;Lceu;)V
    .locals 9

    .line 143
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v6, 0x2

    aput-object p2, v3, v6

    const-string v7, "internalSend"

    const-string v8, "200"

    invoke-interface {v0, v1, v7, v8, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p2}, Lceu;->c()Lcee;

    move-result-object v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p2, Lceu;->a:Lcfn;

    invoke-virtual {p0}, Lcew;->h()Lcee;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcfn;->a(Lcee;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p1, p2}, Lcex;->a(Lcgs;Lceu;)V
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 160
    instance-of v0, p1, Lcgm;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcew;->k:Lcex;

    check-cast p1, Lcgm;

    invoke-virtual {v0, p1}, Lcex;->a(Lcgm;)V

    .line 163
    :cond_0
    throw p2

    .line 151
    :cond_1
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    aput-object p2, v2, v6

    const-string p1, "213"

    invoke-interface {v0, v1, v7, p1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance p1, Lceo;

    const/16 p2, 0x7dc9

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcew;->j:Lcey;

    invoke-virtual {v0, p1}, Lcey;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Lcew;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 215
    invoke-virtual {p0}, Lcew;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 217
    :cond_0
    sget-object p1, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "224"

    invoke-interface {p1, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcew;->b()Z

    move-result p1

    if-nez p1, :cond_3

    .line 221
    invoke-virtual {p0}, Lcew;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 223
    invoke-virtual {p0}, Lcew;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcew;->s:Z

    .line 225
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x4

    .line 229
    iput-byte p1, p0, Lcew;->q:B

    .line 230
    invoke-direct {p0}, Lcew;->m()V

    .line 232
    iget-object p1, p0, Lcew;->k:Lcex;

    invoke-virtual {p1}, Lcex;->k()V

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcew;->k:Lcex;

    .line 234
    iput-object p1, p0, Lcew;->j:Lcey;

    .line 235
    iput-object p1, p0, Lcew;->m:Lcel;

    .line 236
    iput-object p1, p0, Lcew;->i:Lcfa;

    .line 237
    iput-object p1, p0, Lcew;->n:Lces;

    .line 238
    iput-object p1, p0, Lcew;->h:Lcez;

    .line 239
    iput-object p1, p0, Lcew;->g:[Lcfj;

    .line 240
    iput-object p1, p0, Lcew;->l:Lcem;

    .line 241
    iput-object p1, p0, Lcew;->o:Lcfb;

    goto :goto_0

    :cond_2
    const/16 p1, 0x7d64

    .line 222
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    .line 220
    :cond_3
    new-instance p1, Lceo;

    const/16 v1, 0x7d6e

    invoke-direct {p1, v1}, Lceo;-><init>(I)V

    throw p1

    .line 212
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a([Lcfj;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcew;->g:[Lcfj;

    return-void
.end method

.method public a()Z
    .locals 2

    .line 545
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 546
    :try_start_0
    iget-byte v1, p0, Lcew;->q:B

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 545
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lcgs;Lceu;)V
    .locals 6

    .line 176
    invoke-virtual {p0}, Lcew;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "sendNoWait"

    if-nez v0, :cond_4

    .line 177
    invoke-virtual {p0}, Lcew;->a()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcgb;

    if-nez v0, :cond_4

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcew;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcgc;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcew;->u:Lcfd;

    if-eqz v0, :cond_3

    .line 191
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v4, Lcew;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "508"

    invoke-interface {v0, v4, v3, v1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcew;->u:Lcfd;

    invoke-virtual {v0}, Lcfd;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p1}, Lcex;->a(Lcgs;)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcew;->u:Lcfd;

    invoke-virtual {v0, p1, p2}, Lcfd;->a(Lcgs;Lceu;)V

    goto :goto_1

    .line 198
    :cond_3
    sget-object p1, Lcew;->d:Lcgw;

    sget-object p2, Lcew;->c:Ljava/lang/String;

    const-string v0, "208"

    invoke-interface {p1, p2, v3, v0}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7d68

    .line 199
    invoke-static {p1}, Lcfe;->a(I)Lceo;

    move-result-object p1

    throw p1

    .line 179
    :cond_4
    :goto_0
    iget-object v0, p0, Lcew;->u:Lcfd;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcfd;->a()I

    move-result v0

    if-eqz v0, :cond_6

    .line 181
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v4, Lcew;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    const-string v1, "507"

    invoke-interface {v0, v4, v3, v1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcew;->u:Lcfd;

    invoke-virtual {v0}, Lcfd;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0, p1}, Lcex;->a(Lcgs;)V

    .line 185
    :cond_5
    iget-object v0, p0, Lcew;->u:Lcfd;

    invoke-virtual {v0, p1, p2}, Lcfd;->a(Lcgs;Lceu;)V

    goto :goto_1

    .line 187
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcew;->a(Lcgs;Lceu;)V

    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 813
    iput-boolean p1, p0, Lcew;->t:Z

    return-void
.end method

.method public b()Z
    .locals 3

    .line 551
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_0
    iget-byte v1, p0, Lcew;->q:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 551
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Z
    .locals 3

    .line 557
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    iget-byte v1, p0, Lcew;->q:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 557
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 3

    .line 563
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_0
    iget-byte v1, p0, Lcew;->q:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 563
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()Z
    .locals 3

    .line 569
    iget-object v0, p0, Lcew;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    iget-byte v1, p0, Lcew;->q:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 569
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()I
    .locals 1

    .line 612
    iget v0, p0, Lcew;->f:I

    return v0
.end method

.method public g()[Lcfj;
    .locals 1

    .line 615
    iget-object v0, p0, Lcew;->g:[Lcfj;

    return-object v0
.end method

.method public h()Lcee;
    .locals 1

    .line 633
    iget-object v0, p0, Lcew;->e:Lcee;

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 637
    iget-object v0, p0, Lcew;->k:Lcex;

    invoke-virtual {v0}, Lcex;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()V
    .locals 4

    .line 840
    iget-object v0, p0, Lcew;->u:Lcfd;

    if-eqz v0, :cond_0

    .line 842
    sget-object v0, Lcew;->d:Lcgw;

    sget-object v1, Lcew;->c:Ljava/lang/String;

    const-string v2, "notifyConnect"

    const-string v3, "509"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcew;->u:Lcfd;

    new-instance v1, Lcew$c;

    invoke-direct {v1, p0, v2}, Lcew$c;-><init>(Lcew;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcfd;->a(Lcfg;)V

    .line 845
    iget-object v0, p0, Lcew;->v:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcew;->u:Lcfd;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
