.class final Lcom/google/common/collect/bj$b;
.super Lcom/google/common/collect/b;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/bj;

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/collect/bj$c<",
            "TT;>;>;"
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

    .line 194
    iput-object p1, p0, Lcom/google/common/collect/bj$b;->a:Lcom/google/common/collect/bj;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 195
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    .line 196
    iget-object p1, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    invoke-direct {p0, p2}, Lcom/google/common/collect/bj$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/bj$c;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/common/collect/bj$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/bj$c<",
            "TT;>;"
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/google/common/collect/bj$c;

    iget-object v1, p0, Lcom/google/common/collect/bj$b;->a:Lcom/google/common/collect/bj;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/bj;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/bj$c;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/bj$c;

    .line 203
    iget-object v1, v0, Lcom/google/common/collect/bj$c;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v0, v0, Lcom/google/common/collect/bj$c;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/google/common/collect/bj$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/bj$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/bj$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 208
    iget-object v0, v0, Lcom/google/common/collect/bj$c;->a:Ljava/lang/Object;

    return-object v0

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/bj$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
