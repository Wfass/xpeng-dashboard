.class public final Lorg/chromium/net/impl/CronetUrlRequest;
.super Lorg/chromium/net/impl/n;
.source "CronetUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/impl/CronetUrlRequest$a;,
        Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private A:I

.field private B:Lorg/chromium/net/e;

.field private C:Lorg/chromium/net/impl/f;

.field private D:Lorg/chromium/net/impl/CronetUrlRequest$a;

.field private E:Ljava/lang/Runnable;

.field private final c:Z

.field private d:J

.field private e:Z

.field private f:Z

.field private g:Z

.field private final h:Ljava/lang/Object;

.field private final i:Lorg/chromium/net/impl/CronetUrlRequestContext;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lorg/chromium/net/impl/VersionSafeCallbacks$g;

.field private final m:Ljava/lang/String;

.field private final n:I

.field private o:Ljava/lang/String;

.field private final p:Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

.field private final q:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Z

.field private final s:Z

.field private final t:Z

.field private final u:I

.field private final v:Z

.field private final w:I

.field private final x:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

.field private y:Lorg/chromium/net/impl/CronetUploadDataStream;

.field private z:Lorg/chromium/net/impl/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/chromium/net/impl/CronetUrlRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/net/impl/CronetUrlRequest;->a:Z

    return-void
.end method

