.class final Lcom/google/common/graph/m$a$b;
.super Lcom/google/common/collect/b;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/m$a$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/b<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/graph/m$a;

.field private final b:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/common/graph/m$a<",
            "TN;>.b.a;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/graph/m$b;


# direct methods
.method constructor <init>(Lcom/google/common/graph/m$a;Ljava/lang/Iterable;Lcom/google/common/graph/m$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;",
            "Lcom/google/common/graph/m$b;",
            ")V"
        }
    .end annotation

    .line 436
    iput-object p1, p0, Lcom/google/common/graph/m$a$b;->a:Lcom/google/common/graph/m$a;

    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    .line 432
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    .line 433
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/common/graph/m$a$b;->c:Ljava/util/Set;

    .line 437
    iget-object p1, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    new-instance v0, Lcom/google/common/graph/m$a$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lcom/google/common/graph/m$a$b$a;-><init>(Lcom/google/common/graph/m$a$b;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 438
    iput-object p3, p0, Lcom/google/common/graph/m$a$b;->d:Lcom/google/common/graph/m$b;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Lcom/google/common/graph/m$a$b$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lcom/google/common/graph/m$a<",
            "TN;>.b.a;"
        }
    .end annotation

    .line 468
    new-instance v0, Lcom/google/common/graph/m$a$b$a;

    iget-object v1, p0, Lcom/google/common/graph/m$a$b;->a:Lcom/google/common/graph/m$a;

    invoke-static {v1}, Lcom/google/common/graph/m$a;->a(Lcom/google/common/graph/m$a;)Lcom/google/common/graph/l;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/graph/l;->g(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/m$a$b$a;-><init>(Lcom/google/common/graph/m$a$b;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method protected a()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/google/common/graph/m$a$b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/m$a$b$a;

    .line 448
    iget-object v1, p0, Lcom/google/common/graph/m$a$b;->c:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/common/graph/m$a$b$a;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 449
    iget-object v2, v0, Lcom/google/common/graph/m$a$b$a;->b:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/google/common/graph/m$a$b;->d:Lcom/google/common/graph/m$b;

    sget-object v4, Lcom/google/common/graph/m$b;->PREORDER:Lcom/google/common/graph/m$b;

    if-eq v1, v4, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/google/common/graph/m$a$b;->d:Lcom/google/common/graph/m$b;

    sget-object v4, Lcom/google/common/graph/m$b;->POSTORDER:Lcom/google/common/graph/m$b;

    if-ne v1, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 453
    iget-object v1, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 456
    :cond_5
    iget-object v1, v0, Lcom/google/common/graph/m$a$b$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 457
    iget-object v2, p0, Lcom/google/common/graph/m$a$b;->c:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 458
    iget-object v2, p0, Lcom/google/common/graph/m$a$b;->b:Ljava/util/Deque;

    invoke-virtual {p0, v1}, Lcom/google/common/graph/m$a$b;->a(Ljava/lang/Object;)Lcom/google/common/graph/m$a$b$a;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    if-eqz v3, :cond_0

    .line 461
    iget-object v1, v0, Lcom/google/common/graph/m$a$b$a;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 462
    iget-object v0, v0, Lcom/google/common/graph/m$a$b$a;->a:Ljava/lang/Object;

    return-object v0
.end method
