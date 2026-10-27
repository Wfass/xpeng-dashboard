.class final Lbrave/NoopScopedSpan;
.super Lbrave/ScopedSpan;
.source "NoopScopedSpan.java"


# instance fields
.field final context:Lbrave/propagation/TraceContext;

.field final scope:Lbrave/propagation/CurrentTraceContext$Scope;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)V
    .locals 0
    .param p1, "context"    # Lbrave/propagation/TraceContext;
    .param p2, "scope"    # Lbrave/propagation/CurrentTraceContext$Scope;

    .line 11
    invoke-direct {p0}, Lbrave/ScopedSpan;-><init>()V

    .line 12
    iput-object p1, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    .line 13
    iput-object p2, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    .line 14
    return-void
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lbrave/NoopScopedSpan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 47
    :cond_1
    move-object v1, p1

    check-cast v1, Lbrave/NoopScopedSpan;

    .line 48
    .local v1, "that":Lbrave/NoopScopedSpan;
    iget-object v3, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v4, v1, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v3, v4}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    iget-object v4, v1, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public error(Ljava/lang/Throwable;)Lbrave/ScopedSpan;
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .line 33
    return-object p0
.end method

.method public finish()V
    .locals 1

    .line 37
    iget-object v0, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    .line 38
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 52
    const/4 v0, 0x1

    .line 53
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 54
    iget-object v2, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v2}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 55
    mul-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 57
    return v0
.end method

.method public isNoop()Z
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 29
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoopScopedSpan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
