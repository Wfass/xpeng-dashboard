.class final Lcom/google/common/graph/m$c$a;
.super Lcom/google/common/collect/bk;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bk<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/m$c;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$c;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 570
    iput-object p1, p0, Lcom/google/common/graph/m$c$a;->a:Lcom/google/common/graph/m$c;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 568
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/m$c$a;->b:Ljava/util/Queue;

    .line 571
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 572
    iget-object v0, p0, Lcom/google/common/graph/m$c$a;->b:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/common/graph/m$c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/common/graph/m$c$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/google/common/graph/m$c$a;->b:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/graph/m$c$a;->a:Lcom/google/common/graph/m$c;

    invoke-static {v2}, Lcom/google/common/graph/m$c;->a(Lcom/google/common/graph/m$c;)Lcom/google/common/graph/l;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/common/graph/l;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method
