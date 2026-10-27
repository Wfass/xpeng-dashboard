.class Lcom/google/common/cache/LocalCache$h;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:J

.field d:I

.field e:I

.field volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/common/cache/a$a;


# virtual methods
.method a(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lcom/google/common/cache/LocalCache$f<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2295
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2297
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 2298
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2300
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2301
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 2302
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/cache/c;

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 2306
    invoke-interface {v5}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2307
    invoke-interface {v5}, Lcom/google/common/cache/c;->c()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 2309
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2312
    invoke-interface {v5}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    .line 2313
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->c()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    .line 2314
    invoke-interface {v5}, Lcom/google/common/cache/c;->h()J

    move-result-wide p2

    sub-long/2addr v0, p2

    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-wide p2, p2, Lcom/google/common/cache/LocalCache;->m:J

    cmp-long p2, v0, p2

    if-gez p2, :cond_0

    goto :goto_1

    .line 2322
    :cond_0
    iget p2, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2323
    new-instance p2, Lcom/google/common/cache/LocalCache$f;

    invoke-direct {p2, p1}, Lcom/google/common/cache/LocalCache$f;-><init>(Lcom/google/common/cache/LocalCache$q;)V

    .line 2325
    invoke-interface {v5, p2}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/LocalCache$q;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2338
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object p2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2338
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object p1

    .line 2305
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v5

    goto :goto_0

    .line 2330
    :cond_3
    iget p3, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2331
    new-instance p3, Lcom/google/common/cache/LocalCache$f;

    invoke-direct {p3}, Lcom/google/common/cache/LocalCache$f;-><init>()V

    .line 2332
    invoke-virtual {p0, p1, p2, v4}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 2333
    invoke-interface {p1, p3}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/LocalCache$q;)V

    .line 2334
    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2338
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object p3

    :catchall_0
    move-exception p1

    .line 2337
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2338
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 2339
    throw p1
.end method

.method a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1987
    invoke-interface {p1}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1992
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    .line 1993
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1994
    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    .line 1999
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/LocalCache$b;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/common/cache/LocalCache$b;->a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 2000
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v0, p2, v2, p1}, Lcom/google/common/cache/LocalCache$q;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/c;)Lcom/google/common/cache/LocalCache$q;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/LocalCache$q;)V

    return-object p1
.end method

