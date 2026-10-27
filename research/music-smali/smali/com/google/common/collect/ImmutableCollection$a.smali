.class abstract Lcom/google/common/collect/ImmutableCollection$a;
.super Lcom/google/common/collect/ImmutableCollection$b;
.source "ImmutableCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
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
.field a:[Ljava/lang/Object;

.field b:I

.field c:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 444
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$b;-><init>()V

    const-string v0, "initialCapacity"

    .line 445
    invoke-static {p1, v0}, Lcom/google/common/collect/m;->a(ILjava/lang/String;)I

    .line 446
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 447
    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 457
    array-length v1, v0

    .line 458
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$a;->a(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 459
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    goto :goto_0

    .line 460
    :cond_0
    iget-boolean p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 462
    iput-boolean v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->c:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$a<",
            "TE;>;"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 471
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$b<",
            "TE;>;"
        }
    .end annotation

    .line 488
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 489
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 490
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 491
    instance-of v1, v0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v1, :cond_0

    .line 492
    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    .line 493
    iget-object p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-object p0

    .line 497
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$b;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$b;

    return-object p0
.end method

.method public varargs a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableCollection$b<",
            "TE;>;"
        }
    .end annotation

    .line 478
    invoke-static {p1}, Lcom/google/common/collect/ao;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 479
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 480
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    return-object p0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$b;
    .locals 0

    .line 439
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    move-result-object p1

    return-object p1
.end method
