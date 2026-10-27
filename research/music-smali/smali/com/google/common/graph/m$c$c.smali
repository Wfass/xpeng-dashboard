.class final Lcom/google/common/graph/m$c$c;
.super Lcom/google/common/collect/bk;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bk<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/m$c;

.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/Iterator<",
            "+TN;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$c;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Lcom/google/common/graph/m$c$c;->a:Lcom/google/common/graph/m$c;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 590
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    .line 593
    iget-object p1, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

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

    .line 603
    iget-object v0, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 604
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 605
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/m$c$c;->a:Lcom/google/common/graph/m$c;

    invoke-static {v0}, Lcom/google/common/graph/m$c;->a(Lcom/google/common/graph/m$c;)Lcom/google/common/graph/l;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/common/graph/l;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 609
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/google/common/graph/m$c$c;->b:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method
