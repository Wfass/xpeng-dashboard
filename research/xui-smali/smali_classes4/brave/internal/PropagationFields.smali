.class public abstract Lbrave/internal/PropagationFields;
.super Ljava/lang/Object;
.source "PropagationFields.java"


# instance fields
.field spanId:J

.field traceId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lbrave/internal/PropagationFields;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 48
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lbrave/internal/PropagationFields;>;"
    if-eqz p0, :cond_2

    .line 49
    if-eqz p1, :cond_1

    .line 50
    invoke-virtual {p0, p2}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/PropagationFields;

    .line 51
    .local v0, "fields":Lbrave/internal/PropagationFields;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbrave/internal/PropagationFields;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 49
    .end local v0    # "fields":Lbrave/internal/PropagationFields;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static put(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 2
    .param p0, "context"    # Lbrave/propagation/TraceContext;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrave/propagation/TraceContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lbrave/internal/PropagationFields;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lbrave/internal/PropagationFields;>;"
    if-eqz p0, :cond_3

    .line 58
    if-eqz p1, :cond_2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    invoke-virtual {p0, p3}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbrave/internal/PropagationFields;

    .line 61
    .local v0, "fields":Lbrave/internal/PropagationFields;
    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0, p1, p2}, Lbrave/internal/PropagationFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 59
    .end local v0    # "fields":Lbrave/internal/PropagationFields;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method abstract putAllIfAbsent(Lbrave/internal/PropagationFields;)V
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tryToClaim(JJ)Z
    .locals 4
    .param p1, "traceId"    # J
    .param p3, "spanId"    # J

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lbrave/internal/PropagationFields;->traceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 32
    iput-wide p1, p0, Lbrave/internal/PropagationFields;->traceId:J

    .line 33
    iput-wide p3, p0, Lbrave/internal/PropagationFields;->spanId:J

    .line 34
    monitor-exit p0

    return v1

    .line 36
    :cond_0
    iget-wide v2, p0, Lbrave/internal/PropagationFields;->traceId:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_1

    iget-wide v2, p0, Lbrave/internal/PropagationFields;->spanId:J

    cmp-long v0, v2, p3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
