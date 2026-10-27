.class Lcom/google/common/graph/DirectedGraphConnections$2;
.super Ljava/util/AbstractSet;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/graph/f;


# direct methods
.method constructor <init>(Lcom/google/common/graph/f;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/f;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/f;

    invoke-static {v0}, Lcom/google/common/graph/f;->a(Lcom/google/common/graph/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/graph/f;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Lcom/google/common/collect/bk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/bk<",
            "TN;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/f;

    invoke-static {v0}, Lcom/google/common/graph/f;->a(Lcom/google/common/graph/f;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    new-instance v1, Lcom/google/common/graph/DirectedGraphConnections$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/graph/DirectedGraphConnections$2$1;-><init>(Lcom/google/common/graph/DirectedGraphConnections$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/google/common/graph/DirectedGraphConnections$2;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/common/graph/DirectedGraphConnections$2;->this$0:Lcom/google/common/graph/f;

    invoke-static {v0}, Lcom/google/common/graph/f;->c(Lcom/google/common/graph/f;)I

    move-result v0

    return v0
.end method
