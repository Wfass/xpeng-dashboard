.class public final Lbrave/internal/recorder/PendingSpans;
.super Ljava/lang/ref/ReferenceQueue;
.source "PendingSpans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/internal/recorder/PendingSpans$LookupKey;,
        Lbrave/internal/recorder/PendingSpans$RealKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/ReferenceQueue<",
        "Lbrave/propagation/TraceContext;",
        ">;"
    }
.end annotation


# instance fields
.field final clock:Lbrave/Clock;

.field final delegate:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Lbrave/internal/recorder/PendingSpan;",
            ">;"
        }
    .end annotation
.end field

.field final noop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final zipkinHandler:Lbrave/handler/FinishedSpanHandler;


# direct methods
.method public constructor <init>(Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "clock"    # Lbrave/Clock;
    .param p2, "zipkinHandler"    # Lbrave/handler/FinishedSpanHandler;
    .param p3, "noop"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    .line 36
    iput-object p1, p0, Lbrave/internal/recorder/PendingSpans;->clock:Lbrave/Clock;

    .line 37
    iput-object p2, p0, Lbrave/internal/recorder/PendingSpans;->zipkinHandler:Lbrave/handler/FinishedSpanHandler;

    .line 38
    iput-object p3, p0, Lbrave/internal/recorder/PendingSpans;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method


# virtual methods
.method getClockFromParent(Lbrave/propagation/TraceContext;)Lbrave/internal/recorder/TickClock;
    .locals 18
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 66
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v0

    .line 69
    .local v0, "parentId":J
    const/4 v2, 0x0

    .line 70
    .local v2, "parent":Lbrave/internal/recorder/PendingSpan;
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_1

    cmp-long v3, v0, v4

    if-eqz v3, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    move-object/from16 v3, p0

    goto :goto_2

    .line 71
    :cond_1
    :goto_0
    cmp-long v3, v0, v4

    if-eqz v3, :cond_2

    move-wide v15, v0

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v3

    move-wide v15, v3

    .line 72
    .local v15, "spanId":J
    :goto_1
    move-object/from16 v3, p0

    iget-object v4, v3, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    sget-object v5, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    const/4 v6, 0x0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v7

    .line 75
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    .line 72
    invoke-virtual/range {v5 .. v17}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lbrave/internal/recorder/PendingSpan;

    .line 82
    .end local v15    # "spanId":J
    :goto_2
    if-eqz v2, :cond_3

    iget-object v4, v2, Lbrave/internal/recorder/PendingSpan;->clock:Lbrave/internal/recorder/TickClock;

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    return-object v4
.end method

.method public getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;
    .locals 8
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "start"    # Z

    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans;->reportOrphanedSpans()V

    .line 44
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/recorder/PendingSpan;

    .line 45
    .local v0, "result":Lbrave/internal/recorder/PendingSpan;
    if-eqz v0, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v1, Lbrave/handler/MutableSpan;

    invoke-direct {v1}, Lbrave/handler/MutableSpan;-><init>()V

    .line 48
    .local v1, "data":Lbrave/handler/MutableSpan;
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbrave/handler/MutableSpan;->setShared()V

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lbrave/internal/recorder/PendingSpans;->getClockFromParent(Lbrave/propagation/TraceContext;)Lbrave/internal/recorder/TickClock;

    move-result-object v2

    .line 52
    .local v2, "clock":Lbrave/internal/recorder/TickClock;
    if-nez v2, :cond_2

    .line 53
    new-instance v3, Lbrave/internal/recorder/TickClock;

    iget-object v4, p0, Lbrave/internal/recorder/PendingSpans;->clock:Lbrave/Clock;

    invoke-interface {v4}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lbrave/internal/recorder/TickClock;-><init>(JJ)V

    move-object v2, v3

    .line 54
    if-eqz p2, :cond_3

    iget-wide v3, v2, Lbrave/internal/recorder/TickClock;->baseEpochMicros:J

    invoke-virtual {v1, v3, v4}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    goto :goto_0

    .line 55
    :cond_2
    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {v2}, Lbrave/internal/recorder/TickClock;->currentTimeMicroseconds()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    .line 58
    :cond_3
    :goto_0
    new-instance v3, Lbrave/internal/recorder/PendingSpan;

    invoke-direct {v3, v1, v2}, Lbrave/internal/recorder/PendingSpan;-><init>(Lbrave/handler/MutableSpan;Lbrave/internal/recorder/TickClock;)V

    .line 59
    .local v3, "newSpan":Lbrave/internal/recorder/PendingSpan;
    iget-object v4, p0, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    new-instance v5, Lbrave/internal/recorder/PendingSpans$RealKey;

    invoke-direct {v5, p1, p0}, Lbrave/internal/recorder/PendingSpans$RealKey;-><init>(Lbrave/propagation/TraceContext;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v4, v5, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbrave/internal/recorder/PendingSpan;

    .line 60
    .local v4, "previousSpan":Lbrave/internal/recorder/PendingSpan;
    if-eqz v4, :cond_4

    return-object v4

    .line 61
    :cond_4
    return-object v3

    .line 42
    .end local v0    # "result":Lbrave/internal/recorder/PendingSpan;
    .end local v1    # "data":Lbrave/handler/MutableSpan;
    .end local v2    # "clock":Lbrave/internal/recorder/TickClock;
    .end local v3    # "newSpan":Lbrave/internal/recorder/PendingSpan;
    .end local v4    # "previousSpan":Lbrave/internal/recorder/PendingSpan;
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lbrave/propagation/TraceContext;)Z
    .locals 2
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 87
    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/recorder/PendingSpan;

    .line 89
    .local v0, "last":Lbrave/internal/recorder/PendingSpan;
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans;->reportOrphanedSpans()V

    .line 90
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 87
    .end local v0    # "last":Lbrave/internal/recorder/PendingSpan;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reportOrphanedSpans()V
    .locals 22

    .line 100
    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    .line 101
    .local v2, "flushTime":J
    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->zipkinHandler:Lbrave/handler/FinishedSpanHandler;

    sget-object v4, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    if-eq v0, v4, :cond_1

    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->noop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .local v0, "noop":Z
    :goto_1
    move v4, v0

    .line 102
    .end local v0    # "noop":Z
    .local v4, "noop":Z
    invoke-virtual/range {p0 .. p0}, Lbrave/internal/recorder/PendingSpans;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lbrave/internal/recorder/PendingSpans$RealKey;

    move-object v5, v0

    .local v5, "contextKey":Lbrave/internal/recorder/PendingSpans$RealKey;
    if-eqz v0, :cond_5

    .line 103
    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbrave/internal/recorder/PendingSpan;

    .line 104
    .local v6, "value":Lbrave/internal/recorder/PendingSpan;
    if-nez v4, :cond_4

    if-eqz v6, :cond_4

    iget-boolean v0, v5, Lbrave/internal/recorder/PendingSpans$RealKey;->sampled:Z

    if-nez v0, :cond_2

    .end local v5    # "contextKey":Lbrave/internal/recorder/PendingSpans$RealKey;
    .end local v6    # "value":Lbrave/internal/recorder/PendingSpan;
    goto :goto_3

    .line 105
    .restart local v5    # "contextKey":Lbrave/internal/recorder/PendingSpans$RealKey;
    .restart local v6    # "value":Lbrave/internal/recorder/PendingSpan;
    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-nez v0, :cond_3

    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->clock:Lbrave/Clock;

    invoke-interface {v0}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v2

    .line 107
    :cond_3
    sget-object v7, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    iget-wide v9, v5, Lbrave/internal/recorder/PendingSpans$RealKey;->traceIdHigh:J

    iget-wide v11, v5, Lbrave/internal/recorder/PendingSpans$RealKey;->traceId:J

    iget-wide v13, v5, Lbrave/internal/recorder/PendingSpans$RealKey;->localRootId:J

    const-wide/16 v15, 0x0

    move-wide/from16 v20, v9

    iget-wide v8, v5, Lbrave/internal/recorder/PendingSpans$RealKey;->spanId:J

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v19

    .line 107
    move-wide/from16 v17, v8

    const/4 v0, 0x6

    move v8, v0

    move-wide/from16 v9, v20

    invoke-virtual/range {v7 .. v19}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v7

    .line 113
    .local v7, "context":Lbrave/propagation/TraceContext;
    iget-object v0, v6, Lbrave/internal/recorder/PendingSpan;->state:Lbrave/handler/MutableSpan;

    const-string v8, "brave.flush"

    invoke-virtual {v0, v2, v3, v8}, Lbrave/handler/MutableSpan;->annotate(JLjava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->zipkinHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object v8, v6, Lbrave/internal/recorder/PendingSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, v7, v8}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v8

    const-string v9, "error reporting {0}"

    invoke-virtual {v8, v9, v7, v0}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 120
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v6    # "value":Lbrave/internal/recorder/PendingSpan;
    .end local v7    # "context":Lbrave/propagation/TraceContext;
    :goto_2
    nop

    .line 101
    .end local v4    # "noop":Z
    .end local v5    # "contextKey":Lbrave/internal/recorder/PendingSpans$RealKey;
    .local v0, "noop":Z
    :cond_4
    :goto_3
    move v0, v4

    goto :goto_1

    .line 121
    .end local v0    # "noop":Z
    .restart local v4    # "noop":Z
    .restart local v5    # "contextKey":Lbrave/internal/recorder/PendingSpans$RealKey;
    :cond_5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingSpans"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/internal/recorder/PendingSpans;->delegate:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