.method a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;TK;ITV;",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;",
            "Lcom/google/common/cache/d;",
            ")",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3147
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v4

    move-object v0, p0

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    .line 3148
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$h;->l:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3149
    iget-object p3, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {p3, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3151
    invoke-interface {p6}, Lcom/google/common/cache/LocalCache$q;->c()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3152
    invoke-interface {p6, p2}, Lcom/google/common/cache/LocalCache$q;->a(Ljava/lang/Object;)V

    return-object p1

    .line 3155
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Object;IJ)Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2606
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$h;->b(Ljava/lang/Object;I)Lcom/google/common/cache/c;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1, p3, p4}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/c;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2610
    invoke-virtual {p0, p3, p4}, Lcom/google/common/cache/LocalCache$h;->a(J)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1978
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->q:Lcom/google/common/cache/LocalCache$b;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$b;->a(Lcom/google/common/cache/LocalCache$h;Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$f<",
            "TK;TV;>;",
            "Lcom/google/common/cache/b<",
            "-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;"
        }
    .end annotation

    .line 2203
    invoke-virtual {p3, p1, p4}, Lcom/google/common/cache/LocalCache$f;->a(Ljava/lang/Object;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;

    move-result-object p4

    .line 2204
    new-instance v6, Lcom/google/common/cache/LocalCache$h$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$h$1;-><init>(Lcom/google/common/cache/LocalCache$h;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/util/concurrent/i;)V

    .line 2216
    invoke-static {}, Lcom/google/common/util/concurrent/j;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 2204
    invoke-interface {p4, v6, p1}, Lcom/google/common/util/concurrent/i;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p4
.end method

.method a(Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/b<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .line 2251
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2252
    invoke-interface {p1}, Lcom/google/common/cache/c;->h()J

    move-result-wide v0

    sub-long/2addr p5, v0

    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-wide v0, v0, Lcom/google/common/cache/LocalCache;->m:J

    cmp-long p5, p5, v0

    if-lez p5, :cond_0

    .line 2253
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->c()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2254
    invoke-virtual {p0, p2, p3, p7, p1}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/b;Z)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p4
.end method

.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 2060
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2061
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v7

    .line 2062
    invoke-virtual {p0, p1, p2, v7, v8}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;IJ)Lcom/google/common/cache/c;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 2076
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return-object v1

    .line 2067
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2069
    invoke-virtual {p0, v3, v7, v8}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;J)V

    .line 2070
    invoke-interface {v3}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v4

    iget-object p1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v9, p1, Lcom/google/common/cache/LocalCache;->r:Lcom/google/common/cache/b;

    move-object v2, p0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/b;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2076
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return-object p1

    .line 2072
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2076
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    .line 2077
    throw p1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/util/concurrent/i;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$f<",
            "TK;TV;>;",
            "Lcom/google/common/util/concurrent/i<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 2229
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/l;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p4, :cond_1

    .line 2233
    :try_start_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->n:Lcom/google/common/cache/a$a;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$f;->e()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/a$a;->a(J)V

    .line 2234
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p4, :cond_0

    .line 2238
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->n:Lcom/google/common/cache/a$a;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$f;->e()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/google/common/cache/a$a;->b(J)V

    .line 2239
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;)Z

    :cond_0
    return-object p4

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 2231
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/common/cache/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CacheLoader returned null for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/b$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_2

    .line 2238
    iget-object p4, p0, Lcom/google/common/cache/LocalCache$h;->n:Lcom/google/common/cache/a$a;

    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$f;->e()J

    move-result-wide v1

    invoke-interface {p4, v1, v2}, Lcom/google/common/cache/a$a;->b(J)V

    .line 2239
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;)Z

    .line 2241
    :cond_2
    throw v0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/b;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/b<",
            "-TK;TV;>;Z)TV;"
        }
    .end annotation

    .line 2271
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;IZ)Lcom/google/common/cache/LocalCache$f;

    move-result-object p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    .line 2276
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Lcom/google/common/cache/b;)Lcom/google/common/util/concurrent/i;

    move-result-object p1

    .line 2277
    invoke-interface {p1}, Lcom/google/common/util/concurrent/i;->isDone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2279
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/l;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_1
    return-object v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    .line 2893
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2895
    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v1}, Lcom/google/common/base/x;->a()J

    move-result-wide v7

    .line 2896
    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2898
    iget-object v10, v9, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2899
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v0, v1

    .line 2900
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/c;

    move-object v12, v2

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_0

    .line 2903
    invoke-interface {v12}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v4

    .line 2904
    invoke-interface {v12}, Lcom/google/common/cache/c;->c()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v1, v9, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    move-object/from16 v14, p1

    .line 2906
    invoke-virtual {v1, v14, v4}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2907
    invoke-interface {v12}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v15

    .line 2908
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v16

    if-nez v16, :cond_1

    .line 2910
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2912
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2913
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2914
    sget-object v8, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v5, p2

    move-object/from16 v6, v16

    move-object v7, v15

    .line 2915
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object v0

    .line 2923
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2924
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2925
    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object v13

    .line 2930
    :cond_1
    :try_start_1
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2932
    invoke-interface {v15}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/d;->REPLACED:Lcom/google/common/cache/d;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, v16

    .line 2931
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-wide v5, v7

    .line 2933
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2934
    invoke-virtual {v9, v12}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object v16

    :cond_2
    move-object/from16 v14, p1

    .line 2902
    :cond_3
    :try_start_2
    invoke-interface {v12}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 2941
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2942
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 2943
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move/from16 v3, p2

    .line 2687
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2689
    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v1}, Lcom/google/common/base/x;->a()J

    move-result-wide v8

    .line 2690
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2692
    iget v1, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 2693
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->e:I

    if-le v1, v2, :cond_0

    .line 2694
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->j()V

    .line 2695
    iget v1, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2698
    :cond_0
    iget-object v10, v7, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2699
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v11, v3, v1

    .line 2700
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/c;

    move-object v12, v1

    :goto_0
    const/4 v13, 0x0

    if-eqz v12, :cond_5

    .line 2704
    invoke-interface {v12}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v2

    .line 2705
    invoke-interface {v12}, Lcom/google/common/cache/c;->c()I

    move-result v4

    if-ne v4, v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, v7, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 2707
    invoke-virtual {v4, p1, v2}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2710
    invoke-interface {v12}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v1

    .line 2711
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_2

    .line 2714
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2715
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2717
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    .line 2716
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 2718
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2719
    iget v0, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    goto :goto_1

    :cond_1
    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 2721
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2722
    iget v0, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2724
    :goto_1
    iput v0, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2725
    invoke-virtual {p0, v12}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2756
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object v13

    :cond_2
    if-eqz p4, :cond_3

    .line 2731
    :try_start_1
    invoke-virtual {p0, v12, v8, v9}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2755
    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2756
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object v10

    .line 2735
    :cond_3
    :try_start_2
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2737
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v5

    sget-object v6, Lcom/google/common/cache/d;->REPLACED:Lcom/google/common/cache/d;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object v4, v10

    .line 2736
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 2738
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2739
    invoke-virtual {p0, v12}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V

    goto :goto_3

    .line 2703
    :cond_4
    invoke-interface {v12}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v12

    goto/16 :goto_0

    .line 2746
    :cond_5
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2747
    invoke-virtual {p0, p1, v3, v1}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object v12

    move-object v1, p0

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p3

    move-wide v5, v8

    .line 2748
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2749
    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2750
    iget v0, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2751
    iput v0, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2752
    invoke-virtual {p0, v12}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2755
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2756
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 2757
    throw v0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1964
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .locals 1

    .line 2346
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2348
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2350
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2351
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method a(J)V
    .locals 1

    .line 2490
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2492
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$h;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2496
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method a(Lcom/google/common/cache/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2540
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2544
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->h()V

    .line 2548
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$h;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2549
    invoke-interface {p1}, Lcom/google/common/cache/c;->c()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/d;->SIZE:Lcom/google/common/cache/d;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;ILcom/google/common/cache/d;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2550
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2554
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$h;->c:J

    iget-wide v2, p0, Lcom/google/common/cache/LocalCache$h;->g:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    .line 2555
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->i()Lcom/google/common/cache/c;

    move-result-object p1

    .line 2556
    invoke-interface {p1}, Lcom/google/common/cache/c;->c()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/d;->SIZE:Lcom/google/common/cache/d;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;ILcom/google/common/cache/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 2557
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_4
    return-void
.end method

.method a(Lcom/google/common/cache/c;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;IJ)V"
        }
    .end annotation

    .line 2453
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->h()V

    .line 2454
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$h;->c:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$h;->c:J

    .line 2456
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {p2}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2457
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/c;->a(J)V

    .line 2459
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {p2}, Lcom/google/common/cache/LocalCache;->e()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2460
    invoke-interface {p1, p3, p4}, Lcom/google/common/cache/c;->b(J)V

    .line 2462
    :cond_1
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2463
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->l:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/google/common/cache/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2425
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2426
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/c;->a(J)V

    .line 2428
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->j:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .line 2007
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    .line 2008
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->j:Lcom/google/common/cache/g;

    invoke-interface {v1, p2, p3}, Lcom/google/common/cache/g;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Weights must be non-negative"

    .line 2009
    invoke-static {v1, v2}, Lcom/google/common/base/o;->b(ZLjava/lang/Object;)V

    .line 2011
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->h:Lcom/google/common/cache/LocalCache$j;

    .line 2012
    invoke-virtual {v1, p0, p1, p3, p2}, Lcom/google/common/cache/LocalCache$j;->a(Lcom/google/common/cache/LocalCache$h;Lcom/google/common/cache/c;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$q;

    move-result-object v1

    .line 2013
    invoke-interface {p1, v1}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/LocalCache$q;)V

    .line 2014
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;IJ)V

    .line 2015
    invoke-interface {v0, p3}, Lcom/google/common/cache/LocalCache$q;->a(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;I",
            "Lcom/google/common/cache/d;",
            ")V"
        }
    .end annotation

    .line 2522
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache$h;->c:J

    int-to-long v2, p4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/cache/LocalCache$h;->c:J

    .line 2523
    invoke-virtual {p5}, Lcom/google/common/cache/d;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2524
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->n:Lcom/google/common/cache/a$a;

    invoke-interface {p2}, Lcom/google/common/cache/a$a;->a()V

    .line 2526
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object p2, p2, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    sget-object p4, Lcom/google/common/cache/LocalCache;->t:Ljava/util/Queue;

    if-eq p2, p4, :cond_1

    .line 2527
    invoke-static {p1, p3, p5}, Lcom/google/common/cache/f;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/d;)Lcom/google/common/cache/f;

    move-result-object p1

    .line 2528
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object p2, p2, Lcom/google/common/cache/LocalCache;->n:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method a(Lcom/google/common/cache/c;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;I)Z"
        }
    .end annotation

    .line 3192
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 3194
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3195
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3197
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/c;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 3201
    iget p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3206
    invoke-interface {v6}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v7

    .line 3208
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3209
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v10

    sget-object v11, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object v4, p0

    move v8, p2

    .line 3203
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 3211
    iget p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    sub-int/2addr p2, v2

    .line 3212
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3213
    iput p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3221
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v2

    .line 3199
    :cond_0
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3221
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return p1

    :catchall_0
    move-exception p1

    .line 3220
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3221
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3222
    throw p1
