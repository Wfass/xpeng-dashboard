.class final Lbrave/RealScopedSpan;
.super Lbrave/ScopedSpan;
.source "RealScopedSpan.java"


# instance fields
.field final clock:Lbrave/Clock;

.field final context:Lbrave/propagation/TraceContext;

.field final finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

.field final pendingSpans:Lbrave/internal/recorder/PendingSpans;

.field final scope:Lbrave/propagation/CurrentTraceContext$Scope;

.field final state:Lbrave/handler/MutableSpan;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;Lbrave/handler/MutableSpan;Lbrave/Clock;Lbrave/internal/recorder/PendingSpans;Lbrave/handler/FinishedSpanHandler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbrave/ScopedSpan;-><init>()V

    .line 27
    iput-object p1, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    .line 28
    iput-object p2, p0, Lbrave/RealScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    .line 29
    iput-object p5, p0, Lbrave/RealScopedSpan;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    .line 30
    iput-object p3, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    .line 31
    iput-object p4, p0, Lbrave/RealScopedSpan;->clock:Lbrave/Clock;

    .line 32
    iput-object p6, p0, Lbrave/RealScopedSpan;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    return-void
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 3

    .line 44
    iget-object v0, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    iget-object v1, p0, Lbrave/RealScopedSpan;->clock:Lbrave/Clock;

    invoke-interface {v1}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lbrave/handler/MutableSpan;->annotate(JLjava/lang/String;)V

    return-object p0
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 1

    .line 40
    iget-object v0, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lbrave/RealScopedSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 68
    :cond_1
    check-cast p1, Lbrave/RealScopedSpan;

    .line 69
    iget-object v1, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v3, p1, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v1, v3}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbrave/RealScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    iget-object p1, p1, Lbrave/RealScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public error(Ljava/lang/Throwable;)Lbrave/ScopedSpan;
    .locals 1

    .line 54
    iget-object v0, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, p1}, Lbrave/handler/MutableSpan;->error(Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public finish()V
    .locals 3

    .line 59
    iget-object v0, p0, Lbrave/RealScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    .line 60
    iget-object v0, p0, Lbrave/RealScopedSpan;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v1, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/internal/recorder/PendingSpans;->remove(Lbrave/propagation/TraceContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    iget-object v1, p0, Lbrave/RealScopedSpan;->clock:Lbrave/Clock;

    invoke-interface {v1}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbrave/handler/MutableSpan;->finishTimestamp(J)V

    .line 62
    iget-object v0, p0, Lbrave/RealScopedSpan;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object v1, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v2, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, v1, v2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget-object v0, p0, Lbrave/RealScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 77
    iget-object v1, p0, Lbrave/RealScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNoop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 1

    .line 49
    iget-object v0, p0, Lbrave/RealScopedSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, p1, p2}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
