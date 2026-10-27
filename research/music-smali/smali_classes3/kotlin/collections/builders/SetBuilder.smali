.class public final Lkotlin/collections/builders/SetBuilder;
.super Lkotlin/collections/AbstractMutableSet;
.source "SetBuilder.kt"

# interfaces
.implements Lcct;
.implements Ljava/io/Serializable;
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
        "Ljava/io/Serializable;",
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
.method public constructor <init>()V
    .locals 1

    .line 14
    new-instance v0, Lkotlin/collections/builders/b;

    invoke-direct {v0}, Lkotlin/collections/builders/b;-><init>()V

    invoke-direct {p0, v0}, Lkotlin/collections/builders/SetBuilder;-><init>(Lkotlin/collections/builders/b;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 16
    new-instance v0, Lkotlin/collections/builders/b;

    invoke-direct {v0, p1}, Lkotlin/collections/builders/b;-><init>(I)V

    invoke-direct {p0, v0}, Lkotlin/collections/builders/SetBuilder;-><init>(Lkotlin/collections/builders/b;)V

    return-void
.end method

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

    .line 12
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableSet;-><init>()V

    .line 11
    iput-object p1, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 3

    .line 24
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Lkotlin/collections/builders/c;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/collections/builders/c;-><init>(Ljava/util/Collection;I)V

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The set cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->a(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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

    .line 38
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 39
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableSet;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final build()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->c()Ljava/util/Map;

    .line 20
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 32
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0, p1}, Lkotlin/collections/builders/b;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    .line 29
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

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

    .line 35
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->h()Lkotlin/collections/builders/b$e;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

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

    .line 43
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 44
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

    .line 48
    iget-object v0, p0, Lkotlin/collections/builders/SetBuilder;->backing:Lkotlin/collections/builders/b;

    invoke-virtual {v0}, Lkotlin/collections/builders/b;->g()V

    .line 49
    invoke-super {p0, p1}, Lkotlin/collections/AbstractMutableSet;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
