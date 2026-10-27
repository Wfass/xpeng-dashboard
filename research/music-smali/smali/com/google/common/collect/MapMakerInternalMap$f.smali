.class abstract Lcom/google/common/collect/MapMakerInternalMap$f;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$c<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/MapMakerInternalMap$f<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/MapMakerInternalMap$c<",
            "TK;TV;TE;>;>(TE;)Z"
        }
    .end annotation

    .line 1941
    invoke-interface {p0}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1236
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lcom/google/common/collect/MapMakerInternalMap$d;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->a()Lcom/google/common/collect/MapMakerInternalMap$f;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$d;->a(Lcom/google/common/collect/MapMakerInternalMap$f;Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1393
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    if-eqz v0, :cond_3

    .line 1394
    invoke-virtual {p0, p2}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(I)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1395
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v1

    if-eq v1, p2, :cond_0

    goto :goto_1

    .line 1399
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1401
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->d()V

    goto :goto_1

    .line 1405
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 1394
    :cond_2
    :goto_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method abstract a()Lcom/google/common/collect/MapMakerInternalMap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 1651
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1653
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->h()V

    .line 1655
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1656
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1657
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$c;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1660
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v5

    .line 1661
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    .line 1663
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1666
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1668
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1669
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1670
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1671
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    .line 1672
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    add-int/lit8 p2, p2, -0x1

    .line 1673
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1674
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v4

    .line 1679
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1680
    invoke-virtual {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object p1

    .line 1659
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1687
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1688
    throw p1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 1478
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1480
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->h()V

    .line 1482
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1483
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->d:I

    if-le v0, v1, :cond_0

    .line 1484
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->e()V

    .line 1485
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 1488
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1489
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    .line 1490
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$c;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1494
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v6

    .line 1495
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    .line 1497
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1500
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1503
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1504
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V

    .line 1505
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1506
    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object p1

    .line 1515
    :cond_2
    :try_start_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1516
    invoke-virtual {p0, v4, p3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1530
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object p1

    .line 1493
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v4

    goto :goto_0

    .line 1523
    :cond_4
    iget p4, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1524
    iget-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object p4, p4, Lcom/google/common/collect/MapMakerInternalMap;->e:Lcom/google/common/collect/MapMakerInternalMap$d;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->a()Lcom/google/common/collect/MapMakerInternalMap$f;

    move-result-object v4

    invoke-interface {p4, v4, p1, p2, v3}, Lcom/google/common/collect/MapMakerInternalMap$d;->a(Lcom/google/common/collect/MapMakerInternalMap$f;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    .line 1525
    invoke-virtual {p0, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1527
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1531
    throw p1
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 1240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TV;)V"
        }
    .end annotation

    .line 1231
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->e:Lcom/google/common/collect/MapMakerInternalMap$d;

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->a()Lcom/google/common/collect/MapMakerInternalMap$f;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$d;->a(Lcom/google/common/collect/MapMakerInternalMap$f;Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1606
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->h()V

    .line 1608
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1609
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1610
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$c;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 1613
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v6

    .line 1614
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v7

    if-ne v7, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    .line 1616
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1619
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1621
    invoke-static {v4}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1622
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1623
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1624
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    .line 1625
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    sub-int/2addr p2, v2

    .line 1626
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1627
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    .line 1632
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap;->a()Lcom/google/common/base/f;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1633
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1634
    invoke-virtual {p0, v4, p4}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1646
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    .line 1612
    :cond_3
    :try_start_2
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1646
    :cond_4
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1647
    throw p1
.end method

.method b(I)Lcom/google/common/collect/MapMakerInternalMap$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1386
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1387
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$c;

    return-object p1
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .line 1806
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1807
    invoke-interface {p2}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v1

    :goto_0
    if-eq p1, p2, :cond_1

    .line 1809
    invoke-virtual {p0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1808
    :goto_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    goto :goto_0

    .line 1816
    :cond_1
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    return-object v1
.end method

.method b(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 1415
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    return-object p1
.end method

.method b(Lcom/google/common/collect/MapMakerInternalMap$c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .line 1950
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1951
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->d()V

    return-object v1

    .line 1954
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1956
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->d()V

    return-object v1

    :cond_1
    return-object p1
.end method

.method b()V
    .locals 0

    return-void
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 8

    .line 1733
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1735
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->h()V

    .line 1737
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1738
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1739
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/2addr v1, p2

    .line 1740
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/MapMakerInternalMap$c;

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1743
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v6

    .line 1744
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v7, v7, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    .line 1746
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1747
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    .line 1750
    iget-object p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap;->a()Lcom/google/common/base/f;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move v5, v2

    goto :goto_1

    .line 1752
    :cond_0
    invoke-static {v4}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1758
    :goto_1
    iget p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1759
    invoke-virtual {p0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    .line 1760
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    sub-int/2addr p2, v2

    .line 1761
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1762
    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    .line 1742
    :cond_2
    :try_start_1
    invoke-interface {v4}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1769
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return v5

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1770
    throw p1
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1420
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1431
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    return-object p1

    .line 1425
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1427
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    .line 1432
    throw p1
.end method

.method c()V
    .locals 0

    return-void
.end method

.method d()V
    .locals 1

    .line 1342
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1346
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1347
    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method d(Ljava/lang/Object;I)Z
    .locals 2

    .line 1437
    :try_start_0
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1438
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1439
    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1444
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    return v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->g()V

    .line 1445
    throw p1
.end method

.method e(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1693
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1695
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->h()V

    .line 1697
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    .line 1698
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1699
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    .line 1700
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/MapMakerInternalMap$c;

    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 1703
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->c()Ljava/lang/Object;

    move-result-object v5

    .line 1704
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->a:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/base/f;

    .line 1706
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1707
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1711
    :cond_0
    invoke-static {v3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1717
    :goto_1
    iget p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1718
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$f;->b(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object p2

    .line 1719
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 1720
    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1721
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v4

    .line 1702
    :cond_2
    :try_start_1
    invoke-interface {v3}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1728
    :cond_3
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    return-object v4

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1729
    throw p1
.end method

.method e()V
    .locals 11

    .line 1537
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1538
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 1553
    :cond_0
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    shl-int/lit8 v3, v1, 0x1

    .line 1554
    invoke-virtual {p0, v3}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 1555
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->d:I

    .line 1556
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 1560
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/MapMakerInternalMap$c;

    if-eqz v6, :cond_5

    .line 1563
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v7

    .line 1564
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 1568
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1576
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 1575
    :cond_2
    invoke-interface {v7}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v7

    goto :goto_1

    .line 1583
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 1587
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$c;->b()I

    move-result v7

    and-int/2addr v7, v4

    .line 1588
    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/common/collect/MapMakerInternalMap$c;

    .line 1589
    invoke-virtual {p0, v6, v8}, Lcom/google/common/collect/MapMakerInternalMap$f;->a(Lcom/google/common/collect/MapMakerInternalMap$c;Lcom/google/common/collect/MapMakerInternalMap$c;)Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1591
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, -0x1

    .line 1586
    :goto_3
    invoke-interface {v6}, Lcom/google/common/collect/MapMakerInternalMap$c;->a()Lcom/google/common/collect/MapMakerInternalMap$c;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1599
    :cond_6
    iput-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1600
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    return-void
.end method

.method f()V
    .locals 4

    .line 1774
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I

    if-eqz v0, :cond_1

    .line 1775
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->lock()V

    .line 1777
    :try_start_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    move v2, v1

    .line 1778
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1779
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1781
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->c()V

    .line 1782
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1784
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->c:I

    .line 1785
    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1787
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1788
    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method g()V
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 1970
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->i()V

    :cond_0
    return-void
.end method

.method h()V
    .locals 0

    .line 1980
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->j()V

    return-void
.end method

.method i()V
    .locals 0

    .line 1984
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->j()V

    return-void
.end method

.method j()V
    .locals 2

    .line 1988
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->b()V

    .line 1991
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$f;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1993
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$f;->unlock()V

    .line 1994
    throw v0

    :cond_0
    :goto_0
    return-void
.end method
