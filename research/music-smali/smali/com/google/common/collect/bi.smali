.class public final Lcom/google/common/collect/bi;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lcom/google/common/collect/aw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/bi$c;,
        Lcom/google/common/collect/bi$a;,
        Lcom/google/common/collect/bi$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/aw<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/aw;


# instance fields
.field private final a:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lcom/google/common/collect/q<",
            "TK;>;",
            "Lcom/google/common/collect/bi$b<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lcom/google/common/collect/bi$1;

    invoke-direct {v0}, Lcom/google/common/collect/bi$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/bi;->b:Lcom/google/common/collect/aw;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/bi;)Ljava/util/NavigableMap;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    return-object p0
.end method

.method private a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "TK;>;",
            "Lcom/google/common/collect/q<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    new-instance v1, Lcom/google/common/collect/bi$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/common/collect/bi$b;-><init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/au;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TK;>;)V"
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Lcom/google/common/collect/au;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    .line 205
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/bi$b;

    .line 209
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v2

    if-lez v2, :cond_2

    .line 211
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v2

    if-lez v2, :cond_1

    .line 214
    iget-object v2, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 216
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v3

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/bi$b;

    invoke-virtual {v4}, Lcom/google/common/collect/bi$b;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 214
    invoke-direct {p0, v2, v3, v4}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V

    .line 221
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->b()Lcom/google/common/collect/q;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bi$b;

    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 220
    invoke-direct {p0, v1, v2, v0}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 228
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/bi$b;

    .line 232
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/q;->a(Lcom/google/common/collect/q;)I

    move-result v2

    if-lez v2, :cond_3

    .line 235
    iget-object v2, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    .line 237
    invoke-virtual {v1}, Lcom/google/common/collect/bi$b;->c()Lcom/google/common/collect/q;

    move-result-object v1

    .line 238
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bi$b;

    invoke-virtual {v0}, Lcom/google/common/collect/bi$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 235
    invoke-direct {p0, v2, v1, v0}, Lcom/google/common/collect/bi;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    iget-object p1, p1, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedMap;->clear()V

    return-void
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 246
    new-instance v0, Lcom/google/common/collect/bi$a;

    iget-object v1, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/bi$a;-><init>(Lcom/google/common/collect/bi;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 697
    instance-of v0, p1, Lcom/google/common/collect/aw;

    if-eqz v0, :cond_0

    .line 698
    check-cast p1, Lcom/google/common/collect/aw;

    .line 699
    invoke-virtual {p0}, Lcom/google/common/collect/bi;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/aw;->b()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 706
    invoke-virtual {p0}, Lcom/google/common/collect/bi;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/common/collect/bi;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
