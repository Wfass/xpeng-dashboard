.class final Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;
.super Ljava/lang/Object;
.source "PDF417CodewordDecoder.java"


# static fields
.field private static final RATIOS_TABLE:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 27
    sget-object v0, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v0, v0

    const/16 v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v2, F

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    .line 32
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 33
    sget-object v3, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v3, v3, v2

    .line 34
    .local v3, "currentSymbol":I
    and-int/lit8 v4, v3, 0x1

    .line 35
    .local v4, "currentBit":I
    move v5, v4

    move v4, v3

    move v3, v0

    .local v3, "j":I
    .local v4, "currentSymbol":I
    .local v5, "currentBit":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 36
    const/4 v6, 0x0

    .line 37
    .local v6, "size":F
    :goto_2
    and-int/lit8 v7, v4, 0x1

    if-ne v7, v5, :cond_0

    .line 38
    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    .line 39
    shr-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 41
    :cond_0
    and-int/lit8 v5, v4, 0x1

    .line 42
    sget-object v7, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v7, v7, v2

    rsub-int/lit8 v8, v3, 0x8

    add-int/lit8 v8, v8, -0x1

    const/high16 v9, 0x41880000    # 17.0f

    div-float v9, v6, v9

    aput v9, v7, v8

    .line 35
    .end local v6    # "size":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 32
    .end local v3    # "j":I
    .end local v4    # "currentSymbol":I
    .end local v5    # "currentBit":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static getBitValue([I)I
    .locals 10
    .param p0, "moduleBitCount"    # [I

    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .local v0, "result":J
    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "result":J
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 84
    move v1, v2

    .local v1, "bit":I
    :goto_1
    aget v5, p0, v0

    if-ge v1, v5, :cond_1

    .line 85
    const/4 v5, 0x1

    shl-long v6, v3, v5

    rem-int/lit8 v8, v0, 0x2

    if-nez v8, :cond_0

    goto :goto_2

    :cond_0
    move v5, v2

    :goto_2
    int-to-long v8, v5

    or-long v3, v6, v8

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    .end local v1    # "bit":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_2
    long-to-int v0, v3

    return v0
.end method

.method private static getClosestDecodedValue([I)I
    .locals 12
    .param p0, "moduleBitCount"    # [I

    .line 92
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v0

    .line 93
    .local v0, "bitCountSum":I
    const/16 v1, 0x8

    new-array v2, v1, [F

    .line 94
    .local v2, "bitCountRatios":[F
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 95
    aget v5, p0, v4

    int-to-float v5, v5

    int-to-float v6, v0

    div-float/2addr v5, v6

    aput v5, v2, v4

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .end local v4    # "i":I
    :cond_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 98
    .local v4, "bestMatchError":F
    const/4 v5, -0x1

    .line 99
    .local v5, "bestMatch":I
    move v6, v4

    move v4, v3

    .local v4, "j":I
    .local v6, "bestMatchError":F
    :goto_1
    sget-object v7, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    array-length v7, v7

    if-ge v4, v7, :cond_4

    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, "error":F
    sget-object v8, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->RATIOS_TABLE:[[F

    aget-object v8, v8, v4

    .line 102
    .local v8, "ratioTableRow":[F
    move v9, v7

    move v7, v3

    .local v7, "k":I
    .local v9, "error":F
    :goto_2
    if-ge v7, v1, :cond_2

    .line 103
    aget v10, v8, v7

    aget v11, v2, v7

    sub-float/2addr v10, v11

    .line 104
    .local v10, "diff":F
    mul-float v11, v10, v10

    add-float/2addr v9, v11

    .line 105
    cmpl-float v11, v9, v6

    if-ltz v11, :cond_1

    .line 106
    goto :goto_3

    .line 102
    .end local v10    # "diff":F
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 109
    .end local v7    # "k":I
    :cond_2
    :goto_3
    cmpg-float v7, v9, v6

    if-gez v7, :cond_3

    .line 110
    move v6, v9

    .line 111
    sget-object v7, Lcom/google/zxing/pdf417/PDF417Common;->SYMBOL_TABLE:[I

    aget v5, v7, v4

    .line 99
    .end local v8    # "ratioTableRow":[F
    .end local v9    # "error":F
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v4    # "j":I
    :cond_4
    return v5
.end method

.method private static getDecodedCodewordValue([I)I
    .locals 3
    .param p0, "moduleBitCount"    # [I

    .line 77
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getBitValue([I)I

    move-result v0

    .line 78
    .local v0, "decodedValue":I
    invoke-static {v0}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method static getDecodedValue([I)I
    .locals 2
    .param p0, "moduleBitCount"    # [I

    .line 51
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->sampleBitCounts([I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedCodewordValue([I)I

    move-result v0

    .line 52
    .local v0, "decodedValue":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getClosestDecodedValue([I)I

    move-result v1

    return v1
.end method

.method private static sampleBitCounts([I)[I
    .locals 8
    .param p0, "moduleBitCount"    # [I

    .line 59
    invoke-static {p0}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v0

    int-to-float v0, v0

    .line 60
    .local v0, "bitCountSum":F
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 61
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 62
    .local v2, "bitCountIndex":I
    const/4 v3, 0x0

    .line 63
    .local v3, "sumPreviousBits":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 64
    const/high16 v5, 0x42080000    # 34.0f

    div-float v5, v0, v5

    int-to-float v6, v4

    mul-float/2addr v6, v0

    const/high16 v7, 0x41880000    # 17.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 67
    .local v5, "sampleIndex":F
    aget v6, p0, v2

    add-int/2addr v6, v3

    int-to-float v6, v6

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_0

    .line 68
    aget v6, p0, v2

    add-int/2addr v3, v6

    .line 69
    add-int/lit8 v2, v2, 0x1

    .line 71
    :cond_0
    aget v6, v1, v2

    add-int/lit8 v6, v6, 0x1

    aput v6, v1, v2

    .line 63
    .end local v5    # "sampleIndex":F
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    :cond_1
    return-object v1
.end method
