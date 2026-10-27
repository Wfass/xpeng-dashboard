.class final Lbrave/NoopSpan;
.super Lbrave/Span;
.source "NoopSpan.java"


# instance fields
.field final context:Lbrave/propagation/TraceContext;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;)V
    .locals 0
    .param p1, "context"    # Lbrave/propagation/TraceContext;

    .line 9
    invoke-direct {p0}, Lbrave/Span;-><init>()V

    .line 10
    iput-object p1, p0, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    .line 11
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 0

    .line 73
    return-void
.end method

.method public annotate(JLjava/lang/String;)Lbrave/Span;
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "value"    # Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public annotate(Ljava/lang/String;)Lbrave/Span;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public bridge synthetic annotate(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lbrave/NoopSpan;->annotate(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 1

    .line 22
    iget-object v0, p0, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public customizer()Lbrave/SpanCustomizer;
    .locals 1

    .line 14
    sget-object v0, Lbrave/NoopSpanCustomizer;->INSTANCE:Lbrave/NoopSpanCustomizer;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 84
    :cond_0
    instance-of v0, p1, Lbrave/NoopSpan;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 85
    :cond_1
    iget-object v0, p0, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    move-object v1, p1

    check-cast v1, Lbrave/NoopSpan;

    iget-object v1, v1, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public error(Ljava/lang/Throwable;)Lbrave/Span;
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 63
    return-object p0
.end method

.method public finish()V
    .locals 0

    .line 67
    return-void
.end method

.method public finish(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 70
    return-void
.end method

.method public flush()V
    .locals 0

    .line 76
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object v0, p0, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v0

    return v0
.end method

.method public isNoop()Z
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public kind(Lbrave/Span$Kind;)Lbrave/Span;
    .locals 0
    .param p1, "kind"    # Lbrave/Span$Kind;

    .line 38
    return-object p0
.end method

.method public name(Ljava/lang/String;)Lbrave/Span;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public bridge synthetic name(Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lbrave/NoopSpan;->name(Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public remoteIpAndPort(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "remoteIp"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public remoteServiceName(Ljava/lang/String;)Lbrave/Span;
    .locals 0
    .param p1, "remoteServiceName"    # Ljava/lang/String;

    .line 50
    return-object p0
.end method

.method public start()Lbrave/Span;
    .locals 0

    .line 26
    return-object p0
.end method

.method public start(J)Lbrave/Span;
    .locals 0
    .param p1, "timestamp"    # J

    .line 30
    return-object p0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public bridge synthetic tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/SpanCustomizer;
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lbrave/NoopSpan;->tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/Span;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoopSpan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/NoopSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
