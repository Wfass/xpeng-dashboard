.class public Lcom/google/common/collect/ImmutableSetMultimap;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableSetMultimap.java"

# interfaces
.implements Lcom/google/common/collect/bb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSetMultimap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/bb<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient emptySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation
.end field

.field private transient entries:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient inverse:Lcom/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Lcom/google/common/collect/ImmutableSetMultimap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSetMultimap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableSetMultimap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->entries:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->b:Lcom/google/common/collect/ac;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableSet;

    .line 357
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;->emptySet:Lcom/google/common/collect/ImmutableSet;

    invoke-static {p1, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableSet;

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSetMultimap;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic i()Ljava/util/Collection;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s()Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSetMultimap;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
