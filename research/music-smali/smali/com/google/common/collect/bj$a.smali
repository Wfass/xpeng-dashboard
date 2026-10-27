.class final Lcom/google/common/collect/bj$a;
.super Lcom/google/common/collect/bk;
.source "TreeTraverser.java"

# interfaces
.implements Lcom/google/common/collect/as;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bk<",
        "TT;>;",
        "Lcom/google/common/collect/as<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/bj;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/google/common/collect/bj$a;->a:Lcom/google/common/collect/bj;

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    .line 245
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    .line 246
    iget-object p1, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 262
    iget-object v1, p0, Lcom/google/common/collect/bj$a;->b:Ljava/util/Queue;

    iget-object v2, p0, Lcom/google/common/collect/bj$a;->a:Lcom/google/common/collect/bj;

    invoke-virtual {v2, v0}, Lcom/google/common/collect/bj;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v0
.end method
