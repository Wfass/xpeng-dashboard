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
    .param p1, "clock"    # Lbrave/Clock;
    .param p2, "propagationFactory"    # Lbrave/propagation/Propagation$Factory;
    .param p3, "finishedSpanHandler"    # Lbrave/handler/FinishedSpanHandler;
    .param p4, "pendingSpans"    # Lbrave/internal/recorder/PendingSpans;
    .param p5, "sampler"    # Lbrave/sampler/Sampler;
    .param p6, "currentTraceContext"    # Lbrave/propagation/CurrentTraceContext;
    .param p7, "traceId128Bit"    # Z
    .param p8, "supportsJoin"    # Z
    .param p9, "alwaysSampleLocal"    # Z
    .param p10, "noop"    # Ljava/util/concurrent/atomic/AtomicBoolean;

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

    .line 105
    return-void
.end method


# virtual methods
.method _toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 8
    .param p1, "decorated"    # Lbrave/propagation/TraceContext;

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
    .local v0, "pendingSpan":Lbrave/internal/recorder/PendingSpan;
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
    .locals 2
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 424
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 425
    .local v0, "currentContext":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public currentSpanCustomizer()Lbrave/SpanCustomizer;
    .locals 5

    .line 411
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 412
    .local v0, "context":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_1

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
    .local v1, "pendingSpan":Lbrave/internal/recorder/PendingSpan;
    new-instance v2, Lbrave/RealSpanCustomizer;

    invoke-virtual {v1}, Lbrave/internal/recorder/PendingSpan;->state()Lbrave/handler/MutableSpan;

    move-result-object v3

    invoke-virtual {v1}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Lbrave/RealSpanCustomizer;-><init>(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;Lbrave/Clock;)V

    return-object v2

    .line 412
    .end local v1    # "pendingSpan":Lbrave/internal/recorder/PendingSpan;
    :cond_1
    :goto_0
    sget-object v1, Lbrave/NoopSpanCustomizer;->INSTANCE:Lbrave/NoopSpanCustomizer;

    return-object v1
.end method

.method isNoop(Lbrave/propagation/TraceContext;)Z
    .locals 5
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 513
    iget-object v0, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    sget-object v1, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 514
    :cond_0
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    .line 515
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    return v3

    .line 516
    :cond_1
    and-int/lit8 v1, v0, 0x2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 513
    .end local v0    # "flags":I
    :cond_3
    :goto_1
    return v2
.end method

.method public final joinSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 14
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 172
    if-eqz p1, :cond_4

    .line 173
    iget-boolean v0, p0, Lbrave/Tracer;->supportsJoin:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    .line 175
    .local v0, "flags":I
    iget-boolean v1, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 176
    or-int/lit8 v0, v0, 0x20

    .line 180
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

    .line 183
    :cond_2
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 185
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
    iget-object v1, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v1, p1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v1

    return-object v1

    .line 172
    .end local v0    # "flags":I
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 2
    .param p1, "parent"    # Lbrave/propagation/TraceContext;

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lbrave/Tracer;->nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parent == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .locals 24
    .param p1, "flags"    # I
    .param p2, "traceIdHigh"    # J
    .param p4, "traceId"    # J
    .param p6, "localRootId"    # J
    .param p8, "parentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJJJ",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Lbrave/propagation/TraceContext;"
        }
    .end annotation

    .local p10, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    .line 240
    iget-boolean v2, v0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v2, :cond_0

    and-int/lit8 v2, p1, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 241
    or-int/lit8 v1, p1, 0x20

    .end local p1    # "flags":I
    .local v1, "flags":I
    goto :goto_0

    .line 243
    .end local v1    # "flags":I
    .restart local p1    # "flags":I
    :cond_0
    move/from16 v1, p1

    .end local p1    # "flags":I
    .restart local v1    # "flags":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lbrave/Tracer;->nextId()J

    move-result-wide v15

    .line 244
    .local v15, "nextId":J
    const-wide/16 v2, 0x0

    cmp-long v6, p4, v2

    if-nez v6, :cond_2

    .line 245
    iget-boolean v6, v0, Lbrave/Tracer;->traceId128Bit:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v6

    invoke-virtual {v6}, Lbrave/internal/Platform;->nextTraceIdHigh()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    move-wide v6, v2

    .line 246
    .end local p2    # "traceIdHigh":J
    .local v6, "traceIdHigh":J
    :goto_1
    move-wide v4, v15

    .line 250
    .end local p4    # "traceId":J
    .local v4, "traceId":J
    move-wide v10, v4

    move-wide/from16 v17, v6

    goto :goto_2

    .line 248
    .end local v4    # "traceId":J
    .end local v6    # "traceIdHigh":J
    .restart local p2    # "traceIdHigh":J
    .restart local p4    # "traceId":J
    :cond_2
    and-int/lit8 v1, v1, -0x51

    .line 250
    move-wide/from16 v17, p2

    move-wide/from16 v10, p4

    .end local p2    # "traceIdHigh":J
    .end local p4    # "traceId":J
    .local v10, "traceId":J
    .local v17, "traceIdHigh":J
    :goto_2
    move-wide v12, v15

    .line 251
    .local v12, "spanId":J
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 252
    iget-object v4, v0, Lbrave/Tracer;->sampler:Lbrave/sampler/Sampler;

    invoke-virtual {v4, v10, v11}, Lbrave/sampler/Sampler;->isSampled(J)Z

    move-result v4

    invoke-static {v4, v1}, Lbrave/internal/InternalPropagation;->sampled(ZI)I

    move-result v1

    .line 255
    :cond_3
    cmp-long v2, p6, v2

    if-nez v2, :cond_4

    move-wide v2, v12

    .line 256
    .end local p6    # "localRootId":J
    .local v2, "localRootId":J
    move-wide/from16 v19, v2

    goto :goto_3

    .end local v2    # "localRootId":J
    .restart local p6    # "localRootId":J
    :cond_4
    move-wide/from16 v19, p6

    .end local p6    # "localRootId":J
    .local v19, "localRootId":J
    :goto_3
    iget-object v14, v0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    sget-object v2, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    move v3, v1

    move-wide/from16 v4, v17

    move-wide v6, v10

    move-wide/from16 v8, v19

    move-wide/from16 v21, v10

    move-wide/from16 v10, p8

    .end local v10    # "traceId":J
    .local v21, "traceId":J
    move-object v0, v14

    move-object/from16 v14, p10

    invoke-virtual/range {v2 .. v14}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;
    .locals 12
    .param p1, "parent"    # Lbrave/propagation/TraceContext;

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

    .line 222
    move-object v1, p0

    invoke-virtual/range {v1 .. v11}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    return-object v0
