.class public Lbrave/internal/PredefinedPropagationFields;
.super Lbrave/internal/PropagationFields;
.source "PredefinedPropagationFields.java"


# instance fields
.field final fieldNames:[Ljava/lang/String;

.field volatile values:[Ljava/lang/String;


# direct methods
.method protected varargs constructor <init>(Lbrave/internal/PredefinedPropagationFields;[Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lbrave/internal/PredefinedPropagationFields;
    .param p2, "fieldNames"    # [Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Lbrave/internal/PropagationFields;-><init>()V

    .line 19
    iput-object p2, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    .line 20
    invoke-virtual {p0, p1}, Lbrave/internal/PredefinedPropagationFields;->checkSameFields(Lbrave/internal/PredefinedPropagationFields;)V

    .line 21
    iget-object v0, p1, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    iput-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Lbrave/internal/PropagationFields;-><init>()V

    .line 15
    iput-object p1, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method checkSameFields(Lbrave/internal/PredefinedPropagationFields;)V
    .locals 4
    .param p1, "predefinedParent"    # Lbrave/internal/PredefinedPropagationFields;

    .line 77
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    iget-object v1, p1, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    .line 80
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 79
    const-string v2, "Mixed name configuration unsupported: found %s, expected %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 115
    :cond_0
    instance-of v1, p1, Lbrave/internal/PredefinedPropagationFields;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 116
    :cond_1
    move-object v1, p1

    check-cast v1, Lbrave/internal/PredefinedPropagationFields;

    .line 117
    .local v1, "that":Lbrave/internal/PredefinedPropagationFields;
    iget-object v3, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    iget-object v2, v1, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 30
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    return-object v1

    .line 33
    :cond_0
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 35
    .local v0, "elements":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_1

    aget-object v1, v0, p1

    nop

    :cond_1
    return-object v1

    .line 35
    .end local v0    # "elements":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 25
    invoke-virtual {p0, p1}, Lbrave/internal/PredefinedPropagationFields;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 26
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lbrave/internal/PredefinedPropagationFields;->get(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 110
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method indexOf(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "length":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 104
    iget-object v2, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public final put(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    .line 48
    :cond_0
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 50
    .local v0, "elements":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 51
    iget-object v1, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v0, v1

    .line 52
    aput-object p2, v0, p1

    goto :goto_0

    .line 53
    :cond_1
    aget-object v1, v0, p1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    monitor-exit p0

    return-void

    .line 56
    :cond_2
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .line 57
    aput-object p2, v0, p1

    .line 59
    :goto_0
    iput-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 60
    .end local v0    # "elements":[Ljava/lang/String;
    monitor-exit p0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lbrave/internal/PredefinedPropagationFields;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 41
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0, v0, p2}, Lbrave/internal/PredefinedPropagationFields;->put(ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method protected final putAllIfAbsent(Lbrave/internal/PropagationFields;)V
    .locals 4
    .param p1, "parent"    # Lbrave/internal/PropagationFields;

    .line 64
    instance-of v0, p1, Lbrave/internal/PredefinedPropagationFields;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    move-object v0, p1

    check-cast v0, Lbrave/internal/PredefinedPropagationFields;

    .line 66
    .local v0, "predefinedParent":Lbrave/internal/PredefinedPropagationFields;
    invoke-virtual {p0, v0}, Lbrave/internal/PredefinedPropagationFields;->checkSameFields(Lbrave/internal/PredefinedPropagationFields;)V

    .line 67
    iget-object v1, v0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 68
    .local v1, "parentValues":[Ljava/lang/String;
    if-nez v1, :cond_1

    return-void

    .line 69
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 70
    aget-object v3, v1, v2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lbrave/internal/PredefinedPropagationFields;->get(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 71
    aget-object v3, v1, v2

    invoke-virtual {p0, v2, v3}, Lbrave/internal/PredefinedPropagationFields;->put(ILjava/lang/String;)V

    .line 69
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public final toMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lbrave/internal/PredefinedPropagationFields;->values:[Ljava/lang/String;

    .line 89
    .local v0, "elements":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 93
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 94
    .local v1, "contents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    array-length v3, v3

    .local v3, "length":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 95
    aget-object v4, v0, v2

    .line 96
    .local v4, "maybeValue":Ljava/lang/String;
    if-nez v4, :cond_1

    .end local v4    # "maybeValue":Ljava/lang/String;
    goto :goto_1

    .line 97
    .restart local v4    # "maybeValue":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lbrave/internal/PredefinedPropagationFields;->fieldNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v4    # "maybeValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_2
    return-object v1

    .line 89
    .end local v0    # "elements":[Ljava/lang/String;
    .end local v1    # "contents":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