.method constructor <init>(Lorg/chromium/net/impl/CronetUrlRequestContext;Ljava/lang/String;ILorg/chromium/net/w$b;Ljava/util/concurrent/Executor;Ljava/util/Collection;ZZZZIZILorg/chromium/net/s$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/impl/CronetUrlRequestContext;",
            "Ljava/lang/String;",
            "I",
            "Lorg/chromium/net/w$b;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;ZZZZIZI",
            "Lorg/chromium/net/s$a;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p14

    .line 140
    invoke-direct {p0}, Lorg/chromium/net/impl/n;-><init>()V

    .line 64
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->k:Ljava/util/List;

    .line 79
    new-instance v5, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;-><init>(Lorg/chromium/net/impl/CronetUrlRequest$1;)V

    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->p:Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    move/from16 v5, p9

    .line 151
    iput-boolean v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->c:Z

    move-object v5, p1

    .line 152
    iput-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 153
    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->m:Ljava/lang/String;

    .line 154
    iget-object v5, v0, Lorg/chromium/net/impl/CronetUrlRequest;->k:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-static {p3}, Lorg/chromium/net/impl/CronetUrlRequest;->b(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->n:I

    .line 156
    new-instance v1, Lorg/chromium/net/impl/VersionSafeCallbacks$g;

    invoke-direct {v1, p4}, Lorg/chromium/net/impl/VersionSafeCallbacks$g;-><init>(Lorg/chromium/net/w$b;)V

    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->l:Lorg/chromium/net/impl/VersionSafeCallbacks$g;

    .line 157
    iput-object v3, v0, Lorg/chromium/net/impl/CronetUrlRequest;->j:Ljava/util/concurrent/Executor;

    move-object v1, p6

    .line 158
    iput-object v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->q:Ljava/util/Collection;

    move v1, p7

    .line 159
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->r:Z

    move v1, p8

    .line 160
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->s:Z

    move/from16 v1, p10

    .line 161
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->t:Z

    move/from16 v1, p11

    .line 162
    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->u:I

    move/from16 v1, p12

    .line 163
    iput-boolean v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->v:Z

    move/from16 v1, p13

    .line 164
    iput v1, v0, Lorg/chromium/net/impl/CronetUrlRequest;->w:I

    if-eqz v4, :cond_0

    .line 166
    new-instance v6, Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    invoke-direct {v6, v4}, Lorg/chromium/net/impl/VersionSafeCallbacks$e;-><init>(Lorg/chromium/net/s$a;)V

    .line 167
    :cond_0
    iput-object v6, v0, Lorg/chromium/net/impl/CronetUrlRequest;->x:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    return-void

    .line 148
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Executor is required"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Listener is required"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "URL is required"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequest;)Ljava/lang/Object;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    return-object p0
.end method

.method private a(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/p;
    .locals 12

    move-object v0, p3

    .line 417
    new-instance v4, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;-><init>(Lorg/chromium/net/impl/CronetUrlRequest$1;)V

    const/4 v1, 0x0

    .line 418
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 419
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    aget-object v3, v0, v1

    add-int/lit8 v5, v1, 0x1

    aget-object v5, v0, v5

    invoke-direct {v2, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2}, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 422
    :cond_0
    new-instance v10, Lorg/chromium/net/impl/p;

    new-instance v1, Ljava/util/ArrayList;

    move-object v11, p0

    iget-object v0, v11, Lorg/chromium/net/impl/CronetUrlRequest;->k:Ljava/util/List;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v10

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/chromium/net/impl/p;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    return-object v10
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .line 459
    new-instance v0, Lorg/chromium/net/impl/b;

    const-string v1, "Exception received from UrlRequest.Callback"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 461
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception in CalledByNative method"

    invoke-static {v1, p1, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 381
    :try_start_0
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Exception posting task to executor"

    invoke-static {v0, v2, v1}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    new-instance v0, Lorg/chromium/net/impl/e;

    invoke-direct {v0, v2, p1}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    :goto_0
    return-void
.end method

.method private a(Lorg/chromium/net/e;)V
    .locals 2

    .line 479
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    monitor-exit v0

    return-void

    .line 483
    :cond_0
    sget-boolean v1, Lorg/chromium/net/impl/CronetUrlRequest;->a:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 484
    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    const/4 p1, 0x1

    .line 485
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->c(I)V

    .line 486
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequest;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->c(I)V

    return-void
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequest;Ljava/lang/Exception;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->g:Z

    return p1
.end method

.method private static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x5

    return p0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method static synthetic b(Lorg/chromium/net/impl/CronetUrlRequest;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lorg/chromium/net/impl/CronetUrlRequest;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->f:Z

    return p1
.end method

.method static synthetic c(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/p;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    return-object p0
.end method

.method private c(I)V
    .locals 6

    .line 442
    sget-boolean v0, Lorg/chromium/net/impl/CronetUrlRequest;->a:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 443
    :cond_1
    :goto_0
    iput p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->A:I

    .line 444
    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    return-void

    .line 447
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->c()V

    .line 449
    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v2, v3, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeDestroy(JZ)V

    .line 450
    iput-wide v4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    return-void
.end method

.method private d(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 794
    sget-object v0, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :pswitch_0
    const/16 p1, 0xb

    return p1

    :pswitch_1
    const/16 p1, 0xa

    return p1

    :pswitch_2
    const/16 p1, 0x9

    return p1

    :pswitch_3
    const/16 p1, 0x8

    return p1

    :pswitch_4
    const/4 p1, 0x7

    return p1

    :pswitch_5
    const/4 p1, 0x6

    return p1

    :pswitch_6
    const/4 p1, 0x5

    return p1

    :pswitch_7
    const/4 p1, 0x4

    return p1

    :pswitch_8
    const/4 p1, 0x3

    return p1

    :pswitch_9
    const/4 p1, 0x2

    return p1

    :pswitch_a
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic d(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$g;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->l:Lorg/chromium/net/impl/VersionSafeCallbacks$g;

    return-object p0
.end method

.method static synthetic e(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/CronetUploadDataStream;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->y:Lorg/chromium/net/impl/CronetUploadDataStream;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeStart(J)V

    return-void
.end method

.method static synthetic f(Lorg/chromium/net/impl/CronetUrlRequest;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    return-wide v0
.end method

.method private f()Z
    .locals 4

    .line 333
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->e:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

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

.method private g()V
    .locals 3

    .line 428
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->e:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    monitor-exit v0

    return-void

    .line 430
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Request is already started."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 432
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic g(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->e()V

    return-void
.end method

.method private h()V
    .locals 8

    .line 802
    iget-object v3, p0, Lorg/chromium/net/impl/CronetUrlRequest;->C:Lorg/chromium/net/impl/f;

    if-eqz v3, :cond_0

    .line 803
    new-instance v7, Lorg/chromium/net/impl/m;

    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->m:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->q:Ljava/util/Collection;

    iget v4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->A:I

    iget-object v5, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    iget-object v6, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/chromium/net/impl/m;-><init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/s$b;ILorg/chromium/net/x;Lorg/chromium/net/e;)V

    .line 805
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0, v7}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Lorg/chromium/net/s;)V

    .line 806
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->x:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    if-eqz v0, :cond_0

    .line 808
    :try_start_0
    invoke-virtual {v0}, Lorg/chromium/net/impl/VersionSafeCallbacks$e;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lorg/chromium/net/impl/CronetUrlRequest$9;

    invoke-direct {v1, p0, v7}, Lorg/chromium/net/impl/CronetUrlRequest$9;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/s;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 815
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Exception posting task to executor"

    invoke-static {v1, v0, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic h(Lorg/chromium/net/impl/CronetUrlRequest;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->h()V

    return-void
.end method

.method static synthetic i(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/e;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    return-object p0
.end method

.method static synthetic j(Lorg/chromium/net/impl/CronetUrlRequest;)Lorg/chromium/net/impl/VersionSafeCallbacks$e;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->x:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    return-object p0
.end method

.method private native nativeAddRequestHeader(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeCreateRequestAdapter(JLjava/lang/String;IZZZZIZI)J
.end method

.method private native nativeDestroy(JZ)V
.end method

.method private native nativeFollowDeferredRedirect(J)V
.end method

.method private native nativeGetStatus(JLorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V
.end method

.method private native nativeReadData(JLjava/nio/ByteBuffer;II)Z
.end method

.method private native nativeSetHttpMethod(JLjava/lang/String;)Z
.end method

.method private native nativeStart(J)V
.end method

.method private onCanceled()V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 673
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$6;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUrlRequest$6;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 684
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onError(IIILjava/lang/String;J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 653
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/p;->a(J)V

    :cond_0
    const/16 p5, 0xa

    const-string p6, "Exception in CronetUrlRequest: "

    if-eq p1, p5, :cond_2

    const/4 p5, 0x3

    if-ne p1, p5, :cond_1

    goto :goto_0

    .line 661
    :cond_1
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->d(I)I

    move-result p1

    .line 662
    new-instance p3, Lorg/chromium/net/impl/j;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p1, p2}, Lorg/chromium/net/impl/j;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p3}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    goto :goto_1

    .line 658
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

    invoke-direct {p0, p5}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    :goto_1
    return-void
.end method

.method private onMetricsCollected(JJJJJJJJJJJJJZJJ)V
    .locals 35
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object/from16 v1, p0

    .line 715
    iget-object v2, v1, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    :try_start_0
    iget-object v0, v1, Lorg/chromium/net/impl/CronetUrlRequest;->C:Lorg/chromium/net/impl/f;

    if-nez v0, :cond_0

    .line 719
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

    iput-object v0, v1, Lorg/chromium/net/impl/CronetUrlRequest;->C:Lorg/chromium/net/impl/f;

    .line 723
    monitor-exit v2

    return-void

    .line 717
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Metrics collection should only happen once."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 723
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNativeAdapterDestroyed()V
    .locals 4
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 734
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->E:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 736
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->E:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 740
    :cond_0
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->B:Lorg/chromium/net/e;

    if-nez v1, :cond_1

    .line 741
    monitor-exit v0

    return-void

    .line 743
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$8;

    invoke-direct {v0, p0}, Lorg/chromium/net/impl/CronetUrlRequest$8;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 756
    :try_start_1
    iget-object v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 758
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Exception posting task to executor"

    invoke-static {v1, v0, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 743
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onReadCompleted(Ljava/nio/ByteBuffer;IIIJ)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 593
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    invoke-virtual {v0, p5, p6}, Lorg/chromium/net/impl/p;->a(J)V

    .line 594
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p5

    const/4 p6, 0x0

    if-ne p5, p3, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p5

    if-eq p5, p4, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    iget-object p4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->D:Lorg/chromium/net/impl/CronetUrlRequest$a;

    if-nez p4, :cond_1

    .line 600
    new-instance p4, Lorg/chromium/net/impl/CronetUrlRequest$a;

    invoke-direct {p4, p0, p6}, Lorg/chromium/net/impl/CronetUrlRequest$a;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/CronetUrlRequest$1;)V

    iput-object p4, p0, Lorg/chromium/net/impl/CronetUrlRequest;->D:Lorg/chromium/net/impl/CronetUrlRequest$a;

    :cond_1
    add-int/2addr p3, p2

    .line 602
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 603
    iget-object p2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->D:Lorg/chromium/net/impl/CronetUrlRequest$a;

    iput-object p1, p2, Lorg/chromium/net/impl/CronetUrlRequest$a;->a:Ljava/nio/ByteBuffer;

    .line 604
    invoke-direct {p0, p2}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void

    .line 595
    :cond_2
    :goto_0
    new-instance p1, Lorg/chromium/net/impl/e;

    const-string p2, "ByteBuffer modified externally during read"

    invoke-direct {p1, p2, p6}, Lorg/chromium/net/impl/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    return-void
.end method

.method private onRedirectReceived(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    move-object v9, p0

    move-object v10, p1

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    .line 512
    invoke-direct/range {v0 .. v8}, Lorg/chromium/net/impl/CronetUrlRequest;->a(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/p;

    move-result-object v0

    .line 516
    iget-object v1, v9, Lorg/chromium/net/impl/CronetUrlRequest;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    new-instance v1, Lorg/chromium/net/impl/CronetUrlRequest$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/net/impl/CronetUrlRequest$3;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/p;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onResponseStarted(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 548
    invoke-direct/range {p0 .. p8}, Lorg/chromium/net/impl/CronetUrlRequest;->a(ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)Lorg/chromium/net/impl/p;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    .line 550
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$4;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequest$4;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 568
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onStatus(Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 695
    new-instance v0, Lorg/chromium/net/impl/CronetUrlRequest$7;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/net/impl/CronetUrlRequest$7;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;I)V

    .line 701
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSucceeded(J)V
    .locals 1
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .line 616
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->z:Lorg/chromium/net/impl/p;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/impl/p;->a(J)V

    .line 617
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$5;

    invoke-direct {p1, p0}, Lorg/chromium/net/impl/CronetUrlRequest$5;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    .line 636
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 17

    move-object/from16 v13, p0

    .line 204
    iget-object v14, v13, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v14

    .line 205
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequest;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v15, 0x1

    .line 208
    :try_start_1
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 209
    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->d()J

    move-result-wide v2

    iget-object v4, v13, Lorg/chromium/net/impl/CronetUrlRequest;->m:Ljava/lang/String;

    iget v5, v13, Lorg/chromium/net/impl/CronetUrlRequest;->n:I

    iget-boolean v6, v13, Lorg/chromium/net/impl/CronetUrlRequest;->r:Z

    iget-boolean v7, v13, Lorg/chromium/net/impl/CronetUrlRequest;->s:Z

    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    .line 211
    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a()Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_1

    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->x:Lorg/chromium/net/impl/VersionSafeCallbacks$e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v8, v16

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v15

    :goto_1
    iget-boolean v9, v13, Lorg/chromium/net/impl/CronetUrlRequest;->t:Z

    iget v10, v13, Lorg/chromium/net/impl/CronetUrlRequest;->u:I

    iget-boolean v11, v13, Lorg/chromium/net/impl/CronetUrlRequest;->v:Z

    iget v12, v13, Lorg/chromium/net/impl/CronetUrlRequest;->w:I

    move-object/from16 v1, p0

    .line 209
    invoke-direct/range {v1 .. v12}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeCreateRequestAdapter(JLjava/lang/String;IZZZZIZI)J

    move-result-wide v0

    iput-wide v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    .line 215
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequestContext;->b()V

    .line 216
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 217
    iget-wide v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    iget-object v2, v13, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    invoke-direct {v13, v0, v1, v2}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeSetHttpMethod(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 218
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_3
    :goto_2
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->p:Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

    invoke-virtual {v0}, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 224
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move/from16 v16, v15

    .line 228
    :cond_4
    iget-wide v2, v13, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    .line 229
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 228
    invoke-direct {v13, v2, v3, v4, v5}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeAddRequestHeader(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 230
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid header "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->y:Lorg/chromium/net/impl/CronetUploadDataStream;

    if-eqz v0, :cond_8

    if-eqz v16, :cond_7

    .line 239
    iput-boolean v15, v13, Lorg/chromium/net/impl/CronetUrlRequest;->e:Z

    .line 240
    iget-object v0, v13, Lorg/chromium/net/impl/CronetUrlRequest;->y:Lorg/chromium/net/impl/CronetUploadDataStream;

    new-instance v1, Lorg/chromium/net/impl/CronetUrlRequest$1;

    invoke-direct {v1, v13}, Lorg/chromium/net/impl/CronetUrlRequest$1;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;)V

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/CronetUploadDataStream;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 236
    :cond_7
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requests with upload data must have a Content-Type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :cond_8
    :try_start_4
    iput-boolean v15, v13, Lorg/chromium/net/impl/CronetUrlRequest;->e:Z

    .line 262
    invoke-direct/range {p0 .. p0}, Lorg/chromium/net/impl/CronetUrlRequest;->e()V

    .line 263
    monitor-exit v14

    return-void

    :catch_0
    move-exception v0

    .line 258
    invoke-direct {v13, v15}, Lorg/chromium/net/impl/CronetUrlRequest;->c(I)V

    .line 259
    throw v0

    :catchall_0
    move-exception v0

    .line 263
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 172
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->g()V

    if-eqz p1, :cond_0

    .line 176
    iput-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Method is required."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->g()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->p:Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/CronetUrlRequest$HeadersList;->add(Ljava/lang/Object;)Z

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header value."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid header name."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/Throwable;)V
    .locals 4

    .line 469
    new-instance v0, Lorg/chromium/net/impl/b;

    const-string v1, "Exception received from UploadDataProvider"

    invoke-direct {v0, v1, p1}, Lorg/chromium/net/impl/b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 471
    sget-object v1, Lorg/chromium/net/impl/CronetUrlRequestContext;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Exception in upload method"

    invoke-static {v1, p1, v2}, Lorg/chromium/base/e;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-direct {p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Lorg/chromium/net/e;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 7

    .line 293
    invoke-static {p1}, Lorg/chromium/net/impl/k;->b(Ljava/nio/ByteBuffer;)V

    .line 294
    invoke-static {p1}, Lorg/chromium/net/impl/k;->a(Ljava/nio/ByteBuffer;)V

    .line 295
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->g:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 299
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->g:Z

    .line 301
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    monitor-exit v0

    return-void

    .line 305
    :cond_0
    iget-wide v2, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeReadData(JLjava/nio/ByteBuffer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 311
    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->g:Z

    .line 309
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to call native read"

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 297
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected read attempt."

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 311
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "POST"

    .line 197
    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->o:Ljava/lang/String;

    .line 199
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/CronetUploadDataStream;

    invoke-direct {v0, p1, p2, p0}, Lorg/chromium/net/impl/CronetUploadDataStream;-><init>(Lorg/chromium/net/u;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/CronetUrlRequest;)V

    iput-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->y:Lorg/chromium/net/impl/CronetUploadDataStream;

    return-void

    .line 194
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid UploadDataProvider."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lorg/chromium/net/w$c;)V
    .locals 5

    .line 338
    new-instance v0, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;

    invoke-direct {v0, p1}, Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;-><init>(Lorg/chromium/net/w$c;)V

    .line 340
    iget-object p1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 341
    :try_start_0
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 342
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    invoke-direct {p0, v1, v2, v0}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeGetStatus(JLorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 343
    monitor-exit p1

    return-void

    .line 345
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    new-instance p1, Lorg/chromium/net/impl/CronetUrlRequest$2;

    invoke-direct {p1, p0, v0}, Lorg/chromium/net/impl/CronetUrlRequest$2;-><init>(Lorg/chromium/net/impl/CronetUrlRequest;Lorg/chromium/net/impl/VersionSafeCallbacks$UrlRequestStatusListener;)V

    .line 352
    invoke-direct {p0, p1}, Lorg/chromium/net/impl/CronetUrlRequest;->a(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    .line 345
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 3

    .line 277
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_0
    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->f:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 281
    iput-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->f:Z

    .line 283
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    monitor-exit v0

    return-void

    .line 287
    :cond_0
    iget-wide v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->d:J

    invoke-direct {p0, v1, v2}, Lorg/chromium/net/impl/CronetUrlRequest;->nativeFollowDeferredRedirect(J)V

    .line 288
    monitor-exit v0

    return-void

    .line 279
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No redirect to follow."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    .line 316
    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/impl/CronetUrlRequest;->f()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/chromium/net/impl/CronetUrlRequest;->e:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 320
    invoke-direct {p0, v1}, Lorg/chromium/net/impl/CronetUrlRequest;->c(I)V

    .line 321
    monitor-exit v0

    return-void

    .line 318
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 321
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method d()V
    .locals 2

    .line 764
    iget-boolean v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/net/impl/CronetUrlRequest;->i:Lorg/chromium/net/impl/CronetUrlRequestContext;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/impl/CronetUrlRequestContext;->a(Ljava/lang/Thread;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 765
    :cond_0
    new-instance v0, Lorg/chromium/net/k;

    invoke-direct {v0}, Lorg/chromium/net/k;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
