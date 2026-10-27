.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .line 43
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 44
    .local v0, "charNumber":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 48
    :cond_0
    const/16 v2, 0xc

    mul-int/2addr v2, v0

    .line 50
    .local v2, "size":I
    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 51
    .local v3, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v4, 0x0

    .line 53
    .local v4, "accPos":I
    const/4 v5, 0x0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 54
    .local v5, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v6

    .line 55
    .local v6, "firstValue":I
    const/16 v7, 0xb

    move v8, v4

    move v4, v7

    .local v4, "i":I
    .local v8, "accPos":I
    :goto_0
    if-ltz v4, :cond_2

    .line 56
    shl-int v9, v1, v4

    and-int/2addr v9, v6

    if-eqz v9, :cond_1

    .line 57
    invoke-virtual {v3, v8}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 55
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 62
    .end local v4    # "i":I
    :cond_2
    move v4, v1

    .restart local v4    # "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 63
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 65
    .local v9, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v10

    .line 66
    .local v10, "leftValue":I
    move v11, v8

    move v8, v7

    .local v8, "j":I
    .local v11, "accPos":I
    :goto_2
    if-ltz v8, :cond_4

    .line 67
    shl-int v12, v1, v8

    and-int/2addr v12, v10

    if-eqz v12, :cond_3

    .line 68
    invoke-virtual {v3, v11}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 66
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 73
    .end local v8    # "j":I
    :cond_4
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 74
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    .line 75
    .local v8, "rightValue":I
    move v12, v11

    move v11, v7

    .local v11, "j":I
    .local v12, "accPos":I
    :goto_3
    if-ltz v11, :cond_6

    .line 76
    shl-int v13, v1, v11

    and-int/2addr v13, v8

    if-eqz v13, :cond_5

    .line 77
    invoke-virtual {v3, v12}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 75
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 62
    .end local v8    # "rightValue":I
    .end local v9    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v10    # "leftValue":I
    .end local v11    # "j":I
    :cond_6
    move v8, v12

    goto :goto_4

    .end local v12    # "accPos":I
    .local v11, "accPos":I
    :cond_7
    move v8, v11

    .end local v11    # "accPos":I
    .local v8, "accPos":I
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 83
    .end local v4    # "i":I
    :cond_8
    return-object v3
.end method
