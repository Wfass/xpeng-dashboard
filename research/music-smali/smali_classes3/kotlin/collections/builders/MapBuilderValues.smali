.class public final Lkotlin/collections/builders/MapBuilderValues;
.super Lkotlin/collections/AbstractMutableCollection;
.source "MapBuilder.kt"

# interfaces
.implements Lccn;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableCollection<",
        "TV;>;",
        "Lccn;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final backing:Lkotlin/collections/builders/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/b<",
            "*TV;>;"
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
            "*TV;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableCollection;-><init>()V

    .line 586
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 592
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
            "+TV;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 594
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 591
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBacking()Lkotlin/collections/builders/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/collections/builders/b<",
            "*TV;>;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 589
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

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
            "TV;>;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->i()Lkotlin/collections/builders/b$f;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 596
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->c(Ljava/lang/Object;)Z

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

    .line 599
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 600
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableCollection;->removeAll(Ljava/util/Collection;)Z

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

    .line 604
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderValues;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 605
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
