.class public final Lcom/alibaba/fastjson2/util/FDBigInteger;
.super Ljava/lang/Object;
.source "FDBigInteger.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_FIVE_POW:I = 0x154

.field private static final POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

.field private static final SMALL_5_POW:[I


# instance fields
.field private data:[I

.field private isImmutable:Z

.field private nWords:I

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->SMALL_5_POW:[I

    const/16 v0, 0x154

    new-array v1, v0, [Lcom/alibaba/fastjson2/util/FDBigInteger;

    .line 28
    sput-object v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    const/4 v1, 0x0

    move v2, v1

    .line 30
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson2/util/FDBigInteger;->SMALL_5_POW:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 31
    new-instance v4, Lcom/alibaba/fastjson2/util/FDBigInteger;

    const/4 v5, 0x1

    new-array v5, v5, [I

    aget v3, v3, v2

    aput v3, v5, v1

    invoke-direct {v4, v5, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    .line 32
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;->makeImmutable()V

    .line 33
    sget-object v3, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    add-int/lit8 v3, v2, -0x1

    aget-object v1, v1, v3

    :goto_1
    if-ge v2, v0, :cond_1

    .line 38
    sget-object v3, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v1

    aput-object v1, v3, v2

    .line 39
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->makeImmutable()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
    .end array-data
.end method

.method public constructor <init>(J[CII)V
    .locals 5

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 v0, p5, 0x8

    .line 57
    div-int/lit8 v0, v0, 0x9

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 58
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    long-to-int v2, p1

    const/4 v3, 0x0

    .line 59
    aput v2, v0, v3

    const/16 v2, 0x20

    ushr-long/2addr p1, v2

    long-to-int p1, p1

    const/4 p2, 0x1

    .line 60
    aput p1, v0, p2

    .line 61
    iput v3, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    .line 62
    iput v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    add-int/lit8 p1, p5, -0x5

    :goto_0
    if-ge p4, p1, :cond_1

    add-int/lit8 v0, p4, 0x5

    add-int/lit8 v1, p4, 0x1

    .line 68
    aget-char p4, p3, p4

    add-int/lit8 p4, p4, -0x30

    move v4, v1

    move v1, p4

    move p4, v4

    :goto_1
    if-ge p4, v0, :cond_0

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, p4, 0x1

    .line 70
    aget-char p4, p3, p4

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x30

    move p4, v2

    goto :goto_1

    :cond_0
    const v0, 0x186a0

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->multAddMe(II)V

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_2
    if-ge p4, p5, :cond_2

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v0, p4, 0x1

    .line 77
    aget-char p4, p3, p4

    add-int/2addr v3, p4

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 p1, p1, 0xa

    move p4, v0

    goto :goto_2

    :cond_2
    if-eq p1, p2, :cond_3

    .line 81
    invoke-direct {p0, p1, v3}, Lcom/alibaba/fastjson2/util/FDBigInteger;->multAddMe(II)V

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->trimLeadingZeros()V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    .line 51
    iput p2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    .line 52
    array-length p1, p1

    iput p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    .line 53
    invoke-direct {p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->trimLeadingZeros()V

    return-void
.end method

.method private static big5pow(I)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 1

    const/16 v0, 0x154

    if-ge p0, v0, :cond_0

    .line 149
    sget-object v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    aget-object p0, v0, p0

    return-object p0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5powRec(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static big5powRec(I)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 3

    const/16 v0, 0x154

    if-ge p0, v0, :cond_0

    .line 299
    sget-object v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->POW_5_CACHE:[Lcom/alibaba/fastjson2/util/FDBigInteger;

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    shr-int/lit8 v0, p0, 0x1

    sub-int/2addr p0, v0

    .line 310
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5powRec(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v0

    .line 311
    sget-object v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->SMALL_5_POW:[I

    array-length v2, v1

    if-ge p0, v2, :cond_1

    .line 312
    aget p0, v1, p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p0

    return-object p0

    .line 314
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5powRec(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static checkZeroTail([II)I
    .locals 1

    :cond_0
    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 398
    aget v0, p0, p1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static leftShift([II[IIII)V
    .locals 2

    :goto_0
    if-lez p1, :cond_0

    shl-int/2addr p5, p3

    add-int/lit8 v0, p1, -0x1

    .line 227
    aget v0, p0, v0

    ushr-int v1, v0, p4

    or-int/2addr p5, v1

    .line 229
    aput p5, p2, p1

    add-int/lit8 p1, p1, -0x1

    move p5, v0

    goto :goto_0

    :cond_0
    shl-int p0, p5, p3

    const/4 p1, 0x0

    .line 232
    aput p0, p2, p1

    return-void
.end method

.method private mult(I)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 3

    .line 155
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 158
    new-array v1, v1, [I

    .line 159
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {v2, v0, p1, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([III[I)V

    .line 160
    new-instance p1, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    invoke-direct {p1, v1, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object p1
.end method

.method private mult(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 5

    .line 164
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_0

    return-object p0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aget v0, v0, v1

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    return-object p1

    .line 170
    :cond_1
    iget v0, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_2

    return-object p1

    .line 173
    :cond_2
    invoke-direct {p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 174
    iget-object p1, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    return-object p1

    .line 176
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget v1, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    add-int v2, v0, v1

    new-array v2, v2, [I

    .line 177
    iget-object v3, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    iget-object v4, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {v3, v0, v4, v1, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([II[II[I)V

    .line 178
    new-instance v0, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iget p1, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v1, p1

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v0
.end method

.method private static mult([IIII[I)V
    .locals 14

    move v0, p1

    move/from16 v1, p2

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move v8, v5

    move-wide v9, v6

    :goto_0
    const/16 v11, 0x20

    if-ge v8, v0, :cond_0

    .line 209
    aget v12, p0, v8

    int-to-long v12, v12

    and-long/2addr v12, v3

    mul-long/2addr v12, v1

    add-long/2addr v12, v9

    long-to-int v9, v12

    .line 210
    aput v9, p4, v8

    ushr-long v9, v12, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    long-to-int v1, v9

    .line 213
    aput v1, p4, v0

    move/from16 v1, p3

    int-to-long v1, v1

    and-long/2addr v1, v3

    :goto_1
    if-ge v5, v0, :cond_1

    add-int/lit8 v8, v5, 0x1

    .line 217
    aget v9, p4, v8

    int-to-long v9, v9

    and-long/2addr v9, v3

    aget v5, p0, v5

    int-to-long v12, v5

    and-long/2addr v12, v3

    mul-long/2addr v12, v1

    add-long/2addr v9, v12

    add-long/2addr v9, v6

    long-to-int v5, v9

    .line 218
    aput v5, p4, v8

    ushr-long v6, v9, v11

    move v5, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    long-to-int v1, v6

    .line 221
    aput v1, p4, v0

    return-void
.end method

.method private static mult([III[I)V
    .locals 8

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 185
    aget v6, p0, p2

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-long/2addr v6, v4

    long-to-int v4, v6

    .line 186
    aput v4, p3, p2

    const/16 v4, 0x20

    ushr-long v4, v6, v4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    long-to-int p0, v4

    .line 189
    aput p0, p3, p1

    return-void
.end method

.method private static mult([II[II[I)V
    .locals 16

    move/from16 v0, p3

    const/4 v1, 0x0

    move/from16 v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 194
    aget v4, p0, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const-wide/16 v8, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v0, :cond_0

    add-int v11, v3, v10

    .line 197
    aget v12, p4, v11

    int-to-long v12, v12

    and-long/2addr v12, v6

    aget v14, p2, v10

    int-to-long v14, v14

    and-long/2addr v14, v6

    mul-long/2addr v14, v4

    add-long/2addr v12, v14

    add-long/2addr v8, v12

    long-to-int v12, v8

    .line 198
    aput v12, p4, v11

    const/16 v11, 0x20

    ushr-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    add-int v4, v3, v0

    long-to-int v5, v8

    .line 201
    aput v5, p4, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private multAddMe(II)V
    .locals 9

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 93
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    const/4 v4, 0x0

    aget v5, p1, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    mul-long/2addr v5, v0

    int-to-long v7, p2

    and-long/2addr v7, v2

    add-long/2addr v5, v7

    long-to-int p2, v5

    .line 94
    aput p2, p1, v4

    const/16 p1, 0x20

    ushr-long v4, v5, p1

    const/4 p2, 0x1

    .line 96
    :goto_0
    iget v6, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-ge p2, v6, :cond_0

    .line 97
    iget-object v6, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aget v7, v6, p2

    int-to-long v7, v7

    and-long/2addr v7, v2

    mul-long/2addr v7, v0

    add-long/2addr v4, v7

    long-to-int v7, v4

    .line 98
    aput v7, v6, p2

    ushr-long/2addr v4, p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    cmp-long p1, v4, p1

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 p2, v6, 0x1

    iput p2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    long-to-int p2, v4

    aput p2, p1, v6

    :cond_1
    return-void
.end method

.method private size()I
    .locals 2

    .line 121
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private trimLeadingZeros()V
    .locals 3

    .line 107
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-lez v0, :cond_1

    .line 108
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    if-nez v1, :cond_1

    :goto_0
    if-lez v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_0
    iput v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    :cond_1
    return-void
.end method

.method public static valueOfMulPow52(JII)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 15

    move-wide v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    long-to-int v4, v0

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    long-to-int v0, v0

    shr-int/lit8 v1, v3, 0x5

    and-int/lit8 v6, v3, 0x1f

    const/4 v7, 0x3

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    .line 326
    sget-object v11, Lcom/alibaba/fastjson2/util/FDBigInteger;->SMALL_5_POW:[I

    array-length v12, v11

    if-ge v2, v12, :cond_1

    .line 327
    aget v2, v11, v2

    int-to-long v2, v2

    const-wide v11, 0xffffffffL

    and-long/2addr v2, v11

    int-to-long v13, v4

    and-long/2addr v13, v11

    mul-long/2addr v13, v2

    long-to-int v4, v13

    ushr-long/2addr v13, v5

    int-to-long v8, v0

    and-long/2addr v8, v11

    mul-long/2addr v8, v2

    add-long/2addr v8, v13

    long-to-int v0, v8

    ushr-long v2, v8, v5

    long-to-int v2, v2

    if-nez v6, :cond_0

    .line 335
    new-instance v3, Lcom/alibaba/fastjson2/util/FDBigInteger;

    new-array v5, v7, [I

    aput v4, v5, v10

    const/4 v4, 0x1

    aput v0, v5, v4

    const/4 v0, 0x2

    aput v2, v5, v0

    invoke-direct {v3, v5, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v3

    .line 337
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson2/util/FDBigInteger;

    const/4 v5, 0x4

    new-array v5, v5, [I

    shl-int v8, v4, v6

    aput v8, v5, v10

    shl-int v8, v0, v6

    rsub-int/lit8 v9, v6, 0x20

    ushr-int/2addr v4, v9

    or-int/2addr v4, v8

    const/4 v8, 0x1

    aput v4, v5, v8

    shl-int v4, v2, v6

    ushr-int/2addr v0, v9

    or-int/2addr v0, v4

    const/4 v4, 0x2

    aput v0, v5, v4

    ushr-int v0, v2, v9

    aput v0, v5, v7

    invoke-direct {v3, v5, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v3

    .line 345
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5pow(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v1

    if-nez v0, :cond_3

    .line 348
    iget v0, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    add-int/lit8 v2, v0, 0x1

    if-eqz v3, :cond_2

    const/4 v9, 0x1

    goto :goto_0

    :cond_2
    move v9, v10

    :goto_0
    add-int/2addr v2, v9

    new-array v2, v2, [I

    .line 349
    iget-object v5, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {v5, v0, v4, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([III[I)V

    goto :goto_2

    .line 351
    :cond_3
    iget v2, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    add-int/lit8 v5, v2, 0x2

    if-eqz v3, :cond_4

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    move v9, v10

    :goto_1
    add-int/2addr v5, v9

    new-array v5, v5, [I

    .line 352
    iget-object v6, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {v6, v2, v4, v0, v5}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([IIII[I)V

    move-object v2, v5

    .line 354
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v1, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object v0

    return-object v0

    :cond_5
    if-eqz v3, :cond_7

    if-nez v6, :cond_6

    .line 358
    new-instance v2, Lcom/alibaba/fastjson2/util/FDBigInteger;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v4, v3, v10

    const/4 v8, 0x1

    aput v0, v3, v8

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v2

    :cond_6
    const/4 v8, 0x1

    .line 360
    new-instance v2, Lcom/alibaba/fastjson2/util/FDBigInteger;

    new-array v3, v7, [I

    shl-int v7, v4, v6

    aput v7, v3, v10

    shl-int v7, v0, v6

    sub-int/2addr v5, v6

    ushr-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v3, v8

    ushr-int/2addr v0, v5

    const/4 v5, 0x2

    aput v0, v3, v5

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v2

    :cond_7
    const/4 v5, 0x2

    const/4 v8, 0x1

    .line 367
    new-instance v1, Lcom/alibaba/fastjson2/util/FDBigInteger;

    new-array v2, v5, [I

    aput v4, v2, v10

    aput v0, v2, v8

    invoke-direct {v1, v2, v10}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v1
.end method


# virtual methods
.method public cmp(Lcom/alibaba/fastjson2/util/FDBigInteger;)I
    .locals 8

    .line 371
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v1, v0

    .line 372
    iget v2, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget v3, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v3, v2

    const/4 v4, 0x1

    if-le v1, v3, :cond_0

    return v4

    :cond_0
    const/4 v5, -0x1

    if-ge v1, v3, :cond_1

    return v5

    :cond_1
    if-lez v0, :cond_3

    if-lez v2, :cond_3

    .line 381
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, v1, v0

    .line 382
    iget-object v3, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, v3, v2

    if-eq v1, v3, :cond_1

    int-to-long v0, v1

    const-wide v6, 0xffffffffL

    and-long/2addr v0, v6

    int-to-long v2, v3

    and-long/2addr v2, v6

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    move v4, v5

    :cond_2
    return v4

    :cond_3
    if-lez v0, :cond_4

    .line 388
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->checkZeroTail([II)I

    move-result p1

    return p1

    :cond_4
    if-lez v2, :cond_5

    .line 391
    iget-object p1, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-static {p1, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->checkZeroTail([II)I

    move-result p1

    neg-int p1, p1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public cmpPow52(II)I
    .locals 6

    if-nez p1, :cond_4

    shr-int/lit8 p1, p2, 0x5

    and-int/lit8 p2, p2, 0x1f

    .line 504
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr p1, v2

    if-le v1, p1, :cond_0

    return v2

    :cond_0
    const/4 v3, -0x1

    if-ge v1, p1, :cond_1

    return v3

    .line 510
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    shl-int p2, v2, p2

    if-eq v1, p2, :cond_3

    int-to-long v0, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    int-to-long p1, p2

    and-long/2addr p1, v4

    cmp-long p1, v0, p1

    if-gez p1, :cond_2

    move v2, v3

    :cond_2
    return v2

    :cond_3
    sub-int/2addr v0, v2

    .line 515
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->checkZeroTail([II)I

    move-result p1

    return p1

    .line 517
    :cond_4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5pow(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->cmp(Lcom/alibaba/fastjson2/util/FDBigInteger;)I

    move-result p1

    return p1
.end method

.method public leftInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 408
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_0

    .line 409
    new-instance v2, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget-object v3, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v4, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 413
    :goto_0
    iget v3, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iget v4, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    sub-int/2addr v3, v4

    .line 414
    iget-object v4, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    .line 415
    iget-object v5, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    .line 416
    iget v6, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    .line 417
    iget v7, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    const/4 v8, 0x0

    if-gez v3, :cond_2

    sub-int v9, v7, v3

    .line 421
    array-length v10, v5

    if-ge v9, v10, :cond_1

    neg-int v3, v3

    .line 422
    invoke-static {v5, v8, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    invoke-static {v5, v8, v3, v8}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 425
    :cond_1
    new-array v10, v9, [I

    neg-int v3, v3

    .line 426
    invoke-static {v5, v8, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iput-object v10, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    move-object v5, v10

    .line 429
    :goto_1
    iget v1, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iput v1, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    .line 430
    iput v9, v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    move v3, v8

    move v7, v9

    :cond_2
    const-wide/16 v11, 0x0

    :goto_2
    const-wide v13, 0xffffffffL

    if-ge v8, v6, :cond_3

    if-ge v3, v7, :cond_3

    .line 436
    aget v15, v5, v3

    int-to-long v9, v15

    and-long/2addr v9, v13

    aget v15, v4, v8

    move-object/from16 v16, v2

    int-to-long v1, v15

    and-long/2addr v1, v13

    sub-long/2addr v9, v1

    add-long/2addr v9, v11

    long-to-int v1, v9

    .line 437
    aput v1, v5, v3

    const/16 v1, 0x20

    shr-long v11, v9, v1

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v16

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    const-wide/16 v1, 0x0

    :goto_3
    cmp-long v4, v11, v1

    if-eqz v4, :cond_4

    if-ge v3, v7, :cond_4

    .line 441
    aget v4, v5, v3

    int-to-long v8, v4

    and-long/2addr v8, v13

    add-long/2addr v8, v11

    long-to-int v4, v8

    .line 442
    aput v4, v5, v3

    const/16 v4, 0x20

    shr-long v11, v8, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 447
    :cond_4
    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson2/util/FDBigInteger;->trimLeadingZeros()V

    return-object v16
.end method

.method public leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 9

    if-eqz p1, :cond_a

    .line 236
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v5, p1, 0x1f

    .line 241
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->isImmutable:Z

    if-eqz p1, :cond_3

    if-nez v5, :cond_1

    .line 243
    new-instance p1, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget-object v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v2, v1

    invoke-direct {p1, v0, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object p1

    :cond_1
    rsub-int/lit8 v6, v5, 0x20

    add-int/lit8 v3, v0, -0x1

    .line 247
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aget v7, v2, v3

    ushr-int p1, v7, v6

    if-eqz p1, :cond_2

    add-int/lit8 v4, v0, 0x1

    .line 251
    new-array v4, v4, [I

    .line 252
    aput p1, v4, v0

    goto :goto_0

    .line 254
    :cond_2
    new-array v4, v0, [I

    :goto_0
    move-object p1, v4

    move-object v4, p1

    .line 256
    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift([II[IIII)V

    .line 257
    new-instance v0, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v2, v1

    invoke-direct {v0, p1, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    return-object v0

    :cond_3
    if-eqz v5, :cond_9

    rsub-int/lit8 v6, v5, 0x20

    .line 262
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    const/4 p1, 0x0

    aget v3, v2, p1

    shl-int/2addr v3, v5

    if-nez v3, :cond_6

    .line 264
    aget v0, v2, p1

    .line 265
    :goto_1
    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_4

    ushr-int/2addr v0, v6

    .line 267
    iget-object v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    add-int/lit8 v3, p1, 0x1

    aget v4, v2, v3

    shl-int v7, v4, v5

    or-int/2addr v0, v7

    .line 269
    aput v0, v2, p1

    move p1, v3

    move v0, v4

    goto :goto_1

    :cond_4
    ushr-int/2addr v0, v6

    .line 272
    iget-object v3, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aput v0, v3, p1

    if-nez v0, :cond_5

    add-int/lit8 v2, v2, -0x1

    .line 274
    iput v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    .line 276
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v0, -0x1

    .line 279
    aget v7, v2, v3

    ushr-int p1, v7, v6

    if-eqz p1, :cond_8

    .line 284
    array-length v4, v2

    if-ne v0, v4, :cond_7

    add-int/lit8 v4, v0, 0x1

    .line 285
    new-array v4, v4, [I

    iput-object v4, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    goto :goto_2

    :cond_7
    move-object v4, v2

    :goto_2
    add-int/lit8 v8, v0, 0x1

    .line 287
    iput v8, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    aput p1, v4, v0

    goto :goto_3

    :cond_8
    move-object v4, v2

    .line 289
    :goto_3
    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift([II[IIII)V

    .line 292
    :cond_9
    :goto_4
    iget p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    :cond_a
    :goto_5
    return-object p0
.end method

.method public makeImmutable()V
    .locals 1

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->isImmutable:Z

    return-void
.end method

.method public multByPow52(II)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 5

    .line 125
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 132
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/util/FDBigInteger;->SMALL_5_POW:[I

    array-length v3, v2

    if-ge p1, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v3, v1

    .line 133
    new-array v1, v3, [I

    .line 134
    iget-object v3, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    aget p1, v2, p1

    invoke-static {v3, v0, p1, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([III[I)V

    .line 135
    new-instance p1, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    invoke-direct {p1, v1, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    goto :goto_1

    .line 137
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->big5pow(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    .line 138
    iget v0, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    invoke-direct {p1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 139
    iget-object v1, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    iget-object v3, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    iget v4, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alibaba/fastjson2/util/FDBigInteger;->mult([II[II[I)V

    .line 140
    new-instance v1, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget v2, p0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iget p1, p1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    add-int/2addr v2, p1

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    move-object p1, v1

    goto :goto_1

    :cond_3
    move-object p1, p0

    .line 143
    :goto_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/util/FDBigInteger;->leftShift(I)Lcom/alibaba/fastjson2/util/FDBigInteger;

    move-result-object p1

    return-object p1
.end method

.method public rightInplaceSub(Lcom/alibaba/fastjson2/util/FDBigInteger;)Lcom/alibaba/fastjson2/util/FDBigInteger;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 454
    iget-boolean v2, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->isImmutable:Z

    if-eqz v2, :cond_0

    .line 455
    new-instance v2, Lcom/alibaba/fastjson2/util/FDBigInteger;

    iget-object v3, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iget v1, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;-><init>([II)V

    move-object v1, v2

    .line 457
    :cond_0
    iget v2, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iget v3, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    sub-int/2addr v2, v3

    .line 458
    iget-object v3, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    .line 459
    iget-object v4, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    .line 460
    iget v5, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    .line 461
    iget v6, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    const/4 v7, 0x0

    if-gez v2, :cond_2

    .line 463
    array-length v8, v3

    if-ge v6, v8, :cond_1

    neg-int v2, v2

    .line 464
    invoke-static {v3, v7, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    invoke-static {v3, v7, v2, v7}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0

    .line 467
    :cond_1
    new-array v8, v6, [I

    neg-int v2, v2

    .line 468
    invoke-static {v3, v7, v8, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iput-object v8, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    move-object v3, v8

    .line 471
    :goto_0
    iget v2, v0, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    iput v2, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->offset:I

    move v2, v7

    goto :goto_1

    :cond_2
    add-int v5, v6, v2

    .line 475
    array-length v8, v3

    if-lt v5, v8, :cond_3

    .line 476
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->data:[I

    :cond_3
    :goto_1
    const-wide/16 v8, 0x0

    move v5, v7

    :goto_2
    const/16 v10, 0x20

    const-wide v11, 0xffffffffL

    if-ge v5, v2, :cond_4

    .line 483
    aget v13, v3, v5

    int-to-long v13, v13

    and-long/2addr v11, v13

    neg-long v11, v11

    add-long/2addr v11, v8

    long-to-int v8, v11

    .line 484
    aput v8, v3, v5

    shr-long v8, v11, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v7, v6, :cond_5

    .line 489
    aget v2, v4, v7

    int-to-long v13, v2

    and-long/2addr v13, v11

    aget v2, v3, v5

    move-object/from16 p1, v1

    int-to-long v0, v2

    and-long/2addr v0, v11

    sub-long/2addr v13, v0

    add-long/2addr v13, v8

    long-to-int v0, v13

    .line 490
    aput v0, v3, v5

    shr-long v8, v13, v10

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    :cond_5
    move-object/from16 p1, v1

    move-object/from16 v1, p1

    .line 495
    iput v5, v1, Lcom/alibaba/fastjson2/util/FDBigInteger;->nWords:I

    .line 496
    invoke-direct {v1}, Lcom/alibaba/fastjson2/util/FDBigInteger;->trimLeadingZeros()V

    return-object v1
.end method
