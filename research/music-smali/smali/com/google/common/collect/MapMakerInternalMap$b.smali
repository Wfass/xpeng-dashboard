.class abstract Lcom/google/common/collect/MapMakerInternalMap$b;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "b"
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

.field d:Lcom/google/common/collect/MapMakerInternalMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$f<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/MapMakerInternalMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/MapMakerInternalMap$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.j;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/MapMakerInternalMap$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.j;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 2517
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2518
    iget-object p1, p1, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$f;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    const/4 p1, -0x1

    .line 2519
    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:I

    .line 2520
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->b()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 2579
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v0

    .line 2580
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2582
    new-instance v1, Lcom/google/common/collect/MapMakerInternalMap$j;

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v1, v2, v0, p1}, Lcom/google/common/collect/MapMakerInternalMap$j;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->g:Lcom/google/common/collect/MapMakerInternalMap$j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 2589
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:Lcom/google/common/collect/MapMakerInternalMap$f;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:Lcom/google/common/collect/MapMakerInternalMap$f;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    .line 2590
    throw p1
.end method

.method final b()V
    .locals 3

    const/4 v0, 0x0

    .line 2527
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->g:Lcom/google/common/collect/MapMakerInternalMap$j;

    .line 2529
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2533
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2537
    :cond_1
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    if-ltz v0, :cond_2

    .line 2538
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$f;

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:Lcom/google/common/collect/MapMakerInternalMap$f;

    .line 2539
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:Lcom/google/common/collect/MapMakerInternalMap$f;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    if-eqz v0, :cond_1

    .line 2540
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->d:Lcom/google/common/collect/MapMakerInternalMap$f;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2541
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:I

    .line 2542
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method c()Z
    .locals 1

    .line 2551
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    if-eqz v0, :cond_1

    .line 2552
    :goto_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    if-eqz v0, :cond_1

    .line 2553
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$b;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2552
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .locals 3

    .line 2563
    :cond_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:I

    if-ltz v0, :cond_2

    .line 2564
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->c:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMakerInternalMap$c;

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    if-eqz v0, :cond_0

    .line 2565
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->f:Lcom/google/common/collect/MapMakerInternalMap$c;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MapMakerInternalMap$b;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method e()Lcom/google/common/collect/MapMakerInternalMap$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>.j;"
        }
    .end annotation

    .line 2599
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->g:Lcom/google/common/collect/MapMakerInternalMap$j;

    if-eqz v0, :cond_0

    .line 2602
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->h:Lcom/google/common/collect/MapMakerInternalMap$j;

    .line 2603
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$b;->b()V

    .line 2604
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->h:Lcom/google/common/collect/MapMakerInternalMap$j;

    return-object v0

    .line 2600
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 2595
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->g:Lcom/google/common/collect/MapMakerInternalMap$j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 2

    .line 2609
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->h:Lcom/google/common/collect/MapMakerInternalMap$j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/m;->a(Z)V

    .line 2610
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->h:Lcom/google/common/collect/MapMakerInternalMap$j;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$j;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2611
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$b;->h:Lcom/google/common/collect/MapMakerInternalMap$j;

    return-void
.end method
