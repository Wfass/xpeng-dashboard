.class public Lbrave/internal/MapPropagationFields;
.super Lbrave/internal/PropagationFields;
.source "MapPropagationFields.java"


# instance fields
.field volatile values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lbrave/internal/PropagationFields;-><init>()V

    .line 13
    return-void
.end method

.method protected constructor <init>(Lbrave/internal/MapPropagationFields;)V
    .locals 1
    .param p1, "parent"    # Lbrave/internal/MapPropagationFields;

    .line 19
    invoke-direct {p0}, Lbrave/internal/PropagationFields;-><init>()V

    .line 20
    iget-object v0, p1, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    iput-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 21
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lbrave/internal/PropagationFields;-><init>()V

    .line 16
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 82
    :cond_0
    instance-of v1, p1, Lbrave/internal/MapPropagationFields;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    move-object v1, p1

    check-cast v1, Lbrave/internal/MapPropagationFields;

    .line 84
    .local v1, "that":Lbrave/internal/MapPropagationFields;
    iget-object v3, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    if-nez v3, :cond_3

    iget-object v3, v1, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    iget-object v2, v1, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 27
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 27
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 34
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 35
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v0, v1

    .line 36
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    move-object v0, v1

    .line 42
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 45
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final putAllIfAbsent(Lbrave/internal/PropagationFields;)V
    .locals 6
    .param p1, "parent"    # Lbrave/internal/PropagationFields;

    .line 49
    instance-of v0, p1, Lbrave/internal/MapPropagationFields;

    if-nez v0, :cond_0

    return-void

    .line 50
    :cond_0
    move-object v0, p1

    check-cast v0, Lbrave/internal/MapPropagationFields;

    .line 51
    .local v0, "mapParent":Lbrave/internal/MapPropagationFields;
    iget-object v1, v0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 52
    .local v1, "parentValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1

    return-void

    .line 54
    :cond_1
    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v2, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 56
    iput-object v1, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 57
    monitor-exit p0

    return-void

    .line 59
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 62
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 63
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lbrave/internal/MapPropagationFields;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 65
    :cond_4
    return-void

    .line 59
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public final toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lbrave/internal/MapPropagationFields;->values:Ljava/util/Map;

    .line 71
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 73
    :cond_0
    return-object v0

    .line 71
    .end local v0    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
