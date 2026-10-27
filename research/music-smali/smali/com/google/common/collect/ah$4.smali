.class final Lcom/google/common/collect/ah$4;
.super Lcom/google/common/collect/bk;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;IZ)Lcom/google/common/collect/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bk<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(Ljava/util/Iterator;IZ)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/google/common/collect/ah$4;->a:Ljava/util/Iterator;

    iput p2, p0, Lcom/google/common/collect/ah$4;->b:I

    iput-boolean p3, p0, Lcom/google/common/collect/ah$4;->c:Z

    invoke-direct {p0}, Lcom/google/common/collect/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Lcom/google/common/collect/ah$4;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    iget v0, p0, Lcom/google/common/collect/ah$4;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 610
    :goto_0
    iget v3, p0, Lcom/google/common/collect/ah$4;->b:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/ah$4;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/google/common/collect/ah$4;->a:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 613
    :goto_1
    iget v4, p0, Lcom/google/common/collect/ah$4;->b:I

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 614
    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 618
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 619
    iget-boolean v3, p0, Lcom/google/common/collect/ah$4;->c:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/collect/ah$4;->b:I

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_3
    :goto_2
    return-object v0

    .line 606
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/google/common/collect/ah$4;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/google/common/collect/ah$4;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
