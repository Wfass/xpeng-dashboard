.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$c;,
        Lcom/google/common/collect/Maps$EntrySet;,
        Lcom/google/common/collect/Maps$Values;,
        Lcom/google/common/collect/Maps$NavigableKeySet;,
        Lcom/google/common/collect/Maps$SortedKeySet;,
        Lcom/google/common/collect/Maps$KeySet;,
        Lcom/google/common/collect/Maps$g;,
        Lcom/google/common/collect/Maps$h;,
        Lcom/google/common/collect/Maps$e;,
        Lcom/google/common/collect/Maps$FilteredEntrySortedMap;,
        Lcom/google/common/collect/Maps$FilteredEntryMap;,
        Lcom/google/common/collect/Maps$f;,
        Lcom/google/common/collect/Maps$FilteredMapValues;,
        Lcom/google/common/collect/Maps$a;,
        Lcom/google/common/collect/Maps$UnmodifiableEntrySet;,
        Lcom/google/common/collect/Maps$UnmodifiableEntries;,
        Lcom/google/common/collect/Maps$b;,
        Lcom/google/common/collect/Maps$d;
    }
.end annotation


# direct methods
.method static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const-string v0, "expectedSize"

    .line 226
    invoke-static {p0, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    const p0, 0x7fffffff

    return p0
.end method

.method static a()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/h<",
            "Ljava/util/Map$Entry<",
            "TK;*>;TK;>;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/google/common/collect/Maps$d;->KEY:Lcom/google/common/collect/Maps$d;

    return-object v0
.end method

.method static a(Lcom/google/common/base/p;)Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "-TK;>;)",
            "Lcom/google/common/base/p<",
            "Ljava/util/Map$Entry<",
            "TK;*>;>;"
        }
    .end annotation

    .line 2112
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Lcom/google/common/base/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/h;)Lcom/google/common/base/p;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TK;>;",
            "Lcom/google/common/base/h<",
            "-TK;TV;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1107
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Collection;)Lcom/google/common/collect/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Lcom/google/common/collect/ac<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 4036
    new-instance v0, Lcom/google/common/collect/ac$a;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ac$a;-><init>(I)V

    .line 4038
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 4039
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ac$a;

    move v1, v3

    goto :goto_0

    .line 4041
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TK;>;",
            "Lcom/google/common/base/h<",
            "-TK;TV;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1125
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 1128
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1129
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1130
    invoke-interface {p1, v1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1132
    :cond_0
    invoke-static {v0}, Lcom/google/common/collect/ac;->a(Ljava/util/Map;)Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3400
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3402
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3494
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Collections2;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3496
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const-string v1, ", "

    .line 3498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    .line 3501
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    .line 3503
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/common/collect/Maps$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$1;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1253
    new-instance v0, Lcom/google/common/collect/aa;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/aa;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1278
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    new-instance v0, Lcom/google/common/collect/Maps$7;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$7;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/Maps$a;Lcom/google/common/base/p;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$a<",
            "TK;TV;>;",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2514
    new-instance v0, Lcom/google/common/collect/Maps$FilteredEntryMap;

    iget-object v1, p0, Lcom/google/common/collect/Maps$a;->a:Ljava/util/Map;

    iget-object p0, p0, Lcom/google/common/collect/Maps$a;->b:Lcom/google/common/base/p;

    .line 2515
    invoke-static {p0, p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/Maps$FilteredEntryMap;-><init>(Ljava/util/Map;Lcom/google/common/base/p;)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;Lcom/google/common/base/p;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/common/base/p<",
            "-TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2144
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2145
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object v0

    .line 2146
    instance-of v1, p0, Lcom/google/common/collect/Maps$a;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/google/common/collect/Maps$a;

    .line 2147
    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/collect/Maps$a;Lcom/google/common/base/p;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/collect/Maps$f;

    .line 2148
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/common/collect/Maps$f;-><init>(Ljava/util/Map;Lcom/google/common/base/p;Lcom/google/common/base/p;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/util/Set;Lcom/google/common/base/h;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lcom/google/common/base/h<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 705
    new-instance v0, Lcom/google/common/collect/Maps$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$b;-><init>(Ljava/util/Set;Lcom/google/common/base/h;)V

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/Maps$e;Lcom/google/common/base/p;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Maps$e<",
            "TK;TV;>;",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2536
    invoke-static {p0}, Lcom/google/common/collect/Maps$e;->a(Lcom/google/common/collect/Maps$e;)Lcom/google/common/base/p;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/p;)Lcom/google/common/base/p;

    move-result-object p1

    .line 2537
    new-instance v0, Lcom/google/common/collect/Maps$e;

    invoke-static {p0}, Lcom/google/common/collect/Maps$e;->b(Lcom/google/common/collect/Maps$e;)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$e;-><init>(Ljava/util/NavigableMap;Lcom/google/common/base/p;)V

    return-object v0
.end method

.method public static a(Ljava/util/NavigableMap;Lcom/google/common/base/p;)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2466
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2467
    instance-of v0, p0, Lcom/google/common/collect/Maps$e;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/common/collect/Maps$e;

    .line 2468
    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/collect/Maps$e;Lcom/google/common/base/p;)Ljava/util/NavigableMap;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$e;

    .line 2469
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/NavigableMap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$e;-><init>(Ljava/util/NavigableMap;Lcom/google/common/base/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method static synthetic a(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3457
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3460
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static b()Lcom/google/common/base/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/h<",
            "Ljava/util/Map$Entry<",
            "*TV;>;TV;>;"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/google/common/collect/Maps$d;->VALUE:Lcom/google/common/collect/Maps$d;

    return-object v0
.end method

.method static b(Lcom/google/common/base/p;)Lcom/google/common/base/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/p<",
            "-TV;>;)",
            "Lcom/google/common/base/p<",
            "Ljava/util/Map$Entry<",
            "*TV;>;>;"
        }
    .end annotation

    .line 2116
    invoke-static {}, Lcom/google/common/collect/Maps;->b()Lcom/google/common/base/h;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/base/q;->a(Lcom/google/common/base/p;Lcom/google/common/base/h;)Lcom/google/common/base/p;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Iterable;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lcom/google/common/base/h<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1167
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/common/base/h;)Lcom/google/common/collect/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lcom/google/common/base/h<",
            "-TV;TK;>;)",
            "Lcom/google/common/collect/ac<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1202
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    invoke-static {}, Lcom/google/common/collect/ac;->b()Lcom/google/common/collect/ac$a;

    move-result-object v0

    .line 1204
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1205
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1206
    invoke-interface {p1, v1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ac$a;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ac$a;

    goto :goto_0

    .line 1209
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/common/collect/ac$a;->a()Lcom/google/common/collect/ac;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1211
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1212
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ". To index multiple values under a key, use Multimaps.index."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static b(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;*>;)TK;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3561
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/google/common/collect/Maps$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$2;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static b(Ljava/util/Set;Lcom/google/common/base/h;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lcom/google/common/base/h<",
            "-TK;TV;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 845
    new-instance v0, Lcom/google/common/collect/Maps$3;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Maps$3;-><init>(Ljava/util/Iterator;Lcom/google/common/base/h;)V

    return-object v0
.end method

.method private static b(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1034
    new-instance v0, Lcom/google/common/collect/Maps$6;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$6;-><init>(Ljava/util/NavigableSet;)V

    return-object v0
.end method

.method private static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 980
    new-instance v0, Lcom/google/common/collect/Maps$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$4;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static b(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 999
    new-instance v0, Lcom/google/common/collect/Maps$5;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$5;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method static b(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3475
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3478
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 3413
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3415
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method static c(Ljava/util/Iterator;)Lcom/google/common/collect/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lcom/google/common/collect/bk<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1294
    new-instance v0, Lcom/google/common/collect/Maps$8;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$8;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method static c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "*TV;>;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 3426
    invoke-static {p0}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3428
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static d()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static d(Ljava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3485
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 3486
    check-cast p1, Ljava/util/Map;

    .line 3487
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
