.class public abstract Lcom/google/common/collect/ac;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ac$b;,
        Lcom/google/common/collect/ac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field private transient entrySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient multimapView:Lcom/google/common/collect/ImmutableSetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient values:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 406
    new-array v0, v0, [Ljava/util/Map$Entry;

    sput-object v0, Lcom/google/common/collect/ac;->a:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/ac;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->b:Lcom/google/common/collect/ac;

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;)Lcom/google/common/collect/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 397
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 399
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 401
    :goto_0
    new-instance v1, Lcom/google/common/collect/ac$a;

    invoke-direct {v1, v0}, Lcom/google/common/collect/ac$a;-><init>(I)V

    .line 402
    invoke-virtual {v1, p0}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ac$a;

    .line 403
    invoke-virtual {v1}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lcom/google/common/collect/ac;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 376
    instance-of v0, p0, Lcom/google/common/collect/ac;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    .line 378
    move-object v0, p0

    check-cast v0, Lcom/google/common/collect/ac;

    .line 379
    invoke-virtual {v0}, Lcom/google/common/collect/ac;->j()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 383
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ac;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lcom/google/common/collect/ac$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ac$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/google/common/collect/ac$a;

    invoke-direct {v0}, Lcom/google/common/collect/ac$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 534
    iget-object v0, p0, Lcom/google/common/collect/ac;->entrySet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 535
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->d()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ac;->entrySet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 487
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->h()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract d()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public e()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/common/collect/ac;->keySet:Lcom/google/common/collect/ImmutableSet;

    if-nez v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ac;->keySet:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 683
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->d(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method abstract f()Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method g()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TK;>;"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    .line 561
    new-instance v1, Lcom/google/common/collect/ac$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ac$1;-><init>(Lcom/google/common/collect/ac;Lcom/google/common/collect/bk;)V

    return-object v1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 522
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public h()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/google/common/collect/ac;->values:Lcom/google/common/collect/ImmutableCollection;

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->i()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ac;->values:Lcom/google/common/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method abstract i()Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method abstract j()Z
.end method

.method k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 450
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 463
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 699
    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/ac;->h()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
