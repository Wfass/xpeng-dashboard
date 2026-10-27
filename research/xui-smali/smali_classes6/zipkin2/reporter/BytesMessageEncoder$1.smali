.class final enum Lzipkin2/reporter/BytesMessageEncoder$1;
.super Lzipkin2/reporter/BytesMessageEncoder;
.source "BytesMessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/reporter/BytesMessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/reporter/BytesMessageEncoder;-><init>(Ljava/lang/String;ILzipkin2/reporter/BytesMessageEncoder$1;)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 27
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x2

    .line 28
    .local v0, "sizeOfArray":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 29
    .local v1, "length":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "sizeOfArray":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 30
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":I
    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    .line 31
    if-ge v4, v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 29
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_0
    move v0, v4

    goto :goto_0

    .line 34
    .end local v0    # "i":I
    :cond_1
    new-array v0, v3, [B

    .line 35
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 36
    .local v4, "pos":I
    add-int/lit8 v5, v4, 0x1

    .local v5, "pos":I
    const/16 v6, 0x5b

    aput-byte v6, v0, v4

    .line 37
    .end local v4    # "pos":I
    move v4, v2

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 38
    add-int/lit8 v6, v4, 0x1

    .local v6, "i":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "i":I
    check-cast v4, [B

    .line 39
    .local v4, "v":[B
    array-length v7, v4

    invoke-static {v4, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    array-length v7, v4

    add-int/2addr v5, v7

    .line 41
    if-ge v6, v1, :cond_2

    add-int/lit8 v7, v5, 0x1

    .local v7, "pos":I
    const/16 v8, 0x2c

    aput-byte v8, v0, v5

    .line 42
    .end local v4    # "v":[B
    .end local v5    # "pos":I
    move v5, v7

    .line 37
    .end local v7    # "pos":I
    .restart local v5    # "pos":I
    :cond_2
    move v4, v6

    goto :goto_1

    .line 43
    .end local v6    # "i":I
    :cond_3
    const/16 v2, 0x5d

    aput-byte v2, v0, v5

    .line 44
    return-object v0
.end method
