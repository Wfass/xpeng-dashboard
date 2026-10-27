.class public Lcom/google/common/collect/TreeRangeSet;
.super Lcom/google/common/collect/e;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeSet$AsRanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lcom/google/common/collect/e<",
        "TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/q<",
            "TC;>;",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient asDescendingSetOfRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private transient complement:Lcom/google/common/collect/ax;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ax<",
            "TC;>;"
        }
    .end annotation
.end field


# virtual methods
.method public bridge synthetic a()Z
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/google/common/collect/e;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Comparable;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/e;->a(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Comparable;)Lcom/google/common/collect/au;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/au<",
            "TC;>;"
        }
    .end annotation

    .line 124
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/q;->b(Ljava/lang/Comparable;)Lcom/google/common/collect/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/au;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/au;->e(Ljava/lang/Comparable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/au;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/au<",
            "TC;>;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$AsRanges;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$AsRanges;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->asRanges:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/google/common/collect/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
