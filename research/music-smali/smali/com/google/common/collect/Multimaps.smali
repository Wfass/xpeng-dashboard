.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$AsMap;,
        Lcom/google/common/collect/Multimaps$Entries;,
        Lcom/google/common/collect/Multimaps$Keys;,
        Lcom/google/common/collect/Multimaps$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/h;)Lcom/google/common/collect/ab;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lcom/google/common/base/h<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ab<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1520
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->a(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ab;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ab;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lcom/google/common/base/h<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ab<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1561
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    invoke-static {}, Lcom/google/common/collect/ab;->b()Lcom/google/common/collect/ab$a;

    move-result-object v0

    .line 1563
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1565
    invoke-static {v1, p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-interface {p1, v1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ab$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ab$a;

    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ab$a;->a()Lcom/google/common/collect/ab;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/google/common/collect/al;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/al<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2071
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/al;

    if-eqz v0, :cond_1

    .line 2072
    check-cast p1, Lcom/google/common/collect/al;

    .line 2073
    invoke-interface {p0}, Lcom/google/common/collect/al;->o()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/al;->o()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
