.class public Lbrave/Tracer;
.super Ljava/lang/Object;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/Tracer$SpanInScope;
    }
.end annotation


# instance fields
.field final alwaysSampleLocal:Z

.field final clock:Lbrave/Clock;

.field final currentTraceContext:Lbrave/propagation/CurrentTraceContext;

.field final finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

.field final noop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final pendingSpans:Lbrave/internal/recorder/PendingSpans;

.field final propagationFactory:Lbrave/propagation/Propagation$Factory;

.field final sampler:Lbrave/sampler/Sampler;

.field final supportsJoin:Z

.field final traceId128Bit:Z


# direct methods
.method constructor <init>(Lbrave/Clock;Lbrave/propagation/Propagation$Factory;Lbrave/handler/FinishedSpanHandler;Lbrave/internal/recorder/PendingSpans;Lbrave/sampler/Sampler;Lbrave/propagation/CurrentTraceContext;ZZZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lbrave/Tracer;->clock:Lbrave/Clock;

    .line 96
    iput-object p2, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    .line 97
    iput-object p3, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    .line 98
    iput-object p4, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    .line 99
    iput-object p5, p0, Lbrave/Tracer;->sampler:Lbrave/sampler/Sampler;

    .line 100
    iput-object p6, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    .line 101
    iput-boolean p7, p0, Lbrave/Tracer;->traceId128Bit:Z

    .line 102
    iput-boolean p8, p0, Lbrave/Tracer;->supportsJoin:Z

    .line 103
    iput-boolean p9, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    .line 104
    iput-object p10, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method _toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 8

    .line 347
    invoke-virtual {p0, p1}, Lbrave/Tracer;->isNoop(Lbrave/propagation/TraceContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbrave/NoopSpan;

    invoke-direct {v0, p1}, Lbrave/NoopSpan;-><init>(Lbrave/propagation/TraceContext;)V

    return-object v0

    .line 349
    :cond_0
    iget-object v0, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lbrave/internal/recorder/PendingSpans;->getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;

    move-result-object v0

    .line 350
    new-instance v7, Lbrave/RealSpan;

    iget-object v3, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    invoke-virtual {v0}, Lbrave/internal/recorder/PendingSpan;->state()Lbrave/handler/MutableSpan;

    move-result-object v4

    invoke-virtual {v0}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object v5

    iget-object v6, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lbrave/RealSpan;-><init>(Lbrave/propagation/TraceContext;Lbrave/internal/recorder/PendingSpans;Lbrave/handler/MutableSpan;Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;)V

    return-object v7
.end method

.method public currentSpan()Lbrave/Span;
    .locals 1
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 424
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {p0, v0}, Lbrave/Tracer;->toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public currentSpanCustomizer()Lbrave/SpanCustomizer;
    .locals 4

    .line 411
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0, v0}, Lbrave/Tracer;->isNoop(Lbrave/propagation/TraceContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    iget-object v1, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbrave/internal/recorder/PendingSpans;->getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;

    move-result-object v1

    .line 414
    new-instance v2, Lbrave/RealSpanCustomizer;

    invoke-virtual {v1}, Lbrave/internal/recorder/PendingSpan;->state()Lbrave/handler/MutableSpan;

    move-result-object v3

    invoke-virtual {v1}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object v1

    invoke-direct {v2, v0, v3, v1}, Lbrave/RealSpanCustomizer;-><init>(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;Lbrave/Clock;)V

    return-object v2

    .line 412
    :cond_1
    :goto_0
    sget-object v0, Lbrave/NoopSpanCustomizer;->INSTANCE:Lbrave/NoopSpanCustomizer;

    return-object v0
.end method

.method isNoop(Lbrave/propagation/TraceContext;)Z
    .locals 4

    .line 513
    iget-object v0, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    sget-object v1, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result p1

    and-int/lit8 v0, p1, 0x20

    const/4 v1, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :cond_3
    :goto_0
    return v2
.end method

.method public final joinSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 14

    const-string v0, "context == null"

    .line 172
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 173
    iget-boolean v0, p0, Lbrave/Tracer;->supportsJoin:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object p1

    return-object p1

    .line 174
    :cond_0
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    .line 175
    iget-boolean v1, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x20

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 182
    iget-object v1, p0, Lbrave/Tracer;->sampler:Lbrave/sampler/Sampler;

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v1

    invoke-static {v1, v0}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result v0

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x10

    .line 187
    :cond_3
    :goto_0
    sget-object v1, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    or-int/lit8 v2, v0, 0x40

    .line 189
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v3

    .line 190
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v5

    .line 191
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v7

    .line 192
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v9

    .line 193
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v11

    .line 194
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v13

    .line 187
    invoke-virtual/range {v1 .. v13}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0, p1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 1

    const-string v0, "parent == null"

    .line 207
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    invoke-virtual {p0, p1}, Lbrave/Tracer;->nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method newRootContext()Lbrave/propagation/TraceContext;
    .locals 11

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    const/16 v1, 0x40

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method public newTrace()Lbrave/Span;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lbrave/Tracer;->newRootContext()Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0
.end method

.method nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 240
    iget-boolean v1, v0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    or-int/lit8 v1, p1, 0x20

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 243
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbrave/Tracer;->nextId()J

    move-result-wide v12

    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    if-nez v4, :cond_2

    .line 245
    iget-boolean v4, v0, Lbrave/Tracer;->traceId128Bit:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v4

    invoke-virtual {v4}, Lbrave/internal/Platform;->nextTraceIdHigh()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v2

    :goto_1
    move-wide v6, v12

    goto :goto_2

    :cond_2
    and-int/lit8 v1, v1, -0x51

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v8, v1, 0x4

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 252
    iget-object v8, v0, Lbrave/Tracer;->sampler:Lbrave/sampler/Sampler;

    invoke-virtual {v8, v6, v7}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v8

    invoke-static {v8, v1}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result v1

    :cond_3
    cmp-long v2, p6, v2

    if-nez v2, :cond_4

    move-wide v8, v12

    goto :goto_3

    :cond_4
    move-wide/from16 v8, p6

    .line 256
    :goto_3
    iget-object v15, v0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    sget-object v2, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    move v3, v1

    move-wide/from16 v10, p8

    move-object/from16 v14, p10

    invoke-virtual/range {v2 .. v14}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v1

    invoke-virtual {v15, v1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v1

    return-object v1
.end method

.method nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;
    .locals 12

    .line 222
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    .line 223
    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v2

    .line 224
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v3

    .line 225
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v5

    .line 226
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->localRootId()J

    move-result-wide v7

    .line 227
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v9

    .line 228
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v11

    move-object v1, p0

    .line 222
    invoke-virtual/range {v1 .. v11}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object p1

    return-object p1
.end method

.method nextId()J
    .locals 4

    .line 521
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->randomLong()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 523
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->randomLong()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public nextSpan()Lbrave/Span;
    .locals 1

    .line 435
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0, v0}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbrave/Tracer;->newTrace()Lbrave/Span;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public nextSpan(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;
    .locals 12

    const-string v0, "extracted == null"

    .line 296
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->context()Lbrave/propagation/TraceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, v0}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->traceIdContext()Lbrave/propagation/TraceIdContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    sget-object v2, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    .line 303
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->traceIdContext()Lbrave/propagation/TraceIdContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v2

    .line 304
    invoke-virtual {v0}, Lbrave/propagation/TraceIdContext;->traceIdHigh()J

    move-result-wide v3

    .line 305
    invoke-virtual {v0}, Lbrave/propagation/TraceIdContext;->traceId()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    .line 308
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v11

    .line 302
    invoke-virtual/range {v0 .. v10}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 312
    :cond_1
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->samplingFlags()Lbrave/propagation/SamplingFlags;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v2}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    .line 321
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, v2}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    .line 322
    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v3

    .line 323
    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v5

    .line 324
    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->localRootId()J

    move-result-wide v7

    .line 325
    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v9

    .line 326
    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lbrave/internal/Lists;->concatImmutableLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v9

    move-object v10, v1

    move v1, v0

    goto :goto_0

    .line 328
    :cond_2
    sget-object v2, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v2, v0}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    move-object v10, v1

    move-wide v6, v3

    move-wide v8, v6

    move v1, v0

    move-wide v2, v8

    move-wide v4, v2

    :goto_0
    move-object v0, p0

    .line 330
    invoke-virtual/range {v0 .. v10}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0
