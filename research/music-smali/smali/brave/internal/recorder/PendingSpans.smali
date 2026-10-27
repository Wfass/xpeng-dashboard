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
.field final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Lbrave/internal/recorder/PendingSpan;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lbrave/Clock;

.field final c:Lbrave/handler/FinishedSpanHandler;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 36
    iput-object p1, p0, Lbrave/internal/recorder/PendingSpans;->b:Lbrave/Clock;

    .line 37
    iput-object p2, p0, Lbrave/internal/recorder/PendingSpans;->c:Lbrave/handler/FinishedSpanHandler;

    .line 38
    iput-object p3, p0, Lbrave/internal/recorder/PendingSpans;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method a(Lbrave/propagation/TraceContext;)Lbrave/internal/recorder/TickClock;
    .locals 19
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation

    .line 66
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->parentIdAsLong()J

    move-result-wide v0

    .line 70
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_1

    cmp-long v2, v0, v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    move-object v1, v5

    goto :goto_2

    :cond_1
    :goto_0
    cmp-long v2, v0, v3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->spanId()J

    move-result-wide v0

    :goto_1
    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    .line 72
    iget-object v1, v0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    sget-object v6, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    const/4 v7, 0x0

    .line 74
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceIdHigh()J

    move-result-wide v8

    .line 75
    invoke-virtual/range {p1 .. p1}, Lbrave/propagation/TraceContext;->traceId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    .line 72
    invoke-virtual/range {v6 .. v18}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbrave/internal/recorder/PendingSpan;

    :goto_2
    if-eqz v1, :cond_3

    .line 82
    iget-object v5, v1, Lbrave/internal/recorder/PendingSpan;->b:Lbrave/internal/recorder/TickClock;

    :cond_3
    return-object v5
.end method

.method a()V
    .locals 21

    move-object/from16 v1, p0

    .line 101
    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->c:Lbrave/handler/FinishedSpanHandler;

    sget-object v2, Lbrave/handler/FinishedSpanHandler;->NOOP:Lbrave/handler/FinishedSpanHandler;

    if-eq v0, v2, :cond_1

    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_1
    move v2, v0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 102
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lbrave/internal/recorder/PendingSpans;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lbrave/internal/recorder/PendingSpans$RealKey;

    if-eqz v0, :cond_5

    .line 103
    iget-object v7, v1, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbrave/internal/recorder/PendingSpan;

    if-nez v2, :cond_4

    if-eqz v7, :cond_4

    .line 104
    iget-boolean v8, v0, Lbrave/internal/recorder/PendingSpans$RealKey;->f:Z

    if-nez v8, :cond_2

    goto :goto_3

    :cond_2
    cmp-long v8, v5, v3

    if-nez v8, :cond_3

    .line 105
    iget-object v5, v1, Lbrave/internal/recorder/PendingSpans;->b:Lbrave/Clock;

    invoke-interface {v5}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v5

    .line 107
    :cond_3
    sget-object v8, Lbrave/internal/InternalPropagation;->instance:Lbrave/internal/InternalPropagation;

    const/4 v9, 0x6

    iget-wide v10, v0, Lbrave/internal/recorder/PendingSpans$RealKey;->b:J

    iget-wide v12, v0, Lbrave/internal/recorder/PendingSpans$RealKey;->c:J

    iget-wide v14, v0, Lbrave/internal/recorder/PendingSpans$RealKey;->d:J

    const-wide/16 v16, 0x0

    iget-wide v3, v0, Lbrave/internal/recorder/PendingSpans$RealKey;->e:J

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v20

    move-wide/from16 v18, v3

    .line 107
    invoke-virtual/range {v8 .. v20}, Lbrave/internal/InternalPropagation;->newTraceContext(IJJJJJLjava/util/List;)Lbrave/propagation/TraceContext;

    move-result-object v3

    .line 113
    iget-object v0, v7, Lbrave/internal/recorder/PendingSpan;->a:Lbrave/handler/MutableSpan;

    const-string v4, "brave.flush"

    invoke-virtual {v0, v5, v6, v4}, Lbrave/handler/MutableSpan;->annotate(JLjava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v0, v1, Lbrave/internal/recorder/PendingSpans;->c:Lbrave/handler/FinishedSpanHandler;

    iget-object v4, v7, Lbrave/internal/recorder/PendingSpan;->a:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, v3, v4}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 118
    invoke-static {}, Lbrave/internal/Platform;->get()Lbrave/internal/Platform;

    move-result-object v4

    const-string v7, "error reporting {0}"

    invoke-virtual {v4, v7, v3, v0}, Lbrave/internal/Platform;->log(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_5
    return-void
.end method

.method public getOrCreate(Lbrave/propagation/TraceContext;Z)Lbrave/internal/recorder/PendingSpan;
    .locals 6

    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans;->a()V

    .line 44
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/recorder/PendingSpan;

    if-eqz v0, :cond_0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lbrave/handler/MutableSpan;

    invoke-direct {v0}, Lbrave/handler/MutableSpan;-><init>()V

    .line 48
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->shared()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lbrave/handler/MutableSpan;->setShared()V

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lbrave/internal/recorder/PendingSpans;->a(Lbrave/propagation/TraceContext;)Lbrave/internal/recorder/TickClock;

    move-result-object v1

    if-nez v1, :cond_2

    .line 53
    new-instance v1, Lbrave/internal/recorder/TickClock;

    iget-object v2, p0, Lbrave/internal/recorder/PendingSpans;->b:Lbrave/Clock;

    invoke-interface {v2}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lbrave/internal/recorder/TickClock;-><init>(JJ)V

    if-eqz p2, :cond_3

    .line 54
    iget-wide v2, v1, Lbrave/internal/recorder/TickClock;->a:J

    invoke-virtual {v0, v2, v3}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 56
    invoke-virtual {v1}, Lbrave/internal/recorder/TickClock;->currentTimeMicroseconds()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    .line 58
    :cond_3
    :goto_0
    new-instance p2, Lbrave/internal/recorder/PendingSpan;

    invoke-direct {p2, v0, v1}, Lbrave/internal/recorder/PendingSpan;-><init>(Lbrave/handler/MutableSpan;Lbrave/internal/recorder/TickClock;)V

    .line 59
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Lbrave/internal/recorder/PendingSpans$RealKey;

    invoke-direct {v1, p1, p0}, Lbrave/internal/recorder/PendingSpans$RealKey;-><init>(Lbrave/propagation/TraceContext;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/internal/recorder/PendingSpan;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    return-object p2

    .line 42
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Lbrave/propagation/TraceContext;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 88
    iget-object v0, p0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbrave/internal/recorder/PendingSpan;

    .line 89
    invoke-virtual {p0}, Lbrave/internal/recorder/PendingSpans;->a()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingSpans"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/internal/recorder/PendingSpans;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
