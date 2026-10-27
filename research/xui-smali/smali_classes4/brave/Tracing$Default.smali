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
.field final clock:Lbrave/Clock;

.field final currentTraceContext:Lbrave/propagation/CurrentTraceContext;

.field final errorParser:Lbrave/ErrorParser;

.field final noop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final propagationFactory:Lbrave/propagation/Propagation$Factory;

.field final sampler:Lbrave/sampler/Sampler;

.field final stringPropagation:Lbrave/propagation/Propagation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrave/propagation/Propagation<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final tracer:Lbrave/Tracer;


# direct methods
.method constructor <init>(Lbrave/Tracing$Builder;)V
    .locals 18
    .param p1, "builder"    # Lbrave/Tracing$Builder;

    move-object/from16 v0, p0

    .line 364
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lbrave/Tracing;-><init>()V

    .line 365
    iget-object v2, v1, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    iput-object v2, v0, Lbrave/Tracing$Default;->clock:Lbrave/Clock;

    .line 366
    iget-object v2, v1, Lbrave/Tracing$Builder;->errorParser:Lbrave/ErrorParser;

    iput-object v2, v0, Lbrave/Tracing$Default;->errorParser:Lbrave/ErrorParser;

    .line 367
    iget-object v2, v1, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    iput-object v2, v0, Lbrave/Tracing$Default;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 368
    iget-object v2, v1, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    sget-object v3, Lbrave/propagation/Propagation$KeyFactory;->STRING:Lbrave/propagation/Propagation$KeyFactory;

    invoke-virtual {v2, v3}, Lbrave/propagation/Propagation$Factory;->create(Lbrave/propagation/Propagation$KeyFactory;)Lbrave/propagation/Propagation;

    move-result-object v2

    iput-object v2, v0, Lbrave/Tracing$Default;->stringPropagation:Lbrave/propagation/Propagation;

    .line 369
    iget-object v2, v1, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    iput-object v2, v0, Lbrave/Tracing$Default;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    .line 370
    iget-object v2, v1, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    iput-object v2, v0, Lbrave/Tracing$Default;->sampler:Lbrave/sampler/Sampler;

    .line 371
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 373
    iget-object v2, v1, Lbrave/Tracing$Builder;->finishedSpanHandlers:Ljava/util/List;

    .line 376
    .local v2, "finishedSpanHandlers":Ljava/util/List;, "Ljava/util/List<Lbrave/handler/FinishedSpanHandler;>;"
    sget-object v3, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    .line 377
    .local v3, "zipkinFirehose":Lbrave/handler/FinishedSpanHandler;
    iget-object v4, v1, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    sget-object v5, Lzipkin2/reporter/Reporter;->NOOP:Lzipkin2/reporter/Reporter;

    if-eq v4, v5, :cond_0

    .line 378
    new-instance v4, Lbrave/internal/handler/ZipkinFinishedSpanHandler;

    iget-object v7, v1, Lbrave/Tracing$Builder;->spanReporter:Lzipkin2/reporter/Reporter;

    iget-object v8, v0, Lbrave/Tracing$Default;->errorParser:Lbrave/ErrorParser;

    iget-object v9, v1, Lbrave/Tracing$Builder;->localServiceName:Ljava/lang/String;

    iget-object v10, v1, Lbrave/Tracing$Builder;->localIp:Ljava/lang/String;

    iget v11, v1, Lbrave/Tracing$Builder;->localPort:I

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lbrave/internal/handler/ZipkinFinishedSpanHandler;-><init>(Lzipkin2/reporter/Reporter;Lbrave/ErrorParser;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v3, v4

    .line 380
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 381
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    nop

    .line 386
    invoke-static {v2}, Lbrave/internal/handler/FinishedSpanHandlers;->compose(Ljava/util/List;)Lbrave/handler/FinishedSpanHandler;

    move-result-object v4

    iget-object v5, v0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v4, v5}, Lbrave/internal/handler/FinishedSpanHandlers;->noopAware(Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbrave/handler/FinishedSpanHandler;

    move-result-object v4

    .line 388
    .local v4, "finishedSpanHandler":Lbrave/handler/FinishedSpanHandler;
    new-instance v5, Lbrave/Tracer;

    iget-object v7, v1, Lbrave/Tracing$Builder;->clock:Lbrave/Clock;

    iget-object v8, v1, Lbrave/Tracing$Builder;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    new-instance v10, Lbrave/internal/recorder/PendingSpans;

    iget-object v6, v0, Lbrave/Tracing$Default;->clock:Lbrave/Clock;

    iget-object v9, v0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v6, v3, v9}, Lbrave/internal/recorder/PendingSpans;-><init>(Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-object v11, v1, Lbrave/Tracing$Builder;->sampler:Lbrave/sampler/Sampler;

    iget-object v12, v1, Lbrave/Tracing$Builder;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    iget-boolean v6, v1, Lbrave/Tracing$Builder;->traceId128Bit:Z

    const/4 v9, 0x1

    const/4 v13, 0x0

    if-nez v6, :cond_2

    iget-object v6, v0, Lbrave/Tracing$Default;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 395
    invoke-virtual {v6}, Lbrave/propagation/Propagation$Factory;->requires128BitTraceId()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    move v14, v13

    goto :goto_1

    :cond_2
    :goto_0
    move v14, v9

    :goto_1
    iget-boolean v6, v1, Lbrave/Tracing$Builder;->supportsJoin:Z

    if-eqz v6, :cond_3

    iget-object v6, v0, Lbrave/Tracing$Default;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 396
    invoke-virtual {v6}, Lbrave/propagation/Propagation$Factory;->supportsJoin()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    move v15, v9

    goto :goto_2

    .line 396
    :cond_3
    nop

    .line 397
    move v15, v13

    :goto_2
    invoke-virtual {v4}, Lbrave/handler/FinishedSpanHandler;->alwaysSampleLocal()Z

    move-result v16

    iget-object v13, v0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v6, v5

    move-object v9, v4

    move-object/from16 v17, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    invoke-direct/range {v6 .. v16}, Lbrave/Tracer;-><init>(Lbrave/Clock;Lbrave/propagation/Propagation$Factory;Lbrave/handler/FinishedSpanHandler;Lbrave/internal/recorder/PendingSpans;Lbrave/sampler/Sampler;Lbrave/propagation/CurrentTraceContext;ZZZLjava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v5, v0, Lbrave/Tracing$Default;->tracer:Lbrave/Tracer;

    .line 400
    invoke-direct/range {p0 .. p0}, Lbrave/Tracing$Default;->maybeSetCurrent()V

    .line 401
    return-void
.end method

.method private maybeSetCurrent()V
    .locals 2

    .line 436
    sget-object v0, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    if-eqz v0, :cond_0

    return-void

    .line 437
    :cond_0
    const-class v0, Lbrave/Tracing;

    monitor-enter v0

    .line 438
    :try_start_0
    sget-object v1, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    if-nez v1, :cond_1

    sput-object p0, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    .line 439
    :cond_1
    monitor-exit v0

    .line 440
    return-void

    .line 439
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
    sget-object v0, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    if-eq v0, p0, :cond_0

    return-void

    .line 445
    :cond_0
    const-class v0, Lbrave/Tracing;

    monitor-enter v0

    .line 446
    :try_start_0
    sget-object v1, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    if-ne v1, p0, :cond_1

    const/4 v1, 0x0

    sput-object v1, Lbrave/Tracing$Default;->current:Lbrave/Tracing;

    .line 447
    :cond_1
    monitor-exit v0

    .line 448
    return-void

    .line 447
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
    iget-object v0, p0, Lbrave/Tracing$Default;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    return-object v0
.end method

.method public errorParser()Lbrave/ErrorParser;
    .locals 1

    .line 424
    iget-object v0, p0, Lbrave/Tracing$Default;->errorParser:Lbrave/ErrorParser;

    return-object v0
.end method

.method public isNoop()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v0, p0, Lbrave/Tracing$Default;->stringPropagation:Lbrave/propagation/Propagation;

    return-object v0
.end method

.method public propagationFactory()Lbrave/propagation/Propagation$Factory;
    .locals 1

    .line 412
    iget-object v0, p0, Lbrave/Tracing$Default;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    return-object v0
.end method

.method public sampler()Lbrave/sampler/Sampler;
    .locals 1

    .line 416
    iget-object v0, p0, Lbrave/Tracing$Default;->sampler:Lbrave/sampler/Sampler;

    return-object v0
.end method

.method public setNoop(Z)V
    .locals 1
    .param p1, "noop"    # Z

    .line 432
    iget-object v0, p0, Lbrave/Tracing$Default;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    return-void
.end method

.method public tracer()Lbrave/Tracer;
    .locals 1

    .line 404
    iget-object v0, p0, Lbrave/Tracing$Default;->tracer:Lbrave/Tracer;

    return-object v0
.end method
