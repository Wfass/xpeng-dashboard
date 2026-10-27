.class final Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;
.super Lzipkin2/storage/InMemoryStorage$SortedMultimap;
.source "InMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServiceNameToTraceIds"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 420
    sget-object v0, Lzipkin2/storage/InMemoryStorage;->STRING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;-><init>(Ljava/util/Comparator;)V

    .line 421
    return-void
.end method


# virtual methods
.method removeServiceIfTraceId(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "lowTraceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 431
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->delegate:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 432
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 433
    .local v3, "lowTraceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v3, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .end local v3    # "lowTraceIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 437
    :cond_1
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->delegate:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 438
    return-object v0
.end method

.method bridge synthetic valueContainer()Ljava/util/Collection;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->valueContainer()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method valueContainer()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
