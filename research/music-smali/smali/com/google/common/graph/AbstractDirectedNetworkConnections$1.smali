.class Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;
.super Ljava/util/AbstractSet;
.source "AbstractDirectedNetworkConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/a;


# direct methods
.method constructor <init>(Lcom/google/common/graph/a;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v0, v0, Lcom/google/common/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v0, v0, Lcom/google/common/graph/a;->b:Ljava/util/Map;

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

.method public iterator()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TE;>;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    .line 70
    invoke-static {v0}, Lcom/google/common/graph/a;->a(Lcom/google/common/graph/a;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v0, v0, Lcom/google/common/graph/a;->a:Ljava/util/Map;

    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v1, v1, Lcom/google/common/graph/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->a(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v0, v0, Lcom/google/common/graph/a;->a:Ljava/util/Map;

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v1, v1, Lcom/google/common/graph/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    .line 73
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;)Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v0, v0, Lcom/google/common/graph/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    iget-object v1, v1, Lcom/google/common/graph/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/graph/AbstractDirectedNetworkConnections$1;->this$0:Lcom/google/common/graph/a;

    invoke-static {v2}, Lcom/google/common/graph/a;->a(Lcom/google/common/graph/a;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lakv;->c(II)I

    move-result v0

    return v0
.end method
