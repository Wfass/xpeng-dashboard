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
    .locals 1
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

    const-string v0, "context == null"

    .line 48
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "name == null"

    .line 49
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p0, p2}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbrave/internal/PropagationFields;

    if-eqz p0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lbrave/internal/PropagationFields;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static put(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
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

    const-string v0, "context == null"

    .line 57
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "name == null"

    .line 58
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "value == null"

    .line 59
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    invoke-virtual {p0, p3}, Lbrave/propagation/TraceContext;->findExtra(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbrave/internal/PropagationFields;

    if-nez p0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbrave/internal/PropagationFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    move-result-object v0

    invoke-virtual {p0}, Lbrave/internal/PropagationFields;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tryToClaim(JJ)Z
    .locals 4

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lbrave/internal/PropagationFields;->traceId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 32
    iput-wide p1, p0, Lbrave/internal/PropagationFields;->traceId:J

    .line 33
    iput-wide p3, p0, Lbrave/internal/PropagationFields;->spanId:J

    .line 34
    monitor-exit p0

    return v3

    :cond_0
    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 36
    iget-wide p1, p0, Lbrave/internal/PropagationFields;->spanId:J

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
