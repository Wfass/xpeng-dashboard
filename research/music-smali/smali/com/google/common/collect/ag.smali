.class public abstract Lcom/google/common/collect/ag;
.super Lcom/google/common/collect/AbstractTable;
.source "ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic a()Ljava/util/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->o()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 302
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/AbstractTable;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->b()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->m()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;)Lcom/google/common/collect/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/google/common/collect/ac<",
            "TC;TV;>;"
        }
    .end annotation

    const-string v0, "rowKey"

    .line 281
    invoke-static {p1, v0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->q()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ac;

    invoke-static {}, Lcom/google/common/collect/ac;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    .line 282
    invoke-static {p1, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ac;

    return-object p1
.end method

.method public synthetic d()Ljava/util/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->j()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ag;->d(Ljava/lang/Object;)Lcom/google/common/collect/ac;

    move-result-object p1

    return-object p1
.end method

.method synthetic e()Ljava/util/Set;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->k()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic f()Ljava/util/Iterator;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->l()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Ljava/util/Collection;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->m()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method synthetic h()Ljava/util/Collection;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->n()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method final i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public j()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 224
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->d()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method abstract k()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method final l()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public m()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 237
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method abstract n()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public o()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->p()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ac;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract p()Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ac<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract q()Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ac<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method

.method public synthetic r()Ljava/util/Map;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->p()Lcom/google/common/collect/ac;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s()Ljava/util/Map;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ag;->q()Lcom/google/common/collect/ac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