.end method

.method a(Lcom/google/common/cache/c;ILcom/google/common/cache/d;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;I",
            "Lcom/google/common/cache/d;",
            ")Z"
        }
    .end annotation

    .line 3305
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3306
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3307
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3308
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/c;

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_1

    if-ne v6, p1, :cond_0

    .line 3312
    iget p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3317
    invoke-interface {v6}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v7

    .line 3319
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3320
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v10

    move-object v4, p0

    move v8, p2

    move-object v11, p3

    .line 3314
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 3322
    iget p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    sub-int/2addr p2, v2

    .line 3323
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3324
    iput p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    return v2

    .line 3310
    :cond_0
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$f<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3270
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 3272
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3273
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3274
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/c;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 3277
    invoke-interface {v4}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v6

    .line 3278
    invoke-interface {v4}, Lcom/google/common/cache/c;->c()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v7, v7, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 3280
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3281
    invoke-interface {v4}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 3283
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$f;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3284
    invoke-virtual {p3}, Lcom/google/common/cache/LocalCache$f;->f()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {v4, p1}, Lcom/google/common/cache/c;->a(Lcom/google/common/cache/LocalCache$q;)V

    goto :goto_1

    .line 3286
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 3287
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3297
    :goto_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3298
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v2

    .line 3297
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3298
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v5

    .line 3276
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3297
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3298
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3299
    throw p1
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$f;Ljava/lang/Object;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$f<",
            "TK;TV;>;TV;)Z"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p1

    move/from16 v3, p2

    .line 3041
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 3043
    :try_start_0
    iget-object v1, v7, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v1}, Lcom/google/common/base/x;->a()J

    move-result-wide v8

    .line 3044
    invoke-virtual {p0, v8, v9}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 3046
    iget v1, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 3047
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->e:I

    if-le v1, v2, :cond_0

    .line 3048
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->j()V

    .line 3049
    iget v1, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/2addr v1, v10

    :cond_0
    move v11, v1

    .line 3052
    iget-object v12, v7, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3053
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    sub-int/2addr v1, v10

    and-int v13, v3, v1

    .line 3054
    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/c;

    move-object v14, v1

    :goto_0
    if-eqz v14, :cond_6

    .line 3057
    invoke-interface {v14}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v2

    .line 3058
    invoke-interface {v14}, Lcom/google/common/cache/c;->c()I

    move-result v4

    if-ne v4, v3, :cond_5

    if-eqz v2, :cond_5

    iget-object v4, v7, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 3060
    invoke-virtual {v4, v0, v2}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3061
    invoke-interface {v14}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v1

    .line 3062
    invoke-interface {v1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v2, p3

    if-eq v2, v1, :cond_2

    if-nez v4, :cond_1

    .line 3065
    sget-object v5, Lcom/google/common/cache/LocalCache;->s:Lcom/google/common/cache/LocalCache$q;

    if-eq v1, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 3081
    sget-object v6, Lcom/google/common/cache/d;->REPLACED:Lcom/google/common/cache/d;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v0

    .line 3067
    :cond_2
    :goto_1
    :try_start_1
    iget v1, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3068
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$f;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v4, :cond_3

    .line 3069
    sget-object v1, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/google/common/cache/d;->REPLACED:Lcom/google/common/cache/d;

    :goto_2
    move-object v6, v1

    .line 3071
    invoke-virtual/range {p3 .. p3}, Lcom/google/common/cache/LocalCache$f;->a()I

    move-result v5

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    add-int/lit8 v11, v11, -0x1

    :cond_4
    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    .line 3074
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3075
    iput v11, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3076
    invoke-virtual {p0, v14}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3094
    :goto_3
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v10

    :cond_5
    move-object/from16 v2, p3

    .line 3056
    :try_start_2
    invoke-interface {v14}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v14

    goto :goto_0

    .line 3086
    :cond_6
    iget v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr v2, v10

    iput v2, v7, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3087
    invoke-virtual {p0, v0, v3, v1}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object v14

    move-object v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v8

    .line 3088
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3089
    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3090
    iput v11, v7, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3091
    invoke-virtual {p0, v14}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 3094
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3095
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3096
    throw v0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$q;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3227
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 3229
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3230
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3231
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3232
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/c;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_4

    .line 3235
    invoke-interface {v6}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v7

    .line 3236
    invoke-interface {v6}, Lcom/google/common/cache/c;->c()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 3238
    invoke-virtual {v4, p1, v7}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3239
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    if-ne p1, p3, :cond_1

    .line 3241
    iget p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3248
    invoke-interface {p3}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v9

    sget-object v11, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object v4, p0

    move v8, p2

    move-object v10, p3

    .line 3243
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object p1

    .line 3251
    iget p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    sub-int/2addr p2, v2

    .line 3252
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3253
    iput p2, p0, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    :cond_0
    return v2

    .line 3262
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    :cond_2
    return v3

    .line 3234
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3262
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->isHeldByCurrentThread()Z

    move-result p1

    if-nez p1, :cond_5

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    :cond_5
    return v3

    :catchall_0
    move-exception p1

    .line 3262
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3263
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->isHeldByCurrentThread()Z

    move-result p2

    if-nez p2, :cond_6

    .line 3264
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3266
    :cond_6
    throw p1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v0, p2

    .line 2831
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2833
    :try_start_0
    iget-object v1, v9, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v1}, Lcom/google/common/base/x;->a()J

    move-result-wide v7

    .line 2834
    invoke-virtual {v9, v7, v8}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2836
    iget-object v10, v9, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2837
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    and-int v12, v0, v1

    .line 2838
    invoke-virtual {v10, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/common/cache/c;

    move-object v13, v2

    :goto_0
    const/4 v14, 0x0

    if-eqz v13, :cond_0

    .line 2841
    invoke-interface {v13}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v4

    .line 2842
    invoke-interface {v13}, Lcom/google/common/cache/c;->c()I

    move-result v1

    if-ne v1, v0, :cond_3

    if-eqz v4, :cond_3

    iget-object v1, v9, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    move-object/from16 v15, p1

    .line 2844
    invoke-virtual {v1, v15, v4}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2845
    invoke-interface {v13}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v16

    .line 2846
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2848
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2850
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2851
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2852
    sget-object v8, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object/from16 v1, p0

    move-object v3, v13

    move/from16 v5, p2

    move-object/from16 v7, v16

    .line 2853
    invoke-virtual/range {v1 .. v8}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object v0

    .line 2861
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I

    sub-int/2addr v1, v11

    .line 2862
    invoke-virtual {v10, v12, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2863
    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2886
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v14

    .line 2868
    :cond_1
    :try_start_1
    iget-object v1, v9, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v1, v1, Lcom/google/common/cache/LocalCache;->f:Lcom/google/common/base/f;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2869
    iget v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr v1, v11

    iput v1, v9, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 2871
    invoke-interface/range {v16 .. v16}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v5

    sget-object v10, Lcom/google/common/cache/d;->REPLACED:Lcom/google/common/cache/d;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object v4, v6

    move-object v6, v10

    .line 2870
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    move-object/from16 v1, p0

    move-object v2, v13

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-wide v5, v7

    .line 2872
    invoke-virtual/range {v1 .. v6}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2873
    invoke-virtual {v9, v13}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v11

    .line 2878
    :cond_2
    :try_start_2
    invoke-virtual {v9, v13, v7, v8}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;J)V

    goto :goto_1

    :cond_3
    move-object/from16 v15, p1

    :cond_4
    move-object/from16 v3, p3

    .line 2840
    invoke-interface {v13}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 2886
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2887
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 2888
    throw v0
.end method

.method b(I)Lcom/google/common/cache/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2577
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2578
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/c;

    return-object p1
.end method

.method b(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3163
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3164
    invoke-interface {p2}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 3166
    invoke-virtual {p0, p1, v1}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 3170
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;)V

    add-int/lit8 v0, v0, -0x1

    .line 3165
    :goto_1
    invoke-interface {p1}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object p1

    goto :goto_0

    .line 3174
    :cond_1
    iput v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    return-object v1
.end method

.method b(Ljava/lang/Object;I)Lcom/google/common/cache/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2585
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache$h;->b(I)Lcom/google/common/cache/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2586
    invoke-interface {v0}, Lcom/google/common/cache/c;->c()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 2590
    :cond_0
    invoke-interface {v0}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2592
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->a()V

    goto :goto_1

    .line 2596
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v2, v2, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 2585
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method b()V
    .locals 1

    .line 2361
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2362
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->c()V

    .line 2364
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2365
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->d()V

    :cond_1
    return-void
.end method

.method b(J)V
    .locals 3

    .line 2502
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->h()V

    .line 2505
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/c;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2506
    invoke-interface {v0}, Lcom/google/common/cache/c;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/d;->EXPIRED:Lcom/google/common/cache/d;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;ILcom/google/common/cache/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2507
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2510
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/c;J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2511
    invoke-interface {v0}, Lcom/google/common/cache/c;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/d;->EXPIRED:Lcom/google/common/cache/d;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;ILcom/google/common/cache/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 2512
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    return-void
.end method

.method b(Lcom/google/common/cache/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3181
    invoke-interface {p1}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v1

    .line 3182
    invoke-interface {p1}, Lcom/google/common/cache/c;->c()I

    move-result v2

    .line 3183
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3184
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v4

    sget-object v5, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    move-object v0, p0

    .line 3180
    invoke-virtual/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    .line 3186
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3187
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/google/common/cache/c;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;J)V"
        }
    .end annotation

    .line 2440
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2441
    invoke-interface {p1, p2, p3}, Lcom/google/common/cache/c;->a(J)V

    .line 2443
    :cond_0
    iget-object p2, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 12

    .line 2994
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2996
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 2997
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2999
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3000
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3001
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 3002
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/google/common/cache/c;

    move-object v6, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v6, :cond_2

    .line 3005
    invoke-interface {v6}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v7

    .line 3006
    invoke-interface {v6}, Lcom/google/common/cache/c;->c()I

    move-result v4

    if-ne v4, p2, :cond_3

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 3008
    invoke-virtual {v4, p1, v7}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3009
    invoke-interface {v6}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v10

    .line 3010
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v9

    .line 3013
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object p1, p1, Lcom/google/common/cache/LocalCache;->f:Lcom/google/common/base/f;

    invoke-virtual {p1, p3, v9}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3014
    sget-object p1, Lcom/google/common/cache/d;->EXPLICIT:Lcom/google/common/cache/d;

    goto :goto_1

    :cond_0
    if-nez v9, :cond_2

    .line 3015
    invoke-interface {v10}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3016
    sget-object p1, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    .line 3022
    :goto_1
    iget p3, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/2addr p3, v2

    iput p3, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    move-object v4, p0

    move v8, p2

    move-object v11, p1

    .line 3024
    invoke-virtual/range {v4 .. v11}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object p2

    .line 3025
    iget p3, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    sub-int/2addr p3, v2

    .line 3026
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3027
    iput p3, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 3028
    sget-object p2, Lcom/google/common/cache/d;->EXPLICIT:Lcom/google/common/cache/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    .line 3034
    :goto_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3035
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v2

    .line 3034
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3035
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return v3

    .line 3004
    :cond_3
    :try_start_1
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3034
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3035
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3036
    throw p1
