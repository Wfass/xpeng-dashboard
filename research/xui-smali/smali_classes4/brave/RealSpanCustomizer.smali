.class final Lbrave/RealSpanCustomizer;
.super Ljava/lang/Object;
.source "RealSpanCustomizer.java"

# interfaces
.implements Lbrave/SpanCustomizer;


# instance fields
.field final clock:Lbrave/Clock;

.field final context:Lbrave/propagation/TraceContext;

.field final state:Lbrave/handler/MutableSpan;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Lbrave/handler/MutableSpan;Lbrave/Clock;)V
    .locals 0
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "state"    # Lbrave/handler/MutableSpan;
    .param p3, "clock"    # Lbrave/Clock;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbrave/RealSpanCustomizer;->context:Lbrave/propagation/TraceContext;

    .line 15
    iput-object p2, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    .line 16
    iput-object p3, p0, Lbrave/RealSpanCustomizer;->clock:Lbrave/Clock;

    .line 17
    return-void
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lbrave/RealSpanCustomizer;->clock:Lbrave/Clock;

    invoke-interface {v0}, Lbrave/Clock;->currentTimeMicroseconds()J

    move-result-wide v0

    .line 28
    .local v0, "timestamp":J
    iget-object v2, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v3, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v3, v0, v1, p1}, Lbrave/handler/MutableSpan;->annotate(JLjava/lang/String;)V

    .line 30
    monitor-exit v2

    .line 31
    return-object p0

    .line 30
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1}, Lbrave/handler/MutableSpan;->name(Ljava/lang/String;)V

    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lbrave/RealSpanCustomizer;->state:Lbrave/handler/MutableSpan;

    invoke-virtual {v1, p1, p2}, Lbrave/handler/MutableSpan;->tag(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RealSpanCustomizer("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/RealSpanCustomizer;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
