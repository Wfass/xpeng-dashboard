.class public final Lkotlin/collections/builders/MapBuilderKeys;
.super Lkotlin/collections/AbstractMutableSet;
.source "MapBuilder.kt"

# interfaces
.implements Lcct;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractMutableSet<",
        "TE;>;",
        "Lcct;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field private final backing:Lkotlin/collections/builders/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/builders/b<",
            "TE;*>;"
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
            "TE;*>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    .line 562
    iput-object p1, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 569
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
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 568
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 567
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 565
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

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
            "TE;>;"
        }
    .end annotation

    .line 572
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->h()Lkotlin/collections/builders/b$e;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 571
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->b(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    .line 575
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 576
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableSet;->removeAll(Ljava/util/Collection;)Z

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

    .line 580
    iget-object v0, p0, Lkotlin/collections/builders/MapBuilderKeys;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 581
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