.end method

.method nextId()J
    .locals 4

    .line 521
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lbrave/internal/Platform;->randomLong()J

    move-result-wide v0

    .line 522
    .local v0, "nextId":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 523
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v2

    invoke-virtual {v2}, Lbrave/internal/Platform;->randomLong()J

    move-result-wide v0

    goto :goto_0

    .line 525
    :cond_0
    return-wide v0
.end method

.method public nextSpan()Lbrave/Span;
    .locals 2

    .line 435
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 436
    .local v0, "parent":Lbrave/propagation/TraceContext;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbrave/Tracer;->newTrace()Lbrave/Span;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public nextSpan(Lbrave/propagation/TraceContextOrSamplingFlags;)Lbrave/Span;
    .locals 25
    .param p1, "extracted"    # Lbrave/propagation/TraceContextOrSamplingFlags;

    move-object/from16 v11, p0

    .line 296
    if-eqz p1, :cond_3

    .line 297
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->context()Lbrave/propagation/TraceContext;

    move-result-object v12

    .line 298
    .local v12, "context":Lbrave/propagation/TraceContext;
    if-eqz v12, :cond_0

    invoke-virtual {v11, v12}, Lbrave/Tracer;->newChild(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 300
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->traceIdContext()Lbrave/propagation/TraceIdContext;

    move-result-object v13

    .line 301
    .local v13, "traceIdContext":Lbrave/propagation/TraceIdContext;
    if-eqz v13, :cond_1

    .line 302
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    .line 303
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->traceIdContext()Lbrave/propagation/TraceIdContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v1

    .line 304
    invoke-virtual {v13}, Lbrave/propagation/TraceIdContext;->traceIdHigh()J

    move-result-wide v2

    .line 305
    invoke-virtual {v13}, Lbrave/propagation/TraceIdContext;->traceId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    .line 308
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object v10

    .line 302
    move-object v0, v11

    invoke-virtual/range {v0 .. v10}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v11, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 312
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->samplingFlags()Lbrave/propagation/SamplingFlags;

    move-result-object v14

    .line 313
    .local v14, "samplingFlags":Lbrave/propagation/SamplingFlags;
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContextOrSamplingFlags;->extra()Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v1, v11, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v1}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v10

    .line 317
    .local v10, "implicitParent":Lbrave/propagation/TraceContext;
    const-wide/16 v1, 0x0

    .local v1, "traceIdHigh":J
    const-wide/16 v3, 0x0

    .local v3, "traceId":J
    const-wide/16 v5, 0x0

    .local v5, "localRootId":J
    const-wide/16 v7, 0x0

    .line 318
    .local v7, "spanId":J
    if-eqz v10, :cond_2

    .line 321
    sget-object v9, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v9, v10}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v9

    .line 322
    .local v9, "flags":I
    invoke-virtual {v10}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v1

    .line 323
    invoke-virtual {v10}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v3

    .line 324
    invoke-virtual {v10}, Lbrave/propagation/TraceContext;->localRootId()J

    move-result-wide v5

    .line 325
    invoke-virtual {v10}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v7

    .line 326
    move-wide v15, v1

    invoke-virtual {v10}, Lbrave/propagation/TraceContext;->extra()Ljava/util/List;

    move-result-object v1

    .end local v1    # "traceIdHigh":J
    .local v15, "traceIdHigh":J
    invoke-static {v0, v1}, Lbrave/internal/Lists;->concatImmutableLists(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 328
    move-object/from16 v23, v0

    .end local v0    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "traceId":J
    .end local v5    # "localRootId":J
    .end local v7    # "spanId":J
    .end local v9    # "flags":I
    .local v1, "flags":I
    .local v17, "traceId":J
    .local v19, "localRootId":J
    .local v21, "spanId":J
    .local v23, "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    move-wide/from16 v17, v3

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    move v1, v9

    goto :goto_1

    .end local v15    # "traceIdHigh":J
    .end local v17    # "traceId":J
    .end local v19    # "localRootId":J
    .end local v21    # "spanId":J
    .end local v23    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v0    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local v1, "traceIdHigh":J
    .restart local v3    # "traceId":J
    .restart local v5    # "localRootId":J
    .restart local v7    # "spanId":J
    :cond_2
    sget-object v9, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v9, v14}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v9

    move-object/from16 v23, v0

    move-wide v15, v1

    goto :goto_0

    .line 330
    .end local v0    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v3    # "traceId":J
    .end local v5    # "localRootId":J
    .end local v7    # "spanId":J
    .local v1, "flags":I
    .restart local v15    # "traceIdHigh":J
    .restart local v17    # "traceId":J
    .restart local v19    # "localRootId":J
    .restart local v21    # "spanId":J
    .restart local v23    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1
    move-object v0, v11

    move-wide v2, v15

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    move-wide/from16 v8, v21

    move-object/from16 v24, v10

    move-object/from16 v10, v23

    .end local v10    # "implicitParent":Lbrave/propagation/TraceContext;
    .local v24, "implicitParent":Lbrave/propagation/TraceContext;
    invoke-virtual/range {v0 .. v10}, Lbrave/Tracer;->nextContext(IJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {v11, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 296
    .end local v1    # "flags":I
    .end local v12    # "context":Lbrave/propagation/TraceContext;
    .end local v13    # "traceIdContext":Lbrave/propagation/TraceIdContext;
    .end local v14    # "samplingFlags":Lbrave/propagation/SamplingFlags;
    .end local v15    # "traceIdHigh":J
    .end local v17    # "traceId":J
    .end local v19    # "localRootId":J
    .end local v21    # "spanId":J
    .end local v23    # "extra":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v24    # "implicitParent":Lbrave/propagation/TraceContext;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "extracted == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startScopedSpan(Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbrave/Tracer;->startScopedSpanWithParent(Ljava/lang/String;Lbrave/propagation/TraceContext;)Lbrave/ScopedSpan;

    move-result-object v0

    return-object v0
.end method

.method public startScopedSpanWithParent(Ljava/lang/String;Lbrave/propagation/TraceContext;)Lbrave/ScopedSpan;
    .locals 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parent"    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 469
    if-eqz p1, :cond_3

    .line 470
    if-nez p2, :cond_0

    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object p2

    .line 471
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lbrave/Tracer;->nextContext(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbrave/Tracer;->newRootContext()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 473
    .local v0, "context":Lbrave/propagation/TraceContext;
    :goto_0
    iget-object v1, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v1, v0}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v8

    .line 474
    .local v8, "scope":Lbrave/propagation/CurrentTraceContext$Scope;
    invoke-virtual {p0, v0}, Lbrave/Tracer;->isNoop(Lbrave/propagation/TraceContext;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lbrave/NoopScopedSpan;

    invoke-direct {v1, v0, v8}, Lbrave/NoopScopedSpan;-><init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)V

    return-object v1

    .line 476
    :cond_2
    iget-object v1, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lbrave/internal/recorder/PendingSpans;->getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;

    move-result-object v9

    .line 477
    .local v9, "pendingSpan":Lbrave/internal/recorder/PendingSpan;
    invoke-virtual {v9}, Lbrave/internal/recorder/PendingSpan;->clock()Lbrave/Clock;

    move-result-object v10

    .line 478
    .local v10, "clock":Lbrave/Clock;
    invoke-virtual {v9}, Lbrave/internal/recorder/PendingSpan;->state()Lbrave/handler/MutableSpan;

    move-result-object v11

    .line 479
    .local v11, "state":Lbrave/handler/MutableSpan;
    invoke-virtual {v11, p1}, Lbrave/handler/MutableSpan;->name(Ljava/lang/String;)V

    .line 480
    new-instance v12, Lbrave/RealScopedSpan;

    iget-object v6, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v7, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    move-object v1, v12

    move-object v2, v0

    move-object v3, v8

    move-object v4, v11

    move-object v5, v10

    invoke-direct/range {v1 .. v7}, Lbrave/RealScopedSpan;-><init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;Lbrave/handler/MutableSpan;Lbrave/Clock;Lbrave/internal/recorder/PendingSpans;Lbrave/handler/FinishedSpanHandler;)V

    return-object v12

    .line 469
    .end local v0    # "context":Lbrave/propagation/TraceContext;
    .end local v8    # "scope":Lbrave/propagation/CurrentTraceContext$Scope;
    .end local v9    # "pendingSpan":Lbrave/internal/recorder/PendingSpan;
    .end local v10    # "clock":Lbrave/Clock;
    .end local v11    # "state":Lbrave/handler/MutableSpan;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;
    .locals 3
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 335
    if-eqz p1, :cond_1

    .line 336
    iget-boolean v0, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    invoke-virtual {v0, p1}, Lbrave/internal/InternalPropagation;->flags(Lbrave/propagation/SamplingFlags;)I

    move-result v0

    .line 338
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 339
    sget-object v1, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    or-int/lit8 v2, v0, 0x20

    invoke-virtual {v1, p1, v2}, Lbrave/internal/InternalPropagation;->withFlags(Lbrave/propagation/TraceContext;I)Lbrave/propagation/TraceContext;

    move-result-object p1

    .line 343
    .end local v0    # "flags":I
    :cond_0
    iget-object v0, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    invoke-virtual {v0, p1}, Lbrave/propagation/Propagation$Factory;->decorate(Lbrave/propagation/TraceContext;)Lbrave/propagation/TraceContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbrave/Tracer;->_toSpan(Lbrave/propagation/TraceContext;)Lbrave/Span;

    move-result-object v0

    return-object v0

    .line 335
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 504
    iget-object v0, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    invoke-virtual {v0}, Lbrave/propagation/CurrentTraceContext;->get()Lbrave/propagation/TraceContext;

    move-result-object v0

    .line 505
    .local v0, "currentSpan":Lbrave/propagation/TraceContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracer{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSpan="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v2, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "noop=true, "

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "finishedSpanHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    return-object v1
.end method

.method public withSampler(Lbrave/sampler/Sampler;)Lbrave/Tracer;
    .locals 12
    .param p1, "sampler"    # Lbrave/sampler/Sampler;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    new-instance v11, Lbrave/Tracer;

    iget-object v1, p0, Lbrave/Tracer;->clock:Lbrave/Clock;

    iget-object v2, p0, Lbrave/Tracer;->propagationFactory:Lbrave/propagation/Propagation$Factory;

    iget-object v3, p0, Lbrave/Tracer;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object v4, p0, Lbrave/Tracer;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v6, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    iget-boolean v7, p0, Lbrave/Tracer;->traceId128Bit:Z

    iget-boolean v8, p0, Lbrave/Tracer;->supportsJoin:Z

    iget-boolean v9, p0, Lbrave/Tracer;->alwaysSampleLocal:Z

    iget-object v10, p0, Lbrave/Tracer;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, v11

    move-object v5, p1

    invoke-direct/range {v0 .. v10}, Lbrave/Tracer;-><init>(Lbrave/Clock;Lbrave/propagation/Propagation$Factory;Lbrave/handler/FinishedSpanHandler;Lbrave/internal/recorder/PendingSpans;Lbrave/sampler/Sampler;Lbrave/propagation/CurrentTraceContext;ZZZLjava/util/concurrent/atomic/AtomicBoolean;)V

    return-object v11

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sampler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withSpanInScope(Lbrave/Span;)Lbrave/Tracer$SpanInScope;
    .locals 3
    .param p1, "span"    # Lbrave/Span;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 399
    new-instance v0, Lbrave/Tracer$SpanInScope;

    iget-object v1, p0, Lbrave/Tracer;->currentTraceContext:Lbrave/propagation/CurrentTraceContext;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbrave/Span;->context()Lbrave/propagation/TraceContext;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lbrave/propagation/CurrentTraceContext;->newScope(Lbrave/propagation/TraceContext;)Lbrave/propagation/CurrentTraceContext$Scope;

    move-result-object v1

    invoke-direct {v0, v1}, Lbrave/Tracer$SpanInScope;-><init>(Lbrave/propagation/CurrentTraceContext$Scope;)V

    return-object v0
.end method
