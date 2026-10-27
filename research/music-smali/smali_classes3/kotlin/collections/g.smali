.class Lkotlin/collections/g;
.super Lkotlin/collections/f;
.source "_Arrays.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final a([C)C
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2897
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2899
    aget-char p0, p0, v0

    return p0

    .line 2900
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array has more than one element."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2898
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Array is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "-TT;>;T:",
            "Ljava/lang/Object;",
            ">([TT;TC;)TC;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4207
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public static final a([BB)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([BB)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([CC)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([CC)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([II)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([JJ)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p0, p1, p2}, Lkotlin/collections/c;->b([JJ)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([SS)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([SS)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final a([ZZ)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-static {p0, p1}, Lkotlin/collections/c;->b([ZZ)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b([BB)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1527
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1528
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([CC)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1615
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1616
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([II)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1551
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1552
    aget v2, p0, v1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([JJ)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1564
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1508
    array-length p1, p0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 1509
    aget-object v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1514
    :cond_1
    array-length v1, p0

    :goto_1
    if-ge v0, v1, :cond_3

    .line 1515
    aget-object v2, p0, v0

    invoke-static {p1, v2}, Lccf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([SS)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1540
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([ZZ)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1604
    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3070
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c([BB)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2115
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2116
    aget-byte v3, p0, v0

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([CC)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2203
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2204
    aget-char v3, p0, v0

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([II)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2139
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2140
    aget v3, p0, v0

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([JJ)I
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2151
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2152
    aget-wide v3, p0, v0

    cmp-long v3, p1, v3

    if-nez v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([SS)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2127
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2128
    aget-short v3, p0, v0

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([ZZ)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    array-length v0, p0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 2192
    aget-boolean v3, p0, v0

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static final c([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    invoke-static {p0, v0}, Lkotlin/collections/c;->a([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static final d([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8054
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final e([Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9945
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 9948
    invoke-static {p0}, Lkotlin/collections/c;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9947
    aget-object p0, p0, v0

    invoke-static {p0}, Lkotlin/collections/l;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 9946
    :cond_1
    invoke-static {}, Lkotlin/collections/l;->a()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final f([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10044
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/l;->a([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
