.class Lcom/google/common/graph/j;
.super Ljava/lang/Object;
.source "MapIteratorCache.java"


# annotations
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
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/common/graph/j;Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/common/graph/j;->b:Ljava/util/Map$Entry;

    return-object p1
.end method

.method static synthetic a(Lcom/google/common/graph/j;)Ljava/util/Map;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/common/graph/j;->a:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/common/graph/j;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/common/graph/j;->b:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
