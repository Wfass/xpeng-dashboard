.class public Lorg/chromium/net/impl/CronetBidirectionalStream;
.super Lorg/chromium/net/g;
.source "CronetBidirectionalStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetBidirectionalStream$b;,
        Lorg/chromium/net/impl/CronetBidirectionalStream$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lorg/chromium/net/impl/VersionSafeCallbacks$a;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lorg/chromium/net/e;

.field private final i:Ljava/lang/Object;

.field private j:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Lorg/chromium/net/s$b;

.field private o:J

.field private p:I

.field private q:I

.field private r:Lorg/chromium/net/impl/p;

.field private s:Lorg/chromium/net/impl/CronetBidirectionalStream$a;

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/chromium/net/impl/CronetBidirectionalStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    return-void
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    return p1
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    return-object p0
.end method

.method private static a([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 697
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 698
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v3, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, p0, v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private a(ILjava/lang/String;[Ljava/lang/String;J)Lorg/chromium/net/impl/p;
    .locals 12

    .line 751
    new-instance v10, Lorg/chromium/net/impl/p;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    move-object v11, p0

    iget-object v1, v11, Lorg/chromium/net/impl/CronetBidirectionalStream;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 752
    invoke-static {p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v3, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move v2, p1

    move-object v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/chromium/net/impl/p;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method private a()V
    .locals 10

    .line 381
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    const/16 v1, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 382
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 383
    new-array v5, v0, [Ljava/nio/ByteBuffer;

    .line 384
    new-array v6, v0, [I

    .line 385
    new-array v7, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 387
    iget-object v4, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->k:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 388
    aput-object v4, v5, v3

    .line 389
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    aput v8, v6, v3

    .line 390
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    aput v4, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 392
    :cond_2
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->k:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 393
    :cond_4
    :goto_2
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    const/4 v3, 0x1

    if-nez v0, :cond_6

    array-length v0, v5

    if-lt v0, v3, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_3
    const/16 v0, 0x9

    .line 394
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    .line 395
    iput-boolean v3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->m:Z

    .line 396
    iget-wide v8, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->o:J

    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->j:Ljava/util/LinkedList;

    .line 397
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    move-object v2, p0

    move-wide v3, v8

    move v8, v0

    .line 396
    invoke-direct/range {v2 .. v8}, Lorg/chromium/net/impl/CronetBidirectionalStream;->nativeWritevData(J[Ljava/nio/ByteBuffer;[I[IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 400
    :cond_8
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    .line 401
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native writev."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .line 798
    new-instance v0, Lorg/chromium/net/impl/b;

    const-string v1, "CalledByNative method has thrown an exception"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 800
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception in CalledByNative method"

    invoke-static {v1, p1, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/e;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 736
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 738
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Exception posting task to executor"

    invoke-static {v0, p1, v1}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x6

    .line 743
    :try_start_1
    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    iput v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    .line 744
    invoke-direct {p0, v2}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Z)V

    .line 745
    monitor-exit p1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lorg/chromium/net/e;)V
    .locals 3

    .line 775
    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->h:Lorg/chromium/net/e;

    .line 777
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 778
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x6

    .line 781
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    const/4 v1, 0x0

    .line 782
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Z)V

    .line 783
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->d:Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    invoke-virtual {v0, p0, v2, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->a(Lorg/chromium/net/b;Lorg/chromium/net/x;Lorg/chromium/net/e;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 787
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "Exception notifying of failed request"

    invoke-static {v0, p1, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 783
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/lang/Exception;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/e;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Lorg/chromium/net/e;)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 759
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyNativeStreamLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/e;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 763
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->nativeDestroy(JZ)V

    .line 764
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->b:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {p1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->c()V

    .line 765
    iput-wide v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->o:J

    .line 766
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->t:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 767
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 46
    invoke-static {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->m:Z

    return p1
.end method

.method static synthetic b(Lorg/chromium/net/impl/CronetBidirectionalStream;I)I
    .locals 0

    .line 46
    iput p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    return p1
.end method

.method private b(Lorg/chromium/net/e;)V
    .locals 1

    .line 808
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$5;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream$5;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/e;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()Z
    .locals 4

    .line 453
    iget v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "GET"

    .line 692
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/chromium/net/impl/CronetBidirectionalStream;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    return p0
.end method

.method private c()V
    .locals 4

    .line 460
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    monitor-exit v0

    return-void

    .line 464
    :cond_0
    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    .line 467
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    const/4 v1, 0x0

    .line 470
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Z)V

    .line 471
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    :try_start_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->d:Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    invoke-virtual {v0, p0, v2}, Lorg/chromium/net/impl/VersionSafeCallbacks$a;->b(Lorg/chromium/net/b;Lorg/chromium/net/x;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    sget-object v2, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v0, "Exception in onSucceeded method"

    invoke-static {v2, v0, v3}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 465
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 471
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic d(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/p;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    return-object p0
.end method

.method static synthetic e(Lorg/chromium/net/impl/CronetBidirectionalStream;)Lorg/chromium/net/impl/VersionSafeCallbacks$a;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->d:Lorg/chromium/net/impl/VersionSafeCallbacks$a;

    return-object p0
.end method

.method static synthetic f(Lorg/chromium/net/impl/CronetBidirectionalStream;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->c()V

    return-void
.end method

.method static synthetic g(Lorg/chromium/net/impl/CronetBidirectionalStream;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    return p0
.end method

.method static synthetic h(Lorg/chromium/net/impl/CronetBidirectionalStream;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lorg/chromium/net/impl/CronetBidirectionalStream;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->m:Z

    return p0
.end method

.method private native nativeCreateBidirectionalStream(JZZZIZI)J
.end method

.method private native nativeDestroy(JZ)V
.end method

.method private native nativeReadData(JLjava/nio/ByteBuffer;II)Z
.end method

.method private native nativeSendRequestHeaders(J)V
.end method

.method private native nativeStart(JLjava/lang/String;ILjava/lang/String;[Ljava/lang/String;Z)I
.end method

.method private native nativeWritevData(J[Ljava/nio/ByteBuffer;[I[IZ)Z
.end method

.method private onCanceled()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 639
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$4;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetBidirectionalStream$4;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onError(IIILjava/lang/String;J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    if-eqz v0, :cond_0

    .line 620
    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/p;->a(J)V

    :cond_0
    const/16 p5, 0xa

    const-string p6, "Exception in BidirectionalStream: "

    if-eq p1, p5, :cond_2

    const/4 p5, 0x3

    if-ne p1, p5, :cond_1

    goto :goto_0

    .line 628
    :cond_1
    new-instance p3, Lorg/chromium/net/impl/a;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Lorg/chromium/net/impl/a;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    goto :goto_1

    .line 624
    :cond_2
    :goto_0
    new-instance p5, Lorg/chromium/net/impl/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p5, p4, p1, p2, p3}, Lorg/chromium/net/impl/l;-><init>(Ljava/lang/String;III)V

    invoke-direct {p0, p5}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    :goto_1
    return-void
.end method

.method private onMetricsCollected(JJJJJJJJJJJJJZJJ)V
    .locals 35
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    .line 661
    iget-object v2, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->n:Lorg/chromium/net/s$b;

    if-nez v0, :cond_6

    .line 665
    new-instance v0, Lorg/chromium/net/impl/f;

    move-object v3, v0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move-wide/from16 v20, p17

    move-wide/from16 v22, p19

    move-wide/from16 v24, p21

    move-wide/from16 v26, p23

    move-wide/from16 v28, p25

    move/from16 v30, p27

    move-wide/from16 v31, p28

    move-wide/from16 v33, p30

    invoke-direct/range {v3 .. v34}, Lorg/chromium/net/impl/f;-><init>(JJJJJJJJJJJJJZJJ)V

    iput-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->n:Lorg/chromium/net/s$b;

    .line 669
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    if-nez v0, :cond_1

    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    iget v3, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 670
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    const/4 v3, 0x5

    const/4 v4, 0x7

    if-nez v0, :cond_3

    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    if-eq v0, v4, :cond_3

    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    const/4 v5, 0x6

    if-eq v0, v5, :cond_3

    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 673
    :cond_3
    :goto_1
    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    if-ne v0, v4, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 675
    :cond_4
    iget v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->p:I

    if-ne v0, v3, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    .line 680
    :goto_2
    new-instance v3, Lorg/chromium/net/impl/m;

    iget-object v4, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->e:Ljava/lang/String;

    iget-object v5, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->g:Ljava/util/Collection;

    iget-object v6, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->n:Lorg/chromium/net/s$b;

    iget-object v7, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    iget-object v8, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->h:Lorg/chromium/net/e;

    move-object/from16 p1, v3

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v0

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    invoke-direct/range {p1 .. p7}, Lorg/chromium/net/impl/m;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/s$b;ILorg/chromium/net/x;Lorg/chromium/net/e;)V

    .line 682
    iget-object v0, v1, Lorg/chromium/net/impl/CronetBidirectionalStream;->b:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0, v3}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/s;)V

    .line 683
    monitor-exit v2

    return-void

    .line 663
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Metrics collection should only happen once."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 683
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 546
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;

    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/p;->a(J)V

    .line 547
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    const/4 p6, 0x0

    if-ne p5, p3, :cond_6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    if-eq p5, p4, :cond_0

    goto :goto_3

    :cond_0
    if-ltz p2, :cond_5

    add-int/2addr p3, p2

    if-le p3, p4, :cond_1

    goto :goto_2

    .line 556
    :cond_1
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 557
    sget-boolean p3, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->s:Lorg/chromium/net/impl/CronetBidirectionalStream$a;

    iget-object p3, p3, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->a:Ljava/nio/ByteBuffer;

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 558
    :cond_3
    :goto_0
    iget-object p3, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->s:Lorg/chromium/net/impl/CronetBidirectionalStream$a;

    iput-object p1, p3, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->a:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 559
    :goto_1
    iput-boolean p1, p3, Lorg/chromium/net/impl/CronetBidirectionalStream$a;->b:Z

    .line 560
    iget-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->s:Lorg/chromium/net/impl/CronetBidirectionalStream$a;

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void

    .line 553
    :cond_5
    :goto_2
    new-instance p1, Lorg/chromium/net/impl/e;

    const-string p2, "Invalid number of bytes read"

    invoke-direct {p1, p2, p6}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    return-void

    .line 548
    :cond_6
    :goto_3
    new-instance p1, Lorg/chromium/net/impl/e;

    const-string p2, "ByteBuffer modified externally during read"

    invoke-direct {p1, p2, p6}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    return-void
.end method

.method private onResponseHeadersReceived(ILjava/lang/String;[Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 516
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(ILjava/lang/String;[Ljava/lang/String;J)Lorg/chromium/net/impl/p;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->r:Lorg/chromium/net/impl/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    new-instance p1, Lorg/chromium/net/impl/CronetBidirectionalStream$2;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetBidirectionalStream$2;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void

    .line 519
    :catch_0
    new-instance p1, Lorg/chromium/net/impl/e;

    const/4 p2, 0x0

    const-string p3, "Cannot prepare ResponseInfo"

    invoke-direct {p1, p3, p2}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    return-void
.end method

.method private onResponseTrailersReceived([Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 595
    new-instance v0, Lorg/chromium/net/impl/p$a;

    .line 596
    invoke-static {p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/p$a;-><init>(Ljava/util/List;)V

    .line 597
    new-instance p1, Lorg/chromium/net/impl/CronetBidirectionalStream$3;

    invoke-direct {p1, p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream$3;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Lorg/chromium/net/x$a;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStreamReady(Z)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 482
    new-instance v0, Lorg/chromium/net/impl/CronetBidirectionalStream$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream$1;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Z)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onWritevCompleted([Ljava/nio/ByteBuffer;[I[IZ)V
    .locals 6
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 567
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    if-nez v0, :cond_1

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 568
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/chromium/net/impl/CronetBidirectionalStream;->a:Z

    if-nez v0, :cond_3

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 569
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 570
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    const/16 v1, 0x8

    .line 571
    iput v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->q:I

    .line 573
    iget-object v1, p0, Lorg/chromium/net/impl/CronetBidirectionalStream;->k:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 574
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a()V

    .line 576
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    move v1, v0

    .line 577
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_9

    .line 578
    aget-object v2, p1, v1

    .line 579
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    aget v4, p2, v1

    if-ne v3, v4, :cond_8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    aget v4, p3, v1

    if-eq v3, v4, :cond_6

    goto :goto_4

    .line 585
    :cond_6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 586
    new-instance v3, Lorg/chromium/net/impl/CronetBidirectionalStream$b;

    const/4 v4, 0x1

    if-eqz p4, :cond_7

    array-length v5, p1

    sub-int/2addr v5, v4

    if-ne v1, v5, :cond_7

    goto :goto_3

    :cond_7
    move v4, v0

    :goto_3
    invoke-direct {v3, p0, v2, v4}, Lorg/chromium/net/impl/CronetBidirectionalStream$b;-><init>(Lorg/chromium/net/impl/CronetBidirectionalStream;Ljava/nio/ByteBuffer;Z)V

    invoke-direct {p0, v3}, Lorg/chromium/net/impl/CronetBidirectionalStream;->a(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 580
    :cond_8
    :goto_4
    new-instance p1, Lorg/chromium/net/impl/e;

    const/4 p2, 0x0

    const-string p3, "ByteBuffer modified externally during write"

    invoke-direct {p1, p3, p2}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetBidirectionalStream;->b(Lorg/chromium/net/e;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 576
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
