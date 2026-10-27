.class final Lcom/google/common/collect/FilteredKeySetMultimap;
.super Lcom/google/common/collect/FilteredKeyMultimap;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FilteredKeySetMultimap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/FilteredKeyMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/u<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public synthetic a()Lcom/google/common/collect/al;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->q()Lcom/google/common/collect/bb;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeySetMultimap;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeySetMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public synthetic i()Ljava/util/Collection;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method synthetic j()Ljava/util/Collection;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeySetMultimap;->s()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/google/common/collect/bb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bb<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeySetMultimap;->a:Lcom/google/common/collect/al;

    check-cast v0, Lcom/google/common/collect/bb;

    return-object v0
.end method

.method public r()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 60
    invoke-super {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->i()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method s()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/common/collect/FilteredKeySetMultimap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredKeySetMultimap$EntrySet;-><init>(Lcom/google/common/collect/FilteredKeySetMultimap;)V

    return-object v0
.end method
