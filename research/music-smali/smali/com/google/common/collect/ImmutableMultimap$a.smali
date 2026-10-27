.class public Lcom/google/common/collect/ImmutableMultimap$a;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    invoke-static {}, Lcom/google/common/collect/at;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultimap$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 159
    invoke-static {p1, p2}, Lcom/google/common/collect/m;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMultimap$a;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 164
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/google/common/collect/ImmutableMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultimap$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$a;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    .line 287
    invoke-static {v1}, Lcom/google/common/collect/ar;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ar;->c()Lcom/google/common/collect/ar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ar;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultimap$a;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Lcom/google/common/collect/ab;->a(Ljava/util/Collection;Ljava/util/Comparator;)Lcom/google/common/collect/ab;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
