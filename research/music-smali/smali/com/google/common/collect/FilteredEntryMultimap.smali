.class Lcom/google/common/collect/FilteredEntryMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "FilteredEntryMultimap.java"

# interfaces
.implements Lcom/google/common/collect/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/FilteredEntryMultimap$Keys;,
        Lcom/google/common/collect/FilteredEntryMultimap$a;,
        Lcom/google/common/collect/FilteredEntryMultimap$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/t<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/al<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/google/common/base/p<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 88
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 89
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/p;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/FilteredEntryMultimap;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->b:Lcom/google/common/base/p;

    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a()Lcom/google/common/collect/al;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/al<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    return-object v0
.end method

.method a(Lcom/google/common/base/p;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;)Z"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-instance v5, Lcom/google/common/collect/FilteredEntryMultimap$b;

    invoke-direct {v5, p0, v3}, Lcom/google/common/collect/FilteredEntryMultimap$b;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;

    move-result-object v4

    .line 154
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Lcom/google/common/collect/Maps;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 158
    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public b()Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->b:Lcom/google/common/base/p;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->p()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/FilteredEntryMultimap$b;

    invoke-direct {v1, p0, p1}, Lcom/google/common/collect/FilteredEntryMultimap$b;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/google/common/collect/FilteredEntryMultimap;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 129
    new-instance v0, Lcom/google/common/collect/FilteredMultimapValues;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredMultimapValues;-><init>(Lcom/google/common/collect/t;)V

    return-object v0
.end method

.method j()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->i()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/FilteredEntryMultimap;->b:Lcom/google/common/base/p;

    invoke-static {v0, v1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/google/common/collect/FilteredEntryMultimap$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/FilteredEntryMultimap$a;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;)V

    return-object v0
.end method

.method p()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    instance-of v0, v0, Lcom/google/common/collect/bb;

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
