.class final Lcom/google/common/collect/FilteredMultimapValues;
.super Ljava/util/AbstractCollection;
.source "FilteredMultimapValues.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final multimap:Lcom/google/common/collect/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/t<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/t<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/t;

    iput-object p1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v0}, Lcom/google/common/collect/t;->d()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v0, p1}, Lcom/google/common/collect/t;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 45
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v0}, Lcom/google/common/collect/t;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v0}, Lcom/google/common/collect/t;->b()Lcom/google/common/base/p;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v1}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/al;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/al;->i()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 62
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {v0, v2}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/common/base/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    .line 75
    invoke-interface {v0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/al;->i()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    .line 78
    invoke-interface {v1}, Lcom/google/common/collect/t;->b()Lcom/google/common/base/p;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    .line 77
    invoke-static {v1, p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    .line 84
    invoke-interface {v0}, Lcom/google/common/collect/t;->a()Lcom/google/common/collect/al;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/al;->i()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    .line 87
    invoke-interface {v1}, Lcom/google/common/collect/t;->b()Lcom/google/common/base/p;

    move-result-object v1

    .line 88
    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    .line 86
    invoke-static {v1, p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/google/common/collect/FilteredMultimapValues;->multimap:Lcom/google/common/collect/t;

    invoke-interface {v0}, Lcom/google/common/collect/t;->c()I

    move-result v0

    return v0
.end method
