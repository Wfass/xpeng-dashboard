.class abstract Lcom/google/common/collect/CompactHashMap$a;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/google/common/collect/CompactHashMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/CompactHashMap;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    iget p1, p1, Lcom/google/common/collect/CompactHashMap;->d:I

    iput p1, p0, Lcom/google/common/collect/CompactHashMap$a;->b:I

    .line 474
    iget-object p1, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    invoke-virtual {p1}, Lcom/google/common/collect/CompactHashMap;->d()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    const/4 p1, -0x1

    .line 475
    iput p1, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap;Lcom/google/common/collect/CompactHashMap$1;)V
    .locals 0

    .line 472
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap$a;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-void
.end method

.method private a()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    iget v0, v0, Lcom/google/common/collect/CompactHashMap;->d:I

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$a;->b:I

    if-ne v0, v1, :cond_0

    return-void

    .line 508
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 479
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$a;->a()V

    .line 487
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    .line 491
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/CompactHashMap;->e(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    return-object v0

    .line 488
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 498
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap$a;->a()V

    .line 499
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 500
    iget v0, p0, Lcom/google/common/collect/CompactHashMap$a;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$a;->b:I

    .line 501
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    invoke-static {v0, v1}, Lcom/google/common/collect/CompactHashMap;->a(Lcom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 502
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap$a;->e:Lcom/google/common/collect/CompactHashMap;

    iget v1, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    iget v2, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/CompactHashMap;->a(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap$a;->c:I

    const/4 v0, -0x1

    .line 503
    iput v0, p0, Lcom/google/common/collect/CompactHashMap$a;->d:I

    return-void
.end method
