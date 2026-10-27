.class public final Lcom/alibaba/fastjson2/ak;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[S

.field private final c:[J

.field private final d:[J


# virtual methods
.method public a(J)I
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/fastjson2/ak;->c:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/ak;->b:[S

    aget-short p1, p2, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)I
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson2/ak;->c:[J

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ak;->b:[S

    aget-short p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public a(I)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alibaba/fastjson2/ak;->a:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public b(I)J
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson2/ak;->d:[J

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, v0, p1

    return-wide v0
.end method
