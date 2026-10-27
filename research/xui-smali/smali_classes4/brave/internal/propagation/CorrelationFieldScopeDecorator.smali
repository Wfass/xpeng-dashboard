.class public abstract Lbrave/internal/propagation/CorrelationFieldScopeDecorator;
.super Ljava/lang/Object;
.source "CorrelationFieldScopeDecorator.java"

# interfaces
.implements Lbrave/propagation/CurrentTraceContext$ScopeDecorator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decorateScope(Lbrave/propagation/TraceContext;Lbrave/propagation/CurrentTraceContext$Scope;)Lbrave/propagation/CurrentTraceContext$Scope;
    .locals 10
    .param p1, "currentSpan"    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .param p2, "scope"    # Lbrave/propagation/CurrentTraceContext$Scope;

    .line 21
    const-string v0, "traceId"

    invoke-virtual {p0, v0}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "previousTraceId":Ljava/lang/String;
    const-string v1, "spanId"

    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "previousSpanId":Ljava/lang/String;
    const-string v1, "parentId"

    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 25
    .local v8, "previousParentId":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, p1, v0, v8, v7}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->maybeReplaceTraceContext(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    const-string v1, "traceId"

    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 29
    const-string v1, "parentId"

    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 30
    const-string v1, "spanId"

    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 41
    :goto_0
    new-instance v9, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;-><init>(Lbrave/internal/propagation/CorrelationFieldScopeDecorator;Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method protected abstract get(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end method

.method maybeReplaceTraceContext(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "currentSpan"    # Lbrave/propagation/TraceContext;
    .param p2, "previousTraceId"    # Ljava/lang/String;
    .param p3, "previousParentId"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param
    .param p4, "previousSpanId"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "traceId":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "traceId"

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "parentId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 59
    const-string v2, "parentId"

    invoke-virtual {p0, v2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 62
    .local v2, "sameParentId":Z
    if-nez v2, :cond_2

    const-string v3, "parentId"

    invoke-virtual {p0, v3, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .end local v2    # "sameParentId":Z
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanIdString()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "spanId":Ljava/lang/String;
    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "spanId"

    invoke-virtual {p0, v3, v2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_3
    return-void
.end method

.method protected abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract remove(Ljava/lang/String;)V
.end method

.method final replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void
.end method
