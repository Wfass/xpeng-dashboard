.class final Lcom/google/common/graph/m$c$b;
.super Lcom/google/common/collect/b;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/m$c$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/m$c;

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/common/graph/m$c<",
            "TN;>.b.a;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$c;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 619
    iput-object p1, p0, Lcom/google/common/graph/m$c$b;->a:Lcom/google/common/graph/m$c;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 617
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    .line 620
    iget-object p1, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/common/graph/m$c$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/m$c$b$a;-><init>(Lcom/google/common/graph/m$c$b;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/google/common/graph/m$c$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/m$c<",
            "TN;>.b.a;"
        }
    .end annotation

    .line 641
    new-instance v0, Lcom/google/common/graph/m$c$b$a;

    iget-object v1, p0, Lcom/google/common/graph/m$c$b;->a:Lcom/google/common/graph/m$c;

    invoke-static {v1}, Lcom/google/common/graph/m$c;->a(Lcom/google/common/graph/m$c;)Lcom/google/common/graph/l;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/l;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/m$c$b$a;-><init>(Lcom/google/common/graph/m$c$b;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 625
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/m$c$b$a;

    .line 627
    iget-object v1, v0, Lcom/google/common/graph/m$c$b$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 628
    iget-object v0, v0, Lcom/google/common/graph/m$c$b$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v0}, Lcom/google/common/graph/m$c$b;->a(Ljava/lang/Object;)Lcom/google/common/graph/m$c$b$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/google/common/graph/m$c$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 632
    iget-object v1, v0, Lcom/google/common/graph/m$c$b$a;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 633
    iget-object v0, v0, Lcom/google/common/graph/m$c$b$a;->a:Ljava/lang/Object;

    return-object v0

    .line 637
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/graph/m$c$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
