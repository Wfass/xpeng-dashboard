.class Lcom/google/common/cache/LocalCache$f;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lcom/google/common/cache/LocalCache$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/LocalCache$q<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/common/cache/LocalCache$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/k<",
            "TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3392
    invoke-static {}, Lcom/google/common/cache/LocalCache;->i()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/cache/LocalCache$f;-><init>(Lcom/google/common/cache/LocalCache$q;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/cache/LocalCache$q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3388
    invoke-static {}, Lcom/google/common/util/concurrent/k;->h()Lcom/google/common/util/concurrent/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$f;->b:Lcom/google/common/util/concurrent/k;

    .line 3389
    invoke-static {}, Lcom/google/common/base/t;->a()Lcom/google/common/base/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$f;->c:Lcom/google/common/base/t;

    .line 3396
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    return-void
.end method

.method private b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    .line 3423
    invoke-static {p1}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 3411
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/b<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    .line 3442
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->c:Lcom/google/common/base/t;

    invoke-virtual {v0}, Lcom/google/common/base/t;->b()Lcom/google/common/base/t;

    .line 3443
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3445
    invoke-virtual {p2, p1}, Lcom/google/common/cache/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3446
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$f;->b(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/common/cache/LocalCache$f;->b:Lcom/google/common/util/concurrent/k;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3448
    :cond_1
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 3450
    invoke-static {p1}, Lcom/google/common/util/concurrent/e;->a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    return-object p1

    .line 3454
    :cond_2
    new-instance p2, Lcom/google/common/cache/LocalCache$f$1;

    invoke-direct {p2, p0}, Lcom/google/common/cache/LocalCache$f$1;-><init>(Lcom/google/common/cache/LocalCache$f;)V

    .line 3463
    invoke-static {}, Lcom/google/common/util/concurrent/j;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 3454
    invoke-static {p1, p2, v0}, Lcom/google/common/util/concurrent/e;->a(Lcom/google/common/util/concurrent/i;Lcom/google/common/base/h;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/i;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3465
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$f;->a(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/common/cache/LocalCache$f;->b:Lcom/google/common/util/concurrent/k;

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$f;->b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/i;

    move-result-object p2

    .line 3466
    :goto_1
    instance-of p1, p1, Ljava/lang/InterruptedException;

    if-eqz p1, :cond_4

    .line 3467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    return-object p2
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3431
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$f;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3434
    :cond_0
    invoke-static {}, Lcom/google/common/cache/LocalCache;->i()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .line 3419
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->b:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public b()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 3415
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->b:Lcom/google/common/util/concurrent/k;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/k;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .line 3406
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v0

    return v0
.end method

.method public e()J
    .locals 2

    .line 3474
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->c:Lcom/google/common/base/t;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/t;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Lcom/google/common/cache/LocalCache$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3488
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3484
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$f;->a:Lcom/google/common/cache/LocalCache$q;

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