.end method

.method public startScopedSpan(Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 1

    const/4 v0, 0x0

    .line 458
    invoke-virtual {p0, p1, v0}, Lbrave/Tracer;->startScopedSpanWithParent(Ljava/lang/String;Lbrave/propagation/TraceContext;)Lbrave/ScopedSpan;

    move-result-object p1

    return-object p1
.end method

.method public startScopedSpanWithParent(Ljava/lang/String;Lbrave/propagation/TraceContext;)Lbrave/ScopedSpan;
    .locals 7
    .param p2    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    const-string v0, "name == null"

    .line 469
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 470
    iget-object p2, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {p2}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 471
    invoke-virtual {p0, p2}, Lbrave/Tracer;->nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbrave/Tracer;->newRootContext()Lbrave/propagation/TraceContext;

    move-result-object p2

    :goto_0
    move-object v1, p2

    .line 473
    iget-object p2, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {p2, v1}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v2

    .line 474
    invoke-virtual {p0, v1}, Lbrave/Tracer;->isNoop(Lbrave/propagation/TraceContext;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p1, Lbrave/NoopScopedSpan;

    invoke-direct {p1, v1, v2}, Lbrave/NoopScopedSpan;-><init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)V

    return-object p1

    .line 476
    :cond_2
    iget-object p2, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    const/4 v0, 0x1

    invoke-virtual {p2, v1, v0}, Lbrave/internal/recorder/PendingSpans;->getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;

    move-result-object p2

    .line 477
    invoke-virtual {p2}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object v4

    .line 478
    invoke-virtual {p2}, Lbrave/internal/recorder/PendingSpan;->state()Lbrave/handler/MutableSpan;

    move-result-object v3

    .line 479
    invoke-virtual {v3, p1}, Lbrave/handler/MutableSpan;->name(Ljava/lang/String;)V

    .line 480
    new-instance p1, Lbrave/RealScopedSpan;

    iget-object v5, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v6, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lbrave/RealScopedSpan;-><init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;Lbrave/handler/MutableSpan;Lbrave/Clock;Lbrave/internal/recorder/PendingSpans;Lbrave/handler/FinishedSpanHandler;)V

    return-object p1
