.class final enum Lzipkin2/reporter/BytesMessageEncoder$3;
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

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzipkin2/reporter/BytesMessageEncoder;-><init>(Ljava/lang/String;ILzipkin2/reporter/BytesMessageEncoder$1;)V

    return-void
.end method


# virtual methods
.method public encode(Ljava/util/List;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    .line 95
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 96
    .local v0, "sizeOfArray":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    .local v1, "length":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "sizeOfArray":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 98
    add-int/lit8 v4, v0, 0x1

    .local v4, "i":I
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":I
    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v3, v0

    .line 97
    move v0, v4

    goto :goto_0

    .line 101
    .end local v4    # "i":I
    :cond_0
    new-array v0, v3, [B

    .line 102
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 103
    .local v4, "pos":I
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "pos":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 104
    add-int/lit8 v6, v4, 0x1

    .local v6, "i":I
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "i":I
    check-cast v4, [B

    .line 105
    .local v4, "v":[B
    array-length v7, v4

    invoke-static {v4, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    array-length v7, v4

    add-int/2addr v5, v7

    .line 107
    .end local v4    # "v":[B
    nop

    .line 103
    move v4, v6

    goto :goto_1

    .line 108
    .end local v6    # "i":I
    :cond_1
    return-object v0
.end method
