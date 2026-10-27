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
    .locals 7
    .param p1    # Lbrave/propagation/TraceContext;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "traceId"

    .line 21
    invoke-virtual {p0, v0}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "spanId"

    .line 22
    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "parentId"

    .line 23
    invoke-virtual {p0, v2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0, p1, v4, v5, v6}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->maybeReplaceTraceContext(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, v0}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    .line 41
    :goto_0
    new-instance p1, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator$1CorrelationFieldCurrentTraceContextScope;-><init>(Lbrave/internal/propagation/CorrelationFieldScopeDecorator;Lbrave/propagation/CurrentTraceContext$Scope;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected abstract get(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Lbrave/internal/Nullable;
    .end annotation
.end method

.method maybeReplaceTraceContext(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    .line 54
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->traceIdString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "traceId"

    invoke-virtual {p0, v0, p2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->parentIdString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "parentId"

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {p0, v0}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 62
    invoke-virtual {p0, v0, p2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lbrave/propagation/TraceContext;->spanIdString()Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string/jumbo p2, "spanId"

    invoke-virtual {p0, p2, p1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract remove(Ljava/lang/String;)V
.end method

.method final replace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Lbrave/internal/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p0, p1, p2}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lbrave/internal/propagation/CorrelationFieldScopeDecorator;->remove(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