.end method

.method public toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 3

    const-string v0, "context == null"

    .line 335
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    iget-boolean v0, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 339
    sget-object v1, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    or-int/2addr v0, v2

    invoke-virtual {v1, p1, v0}, Lbrave/internal/InternalPropagation;->withFlags(Lbrave/propagation/TraceContext;I)Lbrave/propagation/TraceContext;

    move-result-object p1

    .line 343
    :cond_0
    iget-object v0, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0, p1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 504
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 506
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSpan="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "noop=true, "

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finishedSpanHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withSampler(Lbrave/sampler/Sampler;)Lbrave/Tracer;
    .locals 12

    const-string/jumbo v0, "sampler == null"

    .line 120
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lbrave/Tracer;

    iget-object v2, p0, Lbrave/Tracer;->clock:Lbrave/Clock;

    iget-object v3, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    iget-object v4, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object v5, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v7, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    iget-boolean v8, p0, Lbrave/Tracer;->traceId128Bit:Z

    iget-boolean v9, p0, Lbrave/Tracer;->supportsJoin:Z

    iget-boolean v10, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    iget-object v11, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v11}, Lbrave/Tracer;-><init>(Lbrave/Clock;Lbrave/propagation/Propagation$Factory;Lbrave/handler/FinishedSpanHandler;Lbrave/internal/recorder/PendingSpans;Lbrave/sampler/Sampler;Lbrave/propagation/CurrentTraceContext;ZZZLjava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v0
.end method

.method public withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;
    .locals 2
    .param p1    # Lbrave/Span;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 399
    new-instance v0, Lbrave/Tracer$SpanInScope;

    iget-object v1, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object p1

    invoke-direct {v0, p1}, Lbrave/Tracer$SpanInScope;-><init>(Lbrave/propagation/CurrentTraceContext$Scope;)V

    return-object v0
.end method
