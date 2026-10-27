.class public final Lcom/google/common/collect/ae;
.super Lcom/google/common/collect/af;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/af<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lcom/google/common/collect/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lcom/google/common/collect/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySet:Lcom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ae;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 63
    new-instance v0, Lcom/google/common/collect/ae;

    .line 65
    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ae;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ae;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 548
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ae;)V

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ae;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lcom/google/common/collect/ImmutableList<",
            "TV;>;",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0}, Lcom/google/common/collect/af;-><init>()V

    .line 555
    iput-object p1, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 556
    iput-object p2, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    .line 557
    iput-object p3, p0, Lcom/google/common/collect/ae;->descendingMap:Lcom/google/common/collect/ae;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ae;)Lcom/google/common/collect/RegularImmutableSortedSet;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object p0
.end method

.method private a(II)Lcom/google/common/collect/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->comparator()Ljava/util/Comparator;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ae;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1

    .line 670
    :cond_1
    new-instance v0, Lcom/google/common/collect/ae;

    iget-object v1, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 671
    invoke-virtual {v1, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1, p2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method static a(Ljava/util/Comparator;)Lcom/google/common/collect/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/google/common/collect/ar;->b()Lcom/google/common/collect/ar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/common/collect/ae;->l()Lcom/google/common/collect/ae;

    move-result-object p0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lcom/google/common/collect/ae;

    .line 72
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/google/common/collect/RegularImmutableSortedSet;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/collect/ae;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public static l()Lcom/google/common/collect/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/google/common/collect/ae;->NATURAL_EMPTY_MAP:Lcom/google/common/collect/ae;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 686
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/common/collect/ae;->a(II)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ae;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 736
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-static {p3}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    .line 738
    invoke-static {v0, v1, p1, p3}, Lcom/google/common/base/o;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/google/common/collect/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 757
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/common/collect/ae;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ae;->a(II)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 579
    invoke-super {p0}, Lcom/google/common/collect/af;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 798
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ae;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 803
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 651
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->m()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 616
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$1EntrySet;-><init>(Lcom/google/common/collect/ae;)V

    :goto_0
    return-object v0
.end method

.method public synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->p()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->n()Lcom/google/common/collect/ae;

    move-result-object v0

    return-object v0
.end method

.method public synthetic e()Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->m()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 627
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->m()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 788
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ae;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 793
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public h()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 808
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ae;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 813
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method i()Lcom/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 641
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method j()Z
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->m()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 823
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->c()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/ae;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->m()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ae;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 783
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public n()Lcom/google/common/collect/ae;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ae<",
            "TK;TV;>;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/google/common/collect/ae;->descendingMap:Lcom/google/common/collect/ae;

    if-nez v0, :cond_1

    .line 858
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ar;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ar;->a()Lcom/google/common/collect/ar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ae;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ae;

    move-result-object v0

    return-object v0

    .line 861
    :cond_0
    new-instance v0, Lcom/google/common/collect/ae;

    iget-object v1, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    .line 863
    invoke-virtual {v1}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RegularImmutableSortedSet;

    iget-object v2, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/ae;-><init>(Lcom/google/common/collect/RegularImmutableSortedSet;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ae;)V

    :cond_1
    return-object v0
.end method

.method public synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->o()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public p()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/google/common/collect/ae;->keySet:Lcom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 836
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/common/collect/ae;->valueList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;Z)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ae;->b(Ljava/lang/Object;)Lcom/google/common/collect/ae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/common/collect/ae;->h()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
