.class final Lbrave/NoopScopedSpan;
.super Lbrave/ScopedSpan;
.source "NoopScopedSpan.java"


# instance fields
.field final context:Lbrave/propagation/TraceContext;

.field final scope:Lbrave/propagation/CurrentTraceContext$Scope;


# direct methods
.method constructor <init>(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lbrave/ScopedSpan;-><init>()V

    .line 12
    iput-object p1, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    .line 13
    iput-object p2, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    return-void
.end method


# virtual methods
.method public annotate(Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 0

    return-object p0
.end method

.method public context()Lbrave/propagation/TraceContext;
    .locals 1

    .line 21
    iget-object v0, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lbrave/NoopScopedSpan;

    .line 48
    iget-object v1, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    iget-object v3, p1, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v1, v3}, Lbrave/propagation/TraceContext;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    iget-object p1, p1, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

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
    .locals 0

    return-object p0
.end method

.method public finish()V
    .locals 1

    .line 37
    iget-object v0, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-interface {v0}, Lbrave/propagation/CurrentTraceContext$Scope;->close()V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget-object v0, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0}, Lbrave/propagation/TraceContext;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 56
    iget-object v1, p0, Lbrave/NoopScopedSpan;->scope:Lbrave/propagation/CurrentTraceContext$Scope;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNoop()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tag(Ljava/lang/String;Ljava/lang/String;)Lbrave/ScopedSpan;
    .locals 0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoopScopedSpan("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbrave/NoopScopedSpan;->context:Lbrave/propagation/TraceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
