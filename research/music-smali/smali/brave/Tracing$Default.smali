.class final Lbrave/Tracing$Default;
.super Lbrave/Tracing;
.source "Tracing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbrave/Tracing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Default"
.end annotation


# instance fields
.field final b:Lbrave/Tracer;

.field final c:Lbrave/propagation/Propagation$Factory;

.field final d:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lbrave/propagation/CurrentTraceContext;

.field final f:Lbrave/sampler/Sampler;

.field final g:Lbrave/Clock;

.field final h:Lbrave/ErrorParser;

.field final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbrave/Tracing$Builder;)V
    .locals 14

    .line 364
    invoke-direct {p0}, Lbrave/Tracing;-><init>()V

    .line 365
    iget-object v0, p1, Lbrave/Tracing$Builder;->e:Lbrave/Clock;

    iput-object v0, p0, Lbrave/Tracing$Default;->g:Lbrave/Clock;

    .line 366
    iget-object v0, p1, Lbrave/Tracing$Builder;->k:Lbrave/ErrorParser;

    iput-object v0, p0, Lbrave/Tracing$Default;->h:Lbrave/ErrorParser;

    .line 367
    iget-object v0, p1, Lbrave/Tracing$Builder;->j:Lbrave/propagation/Propagation$Factory;

    iput-object v0, p0, Lbrave/Tracing$Default;->c:Lbrave/propagation/Propagation$Factory;

    .line 368
    iget-object v0, p1, Lbrave/Tracing$Builder;->j:Lbrave/propagation/Propagation$Factory;

    sget-object v1, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    invoke-virtual {v0, v1}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v0

    iput-object v0, p0, Lbrave/Tracing$Default;->d:Lbrave/propagation/Propagation;

    .line 369
    iget-object v0, p1, Lbrave/Tracing$Builder;->g:Lbrave/propagation/CurrentTraceContext;

    iput-object v0, p0, Lbrave/Tracing$Default;->e:Lbrave/propagation/CurrentTraceContext;

    .line 370
    iget-object v0, p1, Lbrave/Tracing$Builder;->f:Lbrave/sampler/Sampler;

    iput-object v0, p0, Lbrave/Tracing$Default;->f:Lbrave/sampler/Sampler;

    .line 371
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 373
    iget-object v0, p1, Lbrave/Tracing$Builder;->l:Ljava/util/List;

    .line 376
    sget-object v1, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    .line 377
    iget-object v2, p1, Lbrave/Tracing$Builder;->d:Lzipkin2/reporter/Reporter;

    sget-object v3, Lzipkin2/reporter/Reporter;->NOOP:Lzipkin2/reporter/Reporter;

    if-eq v2, v3, :cond_0

    .line 378
    new-instance v1, Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    iget-object v5, p1, Lbrave/Tracing$Builder;->d:Lzipkin2/reporter/Reporter;

    iget-object v6, p0, Lbrave/Tracing$Default;->h:Lbrave/ErrorParser;

    iget-object v7, p1, Lbrave/Tracing$Builder;->a:Ljava/lang/String;

    iget-object v8, p1, Lbrave/Tracing$Builder;->b:Ljava/lang/String;

    iget v9, p1, Lbrave/Tracing$Builder;->c:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lbrave/internal/handler/ZipkinFinishedSpanHandler;-><init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 386
    :cond_0
    invoke-static {v0}, Lbrave/internal/handler/FinishedSpanHandlers;->compose(Ljava/util/List;)Lbrave/handler/FinishedSpanHandler;

    move-result-object v0

    iget-object v2, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v2}, Lbrave/internal/handler/FinishedSpanHandlers;->noopAware(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbrave/handler/FinishedSpanHandler;

    move-result-object v6

    .line 388
    new-instance v0, Lbrave/Tracer;

    iget-object v4, p1, Lbrave/Tracing$Builder;->e:Lbrave/Clock;

    iget-object v5, p1, Lbrave/Tracing$Builder;->j:Lbrave/propagation/Propagation$Factory;

    new-instance v7, Lbrave/internal/recorder/PendingSpans;

    iget-object v2, p0, Lbrave/Tracing$Default;->g:Lbrave/Clock;

    iget-object v3, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v2, v1, v3}, Lbrave/internal/recorder/PendingSpans;-><init>(Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v8, p1, Lbrave/Tracing$Builder;->f:Lbrave/sampler/Sampler;

    iget-object v9, p1, Lbrave/Tracing$Builder;->g:Lbrave/propagation/CurrentTraceContext;

    iget-boolean v1, p1, Lbrave/Tracing$Builder;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Lbrave/Tracing$Default;->c:Lbrave/propagation/Propagation$Factory;

    .line 395
    invoke-virtual {v1}, Lbrave/propagation/Propagation$Factory;->requires128BitTraceId()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v10, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v3

    :goto_1
    iget-boolean p1, p1, Lbrave/Tracing$Builder;->i:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lbrave/Tracing$Default;->c:Lbrave/propagation/Propagation$Factory;

    .line 396
    invoke-virtual {p1}, Lbrave/propagation/Propagation$Factory;->supportsJoin()Z

    move-result p1

    if-eqz p1, :cond_3

    move v11, v3

    goto :goto_2

    :cond_3
    move v11, v2

    .line 397
    :goto_2
    invoke-virtual {v6}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v12

    iget-object v13, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lbrave/Tracer;-><init>(Lbrave/Clock;Lbrave/propagation/Propagation$Factory;Lbrave/handler/FinishedSpanHandler;Lbrave/internal/recorder/PendingSpans;Lbrave/sampler/Sampler;Lbrave/propagation/CurrentTraceContext;ZZZLjava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v0, p0, Lbrave/Tracing$Default;->b:Lbrave/Tracer;

    .line 400
    invoke-direct {p0}, Lbrave/Tracing$Default;->maybeSetCurrent()V

    return-void
.end method

.method private maybeSetCurrent()V
    .locals 2

    .line 436
    sget-object v0, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    const-class v0, Lbrave/Tracing;

    monitor-enter v0

    .line 438
    :try_start_0
    sget-object v1, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    if-nez v1, :cond_1

    sput-object p0, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    .line 439
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 443
    sget-object v0, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    if-eq v0, p0, :cond_0

    return-void

    .line 445
    :cond_0
    const-class v0, Lbrave/Tracing;

    monitor-enter v0

    .line 446
    :try_start_0
    sget-object v1, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    if-ne v1, p0, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lbrave/Tracing$Default;->a:Lbrave/Tracing;

    .line 447
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public currentTraceContext()Lbrave/propagation/CurrentTraceContext;
    .locals 1

    .line 420
    iget-object v0, p0, Lbrave/Tracing$Default;->e:Lbrave/propagation/CurrentTraceContext;

    return-object v0
.end method

.method public errorParser()Lbrave/ErrorParser;
    .locals 1

    .line 424
    iget-object v0, p0, Lbrave/Tracing$Default;->h:Lbrave/ErrorParser;

    return-object v0
.end method

.method public isNoop()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public propagation()Lbrave/propagation/Propagation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lbrave/Tracing$Default;->d:Lbrave/propagation/Propagation;

    return-object v0
.end method

.method public propagationFactory()Lbrave/propagation/Propagation$Factory;
    .locals 1

    .line 412
    iget-object v0, p0, Lbrave/Tracing$Default;->c:Lbrave/propagation/Propagation$Factory;

    return-object v0
.end method

.method public sampler()Lbrave/sampler/Sampler;
    .locals 1

    .line 416
    iget-object v0, p0, Lbrave/Tracing$Default;->f:Lbrave/sampler/Sampler;

    return-object v0
.end method

.method public setNoop(Z)V
    .locals 1

    .line 432
    iget-object v0, p0, Lbrave/Tracing$Default;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public tracer()Lbrave/Tracer;
    .locals 1

    .line 404
    iget-object v0, p0, Lbrave/Tracing$Default;->b:Lbrave/Tracer;

    return-object v0
.end method
