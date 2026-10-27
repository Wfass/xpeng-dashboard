.class public Lcom/google/common/collect/ab;
.super Lcom/google/common/collect/ImmutableMultimap;
.source "ImmutableListMultimap.java"

# interfaces
.implements Lcom/google/common/collect/ak;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ab$a;
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
        "Lcom/google/common/collect/ak<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient inverse:Lcom/google/common/collect/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ab<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ac;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ac<",
            "TK;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;>;I)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMultimap;-><init>(Lcom/google/common/collect/ac;I)V

    return-void
.end method

.method public static a()Lcom/google/common/collect/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ab<",
            "TK;TV;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/google/common/collect/s;->a:Lcom/google/common/collect/s;

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ab;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+",
            "Ljava/util/Collection<",
            "+TV;>;>;>;",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/ab<",
            "TK;TV;>;"
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/google/common/collect/ab;->a()Lcom/google/common/collect/ab;

    move-result-object p0

    return-object p0

    .line 273
    :cond_0
    new-instance v0, Lcom/google/common/collect/ac$a;

    .line 274
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ac$a;-><init>(I)V

    const/4 v1, 0x0

    .line 277
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    if-nez p1, :cond_2

    .line 282
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {p1, v2}, Lcom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 284
    :goto_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 285
    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ac$a;

    .line 286
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 290
    :cond_3
    new-instance p0, Lcom/google/common/collect/ab;

    invoke-virtual {v0}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/ab;-><init>(Lcom/google/common/collect/ac;I)V

    return-object p0
.end method

.method public static b()Lcom/google/common/collect/ab$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ab$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/google/common/collect/ab$a;

    invoke-direct {v0}, Lcom/google/common/collect/ab$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/google/common/collect/ab;->b:Lcom/google/common/collect/ac;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ac;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    .line 308
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 348
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic g(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ab;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method
