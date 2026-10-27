.class abstract Lzipkin2/storage/InMemoryStorage$SortedMultimap;
.super Ljava/lang/Object;
.source "InMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SortedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 447
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    const/4 v0, 0x0

    iput v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    .line 448
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    .line 449
    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 476
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 477
    const/4 v0, 0x0

    iput v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    .line 478
    return-void
.end method

.method get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 481
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 482
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 454
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 462
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 463
    .local v0, "valueContainer":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 464
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->valueContainer()Ljava/util/Collection;

    move-result-object v2

    move-object v0, v2

    invoke-interface {v1, p1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    .line 467
    :cond_1
    return-void
.end method

.method remove(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 470
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 471
    .local v0, "value":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    iget v1, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    .line 472
    :cond_0
    return-object v0
.end method

.method size()I
    .locals 1

    .line 458
    .local p0, "this":Lzipkin2/storage/InMemoryStorage$SortedMultimap;, "Lzipkin2/storage/InMemoryStorage$SortedMultimap<TK;TV;>;"
    iget v0, p0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size:I

    return v0
.end method

.method abstract valueContainer()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method
