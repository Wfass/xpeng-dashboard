.class abstract Lcom/google/common/collect/RegularImmutableTable;
.super Lcom/google/common/collect/ag;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableTable$Values;,
        Lcom/google/common/collect/RegularImmutableTable$CellSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ag<",
        "TR;TC;TV;>;"
    }
.end annotation


# virtual methods
.method abstract a(I)Lcom/google/common/collect/be$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method synthetic e()Ljava/util/Set;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->k()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method synthetic h()Ljava/util/Collection;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->n()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method final k()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$CellSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableTable$CellSet;-><init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V

    :goto_0
    return-object v0
.end method

.method final n()Lcom/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableTable;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/RegularImmutableTable$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/RegularImmutableTable$Values;-><init>(Lcom/google/common/collect/RegularImmutableTable;Lcom/google/common/collect/RegularImmutableTable$1;)V

    :goto_0
    return-object v0
.end method
