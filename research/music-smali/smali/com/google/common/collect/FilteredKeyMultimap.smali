.class Lcom/google/common/collect/FilteredKeyMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "FilteredKeyMultimap.java"

# interfaces
.implements Lcom/google/common/collect/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FilteredKeyMultimap$Entries;,
        Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;,
        Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/t<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/al<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "-TK;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lcom/google/common/collect/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/al<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    return-object v0
.end method

.method public b()Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->b:Lcom/google/common/base/p;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->b:Lcom/google/common/base/p;

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()I
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 62
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0, p1}, Lcom/google/common/collect/FilteredKeyMultimap;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->p()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->b:Lcom/google/common/base/p;

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    instance-of v0, v0, Lcom/google/common/collect/bb;

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;

    invoke-direct {v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingSet;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 107
    :cond_1
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;

    invoke-direct {v0, p1}, Lcom/google/common/collect/FilteredKeyMultimap$AddRejectingList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredKeyMultimap;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->n()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->b:Lcom/google/common/base/p;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/p;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/google/common/collect/FilteredMultimapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredMultimapValues;-><init>(Lcom/google/common/collect/t;)V

    return-object v0
.end method

.method j()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/google/common/collect/FilteredKeyMultimap$Entries;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredKeyMultimap$Entries;-><init>(Lcom/google/common/collect/FilteredKeyMultimap;)V

    return-object v0
.end method

.method k()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method l()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->o()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredKeyMultimap;->b:Lcom/google/common/base/p;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Lcom/google/common/base/p;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/common/collect/FilteredKeyMultimap;->a:Lcom/google/common/collect/al;

    instance-of v0, v0, Lcom/google/common/collect/bb;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
