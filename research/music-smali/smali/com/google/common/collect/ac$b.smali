.class abstract Lcom/google/common/collect/ac$b;
.super Lcom/google/common/collect/ac;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ac<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method d()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 429
    new-instance v0, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;-><init>(Lcom/google/common/collect/ac$b;)V

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 408
    invoke-super {p0}, Lcom/google/common/collect/ac;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Lcom/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapKeySet;-><init>(Lcom/google/common/collect/ac;)V

    return-object v0
.end method

.method i()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Lcom/google/common/collect/ImmutableMapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMapValues;-><init>(Lcom/google/common/collect/ac;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 408
    invoke-super {p0}, Lcom/google/common/collect/ac;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract l()Lcom/google/common/collect/bk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .line 408
    invoke-super {p0}, Lcom/google/common/collect/ac;->h()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
