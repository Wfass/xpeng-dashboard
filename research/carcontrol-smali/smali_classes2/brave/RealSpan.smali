.class final Lbrave/RealSpan;
.super Lbrave/Span;
.source "RealSpan.java"


# instance fields
.field final clock:Lbrave/Clock;

.field final context:Lbrave/propagation/TraceContext;

.field final customizer:Lbrave/RealSpanCustomizer;

.field final finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

.field final pendingSpans:Lbrave/internal/recorder/PendingSpans;

.field final state:Lbrave/handler/MutableSpan;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Lbrave/internal/recorder/PendingSpans;Lbrave/handler/MutableSpan;Lbrave/Clock;Lbrave/handler/FinishedSpanHandler;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lbrave/Span;-><init>()V

    .line 24
    iput-object p1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    .line 25
    iput-object p2, p0, Lbrave/RealSpan;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    .line 26
    iput-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    .line 27
    iput-object p4, p0, Lbrave/RealSpan;->clock:Lbrave/Clock;

    .line 28
    new-instance p2, Lbrave/RealSpanCustomizer;

    invoke-direct {p2, p1, p3, p4}, Lbrave/RealSpanCustomizer;-><init>(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;Lbrave/Clock;)V

    iput-object p2, p0, Lbrave/RealSpan;->customizer:Lbrave/RealSpanCustomizer;

    .line 29
    iput-object p5, p0, Lbrave/RealSpan;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 2

    .line 144
    iget-object v0, p0, Lbrave/RealSpan;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/internal/recorder/PendingSpans;->remove(Lbrave/propagation/TraceContext;)Z

    return-void
.end method

.method public annotate(JLjava/lang/String;)Lbrave/Span;
    .locals 2

    const-string v0, "cs"

    .line 76
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    sget-object v1, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    invoke-virtual {p3, v1}, Lbrave/handler/MutableSpan;->kind(Lbrave/Span$Kind;)V

    .line 79
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {p3, p1, p2}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    .line 80
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const-string/jumbo v0, "sr"

    .line 81
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 83
    :try_start_1
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    sget-object v1, Lbrave/Span$Kind;->SERVER:Lbrave/Span$Kind;

    invoke-virtual {p3, v1}, Lbrave/handler/MutableSpan;->kind(Lbrave/Span$Kind;)V

    .line 84
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {p3, p1, p2}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    .line 85
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_1
    const-string v0, "cr"

    .line 86
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 88
    :try_start_2
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    sget-object v1, Lbrave/Span$Kind;->CLIENT:Lbrave/Span$Kind;

    invoke-virtual {p3, v1}, Lbrave/handler/MutableSpan;->kind(Lbrave/Span$Kind;)V

    .line 89
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    invoke-virtual {p0, p1, p2}, Lbrave/RealSpan;->finish(J)V

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 89
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_2
    const-string/jumbo v0, "ss"

    .line 91
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 93
    :try_start_4
    iget-object p3, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    sget-object v1, Lbrave/Span$Kind;->SERVER:Lbrave/Span$Kind;

    invoke-virtual {p3, v1}, Lbrave/handler/MutableSpan;->kind(Lbrave/Span$Kind;)V

    .line 94
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 95
    invoke-virtual {p0, p1, p2}, Lbrave/RealSpan;->finish(J)V

    goto :goto_0

    :catchall_3
    move-exception p1

    .line 94
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    .line 97
    :cond_3
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 98
    :try_start_6
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2, p3}, Lbrave/handler/MutableSpan;->annotate(JLjava/lang/String;)V

    .line 99
    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_4
    move-exception p1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw p1
.end method

.method public annotate(Ljava/lang/String;)Lbrave/Span;
    .locals 2

    .line 70
    iget-object v0, p0, Lbrave/RealSpan;->clock:Lbrave/Clock;

    invoke-interface {v0}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lbrave/RealSpan;->annotate(JLjava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lbrave/RealSpan;->annotate(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 1

    .line 37
    iget-object v0, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public customizer()Lbrave/SpanCustomizer;
    .locals 4

    .line 41
    new-instance v0, Lbrave/RealSpanCustomizer;

    iget-object v1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v2, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    iget-object v3, p0, Lbrave/RealSpan;->clock:Lbrave/Clock;

    invoke-direct {v0, v1, v2, v3}, Lbrave/RealSpanCustomizer;-><init>(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;Lbrave/Clock;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 158
    :cond_0
    instance-of v0, p1, Lbrave/RealSpan;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 159
    :cond_1
    iget-object v0, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    check-cast p1, Lbrave/RealSpan;

    iget-object p1, p1, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, p1}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public error(Ljava/lang/Throwable;)Lbrave/Span;
    .locals 2

    .line 112
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1}, Lbrave/handler/MutableSpan;->error(Ljava/lang/Throwable;)V

    .line 114
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public finish()V
    .locals 2

    .line 132
    iget-object v0, p0, Lbrave/RealSpan;->clock:Lbrave/Clock;

    invoke-interface {v0}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbrave/RealSpan;->finish(J)V

    return-void
.end method

.method public finish(J)V
    .locals 2

    .line 136
    iget-object v0, p0, Lbrave/RealSpan;->pendingSpans:Lbrave/internal/recorder/PendingSpans;

    iget-object v1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/internal/recorder/PendingSpans;->remove(Lbrave/propagation/TraceContext;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2}, Lbrave/handler/MutableSpan;->finishTimestamp(J)V

    .line 139
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object p1, p0, Lbrave/RealSpan;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object p2, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {p1, p2, v0}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 139
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lbrave/RealSpan;->abandon()V

    .line 149
    iget-object v0, p0, Lbrave/RealSpan;->finishedSpanHandler:Lbrave/handler/FinishedSpanHandler;

    iget-object v1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v2, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v0, v1, v2}, Lbrave/handler/FinishedSpanHandler;->handle(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;)Z

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 163
    iget-object v0, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNoop()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public kind(Lbrave/Span$Kind;)Lbrave/Span;
    .locals 2

    .line 63
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1}, Lbrave/handler/MutableSpan;->kind(Lbrave/Span$Kind;)V

    .line 65
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public name(Ljava/lang/String;)Lbrave/Span;
    .locals 2

    .line 56
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1}, Lbrave/handler/MutableSpan;->name(Ljava/lang/String;)V

    .line 58
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lbrave/RealSpan;->name(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public remoteIpAndPort(Ljava/lang/String;I)Z
    .locals 2

    .line 126
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2}, Lbrave/handler/MutableSpan;->remoteIpAndPort(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 128
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public remoteServiceName(Ljava/lang/String;)Lbrave/Span;
    .locals 2

    .line 119
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1}, Lbrave/handler/MutableSpan;->remoteServiceName(Ljava/lang/String;)V

    .line 121
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start()Lbrave/Span;
    .locals 2

    .line 45
    iget-object v0, p0, Lbrave/RealSpan;->clock:Lbrave/Clock;

    invoke-interface {v0}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbrave/RealSpan;->start(J)Lbrave/Span;

    move-result-object v0

    return-object v0
.end method

.method public start(J)Lbrave/Span;
    .locals 2

    .line 49
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2}, Lbrave/handler/MutableSpan;->startTimestamp(J)V

    .line 51
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;
    .locals 2

    .line 105
    iget-object v0, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpan;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public bridge synthetic tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lbrave/RealSpan;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealSpan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbrave/RealSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
