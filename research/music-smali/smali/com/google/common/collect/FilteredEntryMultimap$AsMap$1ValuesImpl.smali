.class Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;
.super Lcom/google/common/collect/Maps$Values;
.source "FilteredEntryMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/FilteredEntryMultimap$a;->c()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/FilteredEntryMultimap$a;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    .line 296
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .line 301
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 302
    check-cast p1, Ljava/util/Collection;

    .line 303
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap;->a:Lcom/google/common/collect/al;

    .line 304
    invoke-interface {v0}, Lcom/google/common/collect/al;->o()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    new-instance v4, Lcom/google/common/collect/FilteredEntryMultimap$b;

    iget-object v5, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v5, v5, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-direct {v4, v5, v2}, Lcom/google/common/collect/FilteredEntryMultimap$b;-><init>(Lcom/google/common/collect/FilteredEntryMultimap;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Ljava/util/Collection;Lcom/google/common/base/p;)Ljava/util/Collection;

    move-result-object v2

    .line 310
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 312
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/google/common/collect/FilteredEntryMultimap$AsMap$1ValuesImpl;->this$1:Lcom/google/common/collect/FilteredEntryMultimap$a;

    iget-object v0, v0, Lcom/google/common/collect/FilteredEntryMultimap$a;->a:Lcom/google/common/collect/FilteredEntryMultimap;

    invoke-static {p1}, Lcom/google/common/base/q;->a(Ljava/util/Collection;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/FilteredEntryMultimap;->a(Lcom/google/common/base/p;)Z

    move-result p1

    return p1
.end method
