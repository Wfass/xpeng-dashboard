.class public abstract Lbrave/internal/PropagationFields;
.super Ljava/lang/Object;
.source "PropagationFields.java"


# instance fields
.field c:J

.field d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
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

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

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

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static put(Lbrave/propagation/TraceContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
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

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

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

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "value == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "name == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final a(JJ)Z
    .locals 4

    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    iget-wide v0, p0, Lbrave/internal/PropagationFields;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 32
    iput-wide p1, p0, Lbrave/internal/PropagationFields;->c:J

    .line 33
    iput-wide p3, p0, Lbrave/internal/PropagationFields;->d:J

    .line 34
    monitor-exit p0

    return v1

    .line 36
    :cond_0
    iget-wide v2, p0, Lbrave/internal/PropagationFields;->c:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    iget-wide p1, p0, Lbrave/internal/PropagationFields;->d:J

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

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