.end method

.method c(Lcom/google/common/cache/c;J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .line 2621
    invoke-interface {p1}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2622
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->a()V

    return-object v1

    .line 2625
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2627
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->a()V

    return-object v1

    .line 2631
    :cond_1
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->b(Lcom/google/common/cache/c;J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2632
    invoke-virtual {p0, p2, p3}, Lcom/google/common/cache/LocalCache$h;->a(J)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method c()V
    .locals 3

    const/4 v0, 0x0

    .line 2373
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2375
    check-cast v1, Lcom/google/common/cache/c;

    .line 2376
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/c;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method c(J)V
    .locals 0

    .line 3350
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$h;->d(J)V

    return-void
.end method

.method c(Ljava/lang/Object;I)Z
    .locals 4

    .line 2640
    :try_start_0
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2641
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v2

    .line 2642
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;IJ)Lcom/google/common/cache/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return v1

    .line 2646
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 2651
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->l()V

    .line 2652
    throw p1
.end method

.method d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 2948
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 2950
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 2951
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 2953
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    .line 2954
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2955
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 2956
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/google/common/cache/c;

    move-object v5, v4

    :goto_0
    const/4 v2, 0x0

    if-eqz v5, :cond_1

    .line 2959
    invoke-interface {v5}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2960
    invoke-interface {v5}, Lcom/google/common/cache/c;->c()I

    move-result v3

    if-ne v3, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v3, v3, Lcom/google/common/cache/LocalCache;->e:Lcom/google/common/base/f;

    .line 2962
    invoke-virtual {v3, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2963
    invoke-interface {v5}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v9

    .line 2964
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2968
    sget-object v2, Lcom/google/common/cache/d;->EXPLICIT:Lcom/google/common/cache/d;

    :goto_1
    move-object v10, v2

    goto :goto_2

    .line 2969
    :cond_0
    invoke-interface {v9}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2970
    sget-object v2, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    goto :goto_1

    .line 2976
    :goto_2
    iget v2, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    move-object v3, p0

    move v7, p2

    move-object v8, p1

    .line 2978
    invoke-virtual/range {v3 .. v10}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/cache/LocalCache$q;Lcom/google/common/cache/d;)Lcom/google/common/cache/c;

    move-result-object p2

    .line 2979
    iget v2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2980
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2981
    iput v2, p0, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2989
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object p1

    .line 2988
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2989
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    return-object v2

    .line 2958
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2988
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 2989
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 2990
    throw p1
.end method

.method d()V
    .locals 3

    const/4 v0, 0x0

    .line 2387
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2389
    check-cast v1, Lcom/google/common/cache/LocalCache$q;

    .line 2390
    iget-object v2, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v2, v1}, Lcom/google/common/cache/LocalCache;->a(Lcom/google/common/cache/LocalCache$q;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method d(J)V
    .locals 1

    .line 3365
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3367
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->b()V

    .line 3368
    invoke-virtual {p0, p1, p2}, Lcom/google/common/cache/LocalCache$h;->b(J)V

    .line 3369
    iget-object p1, p0, Lcom/google/common/cache/LocalCache$h;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3371
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3372
    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method e()V
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2400
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->f()V

    .line 2402
    :cond_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2403
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->g()V

    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .line 2408
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method g()V
    .locals 1

    .line 2412
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    .line 2475
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/c;

    if-eqz v0, :cond_1

    .line 2480
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2481
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method i()Lcom/google/common/cache/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2565
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/c;

    .line 2566
    invoke-interface {v1}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v2

    if-lez v2, :cond_0

    return-object v1

    .line 2571
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method j()V
    .locals 11

    .line 2763
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2764
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 2779
    :cond_0
    iget v2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 2780
    invoke-virtual {p0, v3}, Lcom/google/common/cache/LocalCache$h;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 2781
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/cache/LocalCache$h;->e:I

    .line 2782
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 2786
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/cache/c;

    if-eqz v6, :cond_5

    .line 2789
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v7

    .line 2790
    invoke-interface {v6}, Lcom/google/common/cache/c;->c()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 2794
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 2802
    invoke-interface {v7}, Lcom/google/common/cache/c;->c()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 2801
    :cond_2
    invoke-interface {v7}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v7

    goto :goto_1

    .line 2809
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 2813
    invoke-interface {v6}, Lcom/google/common/cache/c;->c()I

    move-result v7

    and-int/2addr v7, v4

    .line 2814
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/cache/c;

    .line 2815
    invoke-virtual {p0, v6, v8}, Lcom/google/common/cache/LocalCache$h;->a(Lcom/google/common/cache/c;Lcom/google/common/cache/c;)Lcom/google/common/cache/c;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2817
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    .line 2819
    :cond_4
    invoke-virtual {p0, v6}, Lcom/google/common/cache/LocalCache$h;->b(Lcom/google/common/cache/c;)V

    add-int/lit8 v2, v2, -0x1

    .line 2812
    :goto_3
    invoke-interface {v6}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2826
    :cond_6
    iput-object v3, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2827
    iput v2, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    return-void
.end method

.method k()V
    .locals 11

    .line 3100
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->b:I

    if-eqz v0, :cond_6

    .line 3101
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->lock()V

    .line 3103
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 3104
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$h;->c(J)V

    .line 3106
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    .line 3107
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3108
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/cache/c;

    :goto_1
    if-eqz v3, :cond_3

    .line 3110
    invoke-interface {v3}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$q;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3111
    invoke-interface {v3}, Lcom/google/common/cache/c;->d()Ljava/lang/Object;

    move-result-object v6

    .line 3112
    invoke-interface {v3}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$q;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v6, :cond_1

    if-nez v8, :cond_0

    goto :goto_2

    .line 3113
    :cond_0
    sget-object v4, Lcom/google/common/cache/d;->EXPLICIT:Lcom/google/common/cache/d;

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v4, Lcom/google/common/cache/d;->COLLECTED:Lcom/google/common/cache/d;

    :goto_3
    move-object v10, v4

    .line 3116
    invoke-interface {v3}, Lcom/google/common/cache/c;->c()I

    move-result v7

    invoke-interface {v3}, Lcom/google/common/cache/c;->a()Lcom/google/common/cache/LocalCache$q;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/common/cache/LocalCache$q;->a()I

    move-result v9

    move-object v5, p0

    .line 3115
    invoke-virtual/range {v5 .. v10}, Lcom/google/common/cache/LocalCache$h;->a(Ljava/lang/Object;ILjava/lang/Object;ILcom/google/common/cache/d;)V

    .line 3108
    :cond_2
    invoke-interface {v3}, Lcom/google/common/cache/c;->b()Lcom/google/common/cache/c;

    move-result-object v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v1

    .line 3120
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x0

    .line 3121
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3123
    :cond_5
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->e()V

    .line 3124
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3125
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3126
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3128
    iget v0, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/cache/LocalCache$h;->d:I

    .line 3129
    iput v1, p0, Lcom/google/common/cache/LocalCache$h;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 3131
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->unlock()V

    .line 3132
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->m()V

    .line 3133
    throw v0

    :cond_6
    :goto_5
    return-void
.end method

.method l()V
    .locals 1

    .line 3337
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3338
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->n()V

    :cond_0
    return-void
.end method

.method m()V
    .locals 0

    .line 3355
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->o()V

    return-void
.end method

.method n()V
    .locals 2

    .line 3359
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    iget-object v0, v0, Lcom/google/common/cache/LocalCache;->p:Lcom/google/common/base/x;

    invoke-virtual {v0}, Lcom/google/common/base/x;->a()J

    move-result-wide v0

    .line 3360
    invoke-virtual {p0, v0, v1}, Lcom/google/common/cache/LocalCache$h;->d(J)V

    .line 3361
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->o()V

    return-void
.end method

.method o()V
    .locals 1

    .line 3378
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache$h;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3379
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$h;->a:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->k()V

    :cond_0
    return-void
.end method
