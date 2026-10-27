.class Lcom/google/common/collect/aj$e;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/collect/aj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aj;Ljava/lang/Object;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->f:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p2, p0, Lcom/google/common/collect/aj$e;->a:Ljava/lang/Object;

    .line 465
    invoke-static {p1}, Lcom/google/common/collect/aj;->d(Lcom/google/common/collect/aj;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/aj$b;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p1, Lcom/google/common/collect/aj$b;->a:Lcom/google/common/collect/aj$c;

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/aj;Ljava/lang/Object;I)V
    .locals 3

    .line 477
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->f:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    invoke-static {p1}, Lcom/google/common/collect/aj;->d(Lcom/google/common/collect/aj;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/aj$b;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 479
    :cond_0
    iget v0, p1, Lcom/google/common/collect/aj$b;->c:I

    .line 480
    :goto_0
    invoke-static {p3, v0}, Lcom/google/common/base/o;->b(II)I

    .line 481
    div-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-lt p3, v1, :cond_2

    if-nez p1, :cond_1

    move-object p1, v2

    goto :goto_1

    .line 482
    :cond_1
    iget-object p1, p1, Lcom/google/common/collect/aj$b;->b:Lcom/google/common/collect/aj$c;

    :goto_1
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    .line 483
    iput v0, p0, Lcom/google/common/collect/aj$e;->b:I

    :goto_2
    add-int/lit8 p1, p3, 0x1

    if-ge p3, v0, :cond_4

    .line 485
    invoke-virtual {p0}, Lcom/google/common/collect/aj$e;->previous()Ljava/lang/Object;

    move p3, p1

    goto :goto_2

    :cond_2
    if-nez p1, :cond_3

    move-object p1, v2

    goto :goto_3

    .line 488
    :cond_3
    iget-object p1, p1, Lcom/google/common/collect/aj$b;->a:Lcom/google/common/collect/aj$c;

    :goto_3
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    :goto_4
    add-int/lit8 p1, p3, -0x1

    if-lez p3, :cond_4

    .line 490
    invoke-virtual {p0}, Lcom/google/common/collect/aj$e;->next()Ljava/lang/Object;

    move p3, p1

    goto :goto_4

    .line 493
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/aj$e;->a:Ljava/lang/Object;

    .line 494
    iput-object v2, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->f:Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj$e;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/aj$c;)Lcom/google/common/collect/aj$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    .line 560
    iget p1, p0, Lcom/google/common/collect/aj$e;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/aj$e;->b:I

    const/4 p1, 0x0

    .line 561
    iput-object p1, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    invoke-static {v0}, Lcom/google/common/collect/aj;->g(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    .line 507
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    .line 508
    iget v0, p0, Lcom/google/common/collect/aj$e;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/aj$e;->b:I

    .line 509
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iget-object v0, v0, Lcom/google/common/collect/aj$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/google/common/collect/aj$e;->b:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    invoke-static {v0}, Lcom/google/common/collect/aj;->g(Ljava/lang/Object;)V

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    .line 522
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    .line 523
    iget v0, p0, Lcom/google/common/collect/aj$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/aj$e;->b:I

    .line 524
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iget-object v0, v0, Lcom/google/common/collect/aj$c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 534
    iget v0, p0, Lcom/google/common/collect/aj$e;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 539
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iget-object v2, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    if-eq v0, v2, :cond_1

    .line 541
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->e:Lcom/google/common/collect/aj$c;

    .line 542
    iget v0, p0, Lcom/google/common/collect/aj$e;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/aj$e;->b:I

    goto :goto_1

    .line 544
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$e;->c:Lcom/google/common/collect/aj$c;

    .line 546
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->f:Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    invoke-static {v0, v1}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;Lcom/google/common/collect/aj$c;)V

    const/4 v0, 0x0

    .line 547
    iput-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 553
    iget-object v0, p0, Lcom/google/common/collect/aj$e;->d:Lcom/google/common/collect/aj$c;

    iput-object p1, v0, Lcom/google/common/collect/aj$c;->b:Ljava/lang/Object;

    return-void
.end method
