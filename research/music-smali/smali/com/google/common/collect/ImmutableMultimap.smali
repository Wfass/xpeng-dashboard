.class public abstract Lcom/google/common/collect/ImmutableMultimap;
.super Lcom/google/common/collect/h;
.source "ImmutableMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableMultimap$Values;,
        Lcom/google/common/collect/ImmutableMultimap$b;,
        Lcom/google/common/collect/ImmutableMultimap$Keys;,
        Lcom/google/common/collect/ImmutableMultimap$EntryCollection;,
        Lcom/google/common/collect/ImmutableMultimap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final transient b:Lcom/google/common/collect/ac;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ac<",
            "TK;+",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final transient c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ac;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ac<",
            "TK;+",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 342
    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    .line 343
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultimap;->b:Lcom/google/common/collect/ac;

    .line 344
    iput p2, p0, Lcom/google/common/collect/ImmutableMultimap;->c:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->b:Lcom/google/common/collect/ac;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ac;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 452
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/google/common/collect/ImmutableMultimap;->c:I

    return v0
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap;->h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultimap;->g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 495
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 474
    invoke-super {p0, p1}, Lcom/google/common/collect/h;->e(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lcom/google/common/collect/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic f()Ljava/util/Collection;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->v()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public abstract g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method synthetic g()Ljava/util/Collection;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->w()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method synthetic h()Ljava/util/Iterator;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->x()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/google/common/collect/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/util/Collection;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->s()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method synthetic j()Ljava/util/Collection;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->t()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method synthetic k()Ljava/util/Iterator;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->u()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
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

    .line 510
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/google/common/collect/h;->m()Z

    move-result v0

    return v0
.end method

.method public synthetic n()Ljava/util/Set;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->q()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Ljava/util/Map;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap;->r()Lcom/google/common/collect/ac;

    move-result-object v0

    return-object v0
.end method

.method p()Z
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->b:Lcom/google/common/collect/ac;

    invoke-virtual {v0}, Lcom/google/common/collect/ac;->j()Z

    move-result v0

    return v0
.end method

.method public q()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->b:Lcom/google/common/collect/ac;

    invoke-virtual {v0}, Lcom/google/common/collect/ac;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/google/common/collect/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ac<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap;->b:Lcom/google/common/collect/ac;

    return-object v0
.end method

.method public s()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 516
    invoke-super {p0}, Lcom/google/common/collect/h;->i()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method t()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$EntryCollection;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-super {p0}, Lcom/google/common/collect/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()Lcom/google/common/collect/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 560
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$1;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method public v()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 659
    invoke-super {p0}, Lcom/google/common/collect/h;->f()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method w()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$Values;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$Values;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method

.method x()Lcom/google/common/collect/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TV;>;"
        }
    .end annotation

    .line 669
    new-instance v0, Lcom/google/common/collect/ImmutableMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableMultimap$2;-><init>(Lcom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method
