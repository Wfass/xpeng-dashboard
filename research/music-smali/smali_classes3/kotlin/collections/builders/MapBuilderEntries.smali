.class public final Lkotlin/collections/builders/MapBuilderEntries;
.super Lkotlin/collections/builders/AbstractMapBuilderEntrySet;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/builders/AbstractMapBuilderEntrySet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;TK;TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final backing:Lkotlin/collections/builders/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/collections/builders/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;-><init>()V

    .line 616
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 615
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lkotlin/collections/builders/MapBuilderEntries;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 622
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->a(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public containsEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->a(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public final getBacking()Lkotlin/collections/builders/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 616
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 619
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 620
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->j()Lkotlin/collections/builders/b$b;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/util/Map$Entry;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->b(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 631
    invoke-super {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderEntries;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 636
    invoke-super {p0, p1}, Lkotlin/collections/builders/AbstractMapBuilderEntrySet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
