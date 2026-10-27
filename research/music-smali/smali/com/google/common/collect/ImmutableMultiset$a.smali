.class public Lcom/google/common/collect/ImmutableMultiset$a;
.super Lcom/google/common/collect/ImmutableCollection$b;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ap<",
            "TE;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 426
    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMultiset$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 v0, 0x0

    .line 413
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Z

    .line 419
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Z

    .line 430
    invoke-static {p1}, Lcom/google/common/collect/ap;->a(I)Lcom/google/common/collect/ap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const/4 p1, 0x0

    .line 413
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Z

    .line 419
    iput-boolean p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Z

    const/4 p1, 0x0

    .line 435
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    return-void
.end method

.method static c(Ljava/lang/Iterable;)Lcom/google/common/collect/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lcom/google/common/collect/ap<",
            "TT;>;"
        }
    .end annotation

    .line 574
    instance-of v0, p0, Lcom/google/common/collect/RegularImmutableMultiset;

    if-eqz v0, :cond_0

    .line 575
    check-cast p0, Lcom/google/common/collect/RegularImmutableMultiset;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMultiset;->contents:Lcom/google/common/collect/ap;

    return-object p0

    .line 576
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;

    if-eqz v0, :cond_1

    .line 577
    check-cast p0, Lcom/google/common/collect/AbstractMapBasedMultiset;

    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultiset;->backingMap:Lcom/google/common/collect/ap;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;->b(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$a<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/ImmutableMultiset$a;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)",
            "Lcom/google/common/collect/ImmutableMultiset$a<",
            "TE;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 481
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 482
    new-instance v0, Lcom/google/common/collect/ap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-direct {v0, v2}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/ap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    .line 483
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Z

    .line 485
    :cond_1
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Z

    .line 486
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ap;->b(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ap;->a(Ljava/lang/Object;I)I

    return-object p0
.end method

.method public a()Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-virtual {v0}, Lcom/google/common/collect/ap;->c()I

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-static {}, Lcom/google/common/collect/ImmutableMultiset;->of()Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0

    .line 592
    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Z

    if-eqz v0, :cond_1

    .line 595
    new-instance v0, Lcom/google/common/collect/ap;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ap;-><init>(Lcom/google/common/collect/ap;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    const/4 v0, 0x0

    .line 596
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->c:Z

    :cond_1
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->b:Z

    .line 600
    new-instance v0, Lcom/google/common/collect/RegularImmutableMultiset;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-direct {v0, v1}, Lcom/google/common/collect/RegularImmutableMultiset;-><init>(Lcom/google/common/collect/ap;)V

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    .line 406
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 532
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 533
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object p1

    .line 534
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMultiset$a;->c(Ljava/lang/Iterable;)Lcom/google/common/collect/ap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-virtual {p1}, Lcom/google/common/collect/ap;->c()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/common/collect/ap;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/common/collect/ap;->f(I)V

    .line 537
    invoke-virtual {v0}, Lcom/google/common/collect/ap;->b()I

    move-result p1

    :goto_0
    if-ltz p1, :cond_2

    .line 538
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ap;->c(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ap;->d(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/ImmutableMultiset$a;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$a;

    .line 537
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ap;->b(I)I

    move-result p1

    goto :goto_0

    .line 541
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ap;

    invoke-virtual {v1}, Lcom/google/common/collect/ap;->c()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ap;->f(I)V

    .line 543
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$a;

    .line 544
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$a;->b()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMultiset$a;->a(Ljava/lang/Object;I)Lcom/google/common/collect/ImmutableMultiset$a;

    goto :goto_1

    .line 548
    :cond_1
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    :cond_2
    return-object p0
.end method

.method public b(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 563
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->a(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public varargs b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMultiset$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableMultiset$a<",
            "TE;>;"
        }
    .end annotation

    .line 461
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method
