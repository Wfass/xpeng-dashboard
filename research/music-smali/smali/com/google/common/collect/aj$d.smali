.class Lcom/google/common/collect/aj$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

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

.field e:I

.field final synthetic f:Lcom/google/common/collect/aj;


# direct methods
.method constructor <init>(Lcom/google/common/collect/aj;I)V
    .locals 2

    .line 314
    iput-object p1, p0, Lcom/google/common/collect/aj$d;->f:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->f:Lcom/google/common/collect/aj;

    invoke-static {v0}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/aj$d;->e:I

    .line 315
    invoke-virtual {p1}, Lcom/google/common/collect/aj;->c()I

    move-result v0

    .line 316
    invoke-static {p2, v0}, Lcom/google/common/base/o;->b(II)I

    .line 317
    div-int/lit8 v1, v0, 0x2

    if-lt p2, v1, :cond_0

    .line 318
    invoke-static {p1}, Lcom/google/common/collect/aj;->b(Lcom/google/common/collect/aj;)Lcom/google/common/collect/aj$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    .line 319
    iput v0, p0, Lcom/google/common/collect/aj$d;->a:I

    :goto_0
    add-int/lit8 p1, p2, 0x1

    if-ge p2, v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/google/common/collect/aj$d;->b()Lcom/google/common/collect/aj$c;

    move p2, p1

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/aj;->c(Lcom/google/common/collect/aj;)Lcom/google/common/collect/aj$c;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    :goto_1
    add-int/lit8 p1, p2, -0x1

    if-lez p2, :cond_1

    .line 326
    invoke-virtual {p0}, Lcom/google/common/collect/aj$d;->a()Lcom/google/common/collect/aj$c;

    move p2, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 329
    iput-object p1, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    return-void
.end method

.method private c()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->f:Lcom/google/common/collect/aj;

    invoke-static {v0}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/aj$d;->e:I

    if-ne v0, v1, :cond_0

    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/aj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 347
    invoke-direct {p0}, Lcom/google/common/collect/aj$d;->c()V

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    invoke-static {v0}, Lcom/google/common/collect/aj;->g(Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    .line 350
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    .line 351
    iget v0, p0, Lcom/google/common/collect/aj$d;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/aj$d;->a:I

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 409
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    iput-object p1, v0, Lcom/google/common/collect/aj$c;->b:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/aj$d;->b(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/aj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 379
    invoke-direct {p0}, Lcom/google/common/collect/aj$d;->c()V

    .line 380
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    invoke-static {v0}, Lcom/google/common/collect/aj;->g(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    .line 382
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    .line 383
    iget v0, p0, Lcom/google/common/collect/aj$d;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/aj$d;->a:I

    .line 384
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    return-object v0
.end method

.method public b(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 404
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 340
    invoke-direct {p0}, Lcom/google/common/collect/aj$d;->c()V

    .line 341
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

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

    .line 372
    invoke-direct {p0}, Lcom/google/common/collect/aj$d;->c()V

    .line 373
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/aj$d;->a()Lcom/google/common/collect/aj$c;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .line 389
    iget v0, p0, Lcom/google/common/collect/aj$d;->a:I

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/google/common/collect/aj$d;->b()Lcom/google/common/collect/aj$c;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .line 394
    iget v0, p0, Lcom/google/common/collect/aj$d;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 357
    invoke-direct {p0}, Lcom/google/common/collect/aj$d;->c()V

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    iget-object v2, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    if-eq v0, v2, :cond_1

    .line 360
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->d:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->d:Lcom/google/common/collect/aj$c;

    .line 361
    iget v0, p0, Lcom/google/common/collect/aj$d;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/aj$d;->a:I

    goto :goto_1

    .line 363
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/aj$c;->c:Lcom/google/common/collect/aj$c;

    iput-object v0, p0, Lcom/google/common/collect/aj$d;->b:Lcom/google/common/collect/aj$c;

    .line 365
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->f:Lcom/google/common/collect/aj;

    iget-object v1, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    invoke-static {v0, v1}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;Lcom/google/common/collect/aj$c;)V

    const/4 v0, 0x0

    .line 366
    iput-object v0, p0, Lcom/google/common/collect/aj$d;->c:Lcom/google/common/collect/aj$c;

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/aj$d;->f:Lcom/google/common/collect/aj;

    invoke-static {v0}, Lcom/google/common/collect/aj;->a(Lcom/google/common/collect/aj;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/aj$d;->e:I

    return-void
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 307
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/aj$d;->a(Ljava/util/Map$Entry;)V

    return-void
.end method
