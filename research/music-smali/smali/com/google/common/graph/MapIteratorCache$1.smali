.class Lcom/google/common/graph/MapIteratorCache$1;
.super Ljava/util/AbstractSet;
.source "MapIteratorCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/j;


# direct methods
.method constructor <init>(Lcom/google/common/graph/j;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/j;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/j;

    invoke-virtual {v0, p1}, Lcom/google/common/graph/j;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TK;>;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/j;

    invoke-static {v0}, Lcom/google/common/graph/j;->a(Lcom/google/common/graph/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/google/common/graph/MapIteratorCache$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/MapIteratorCache$1$1;-><init>(Lcom/google/common/graph/MapIteratorCache$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 87
    invoke-virtual {p0}, Lcom/google/common/graph/MapIteratorCache$1;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/common/graph/MapIteratorCache$1;->this$0:Lcom/google/common/graph/j;

    invoke-static {v0}, Lcom/google/common/graph/j;->a(Lcom/google/common/graph/j;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
