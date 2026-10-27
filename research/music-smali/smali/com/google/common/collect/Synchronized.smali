.class final Lcom/google/common/collect/Synchronized;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Synchronized$SynchronizedDeque;,
        Lcom/google/common/collect/Synchronized$SynchronizedQueue;,
        Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;,
        Lcom/google/common/collect/Synchronized$SynchronizedAsMapEntries;,
        Lcom/google/common/collect/Synchronized$SynchronizedMultiset;,
        Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;,
        Lcom/google/common/collect/Synchronized$SynchronizedList;,
        Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedSet;,
        Lcom/google/common/collect/Synchronized$SynchronizedCollection;,
        Lcom/google/common/collect/Synchronized$a;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->c(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1389
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 211
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 102
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    return-object v0
.end method

.method private static b(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 305
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method static synthetic b(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->c(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static c(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 847
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 848
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 850
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 851
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 853
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 854
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 856
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 860
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 861
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->b(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0

    .line 863
    :cond_0
    invoke-static {p0, p1}, Lcom/google/common/collect/Synchronized;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
