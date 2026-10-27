.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 38
    const/4 v1, 0x4

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 39
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 40
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 41
    new-array v2, v0, [I

    fill-array-data v2, :array_4

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 42
    new-array v2, v1, [I

    fill-array-data v2, :array_5

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 44
    const/16 v2, 0x9

    new-array v2, v2, [[I

    new-array v3, v1, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_8

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_9

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-array v3, v1, [I

    fill-array-data v3, :array_a

    aput-object v3, v2, v1

    new-array v3, v1, [I

    fill-array-data v3, :array_b

    aput-object v3, v2, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_c

    const/4 v3, 0x6

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_d

    const/4 v3, 0x7

    aput-object v0, v2, v3

    new-array v0, v1, [I

    fill-array-data v0, :array_e

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 62
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 5
    .param p1, "pair"    # Lcom/google/zxing/oned/rss/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .line 93
    .local p0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    if-nez p1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/Pair;

    .line 98
    .local v2, "other":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 99
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 100
    const/4 v0, 0x1

    .line 101
    goto :goto_1

    .line 103
    .end local v2    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    goto :goto_0

    .line 104
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 105
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_3
    return-void
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 12
    .param p1, "outsideChar"    # Z
    .param p2, "numModules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v0

    .line 363
    .local v0, "oddSum":I
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v1

    .line 364
    .local v1, "evenSum":I
    add-int v2, v0, v1

    sub-int/2addr v2, p2

    .line 365
    .local v2, "mismatch":I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, p1, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 366
    .local v3, "oddParityBad":Z
    :goto_0
    and-int/lit8 v6, v1, 0x1

    if-ne v6, v5, :cond_1

    move v4, v5

    nop

    .line 368
    .local v4, "evenParityBad":Z
    :cond_1
    const/4 v6, 0x0

    .line 369
    .local v6, "incrementOdd":Z
    const/4 v7, 0x0

    .line 370
    .local v7, "decrementOdd":Z
    const/4 v8, 0x0

    .line 371
    .local v8, "incrementEven":Z
    const/4 v9, 0x0

    .line 373
    .local v9, "decrementEven":Z
    const/4 v10, 0x4

    if-eqz p1, :cond_5

    .line 374
    const/16 v11, 0xc

    if-le v0, v11, :cond_2

    .line 375
    const/4 v7, 0x1

    goto :goto_1

    .line 376
    :cond_2
    if-ge v0, v10, :cond_3

    .line 377
    const/4 v6, 0x1

    .line 379
    :cond_3
    :goto_1
    if-le v1, v11, :cond_4

    .line 380
    const/4 v9, 0x1

    goto :goto_3

    .line 381
    :cond_4
    if-ge v1, v10, :cond_9

    .line 382
    const/4 v8, 0x1

    goto :goto_3

    .line 385
    :cond_5
    const/16 v11, 0xb

    if-le v0, v11, :cond_6

    .line 386
    const/4 v7, 0x1

    goto :goto_2

    .line 387
    :cond_6
    const/4 v11, 0x5

    if-ge v0, v11, :cond_7

    .line 388
    const/4 v6, 0x1

    .line 390
    :cond_7
    :goto_2
    const/16 v11, 0xa

    if-le v1, v11, :cond_8

    .line 391
    const/4 v9, 0x1

    goto :goto_3

    .line 392
    :cond_8
    if-ge v1, v10, :cond_9

    .line 393
    const/4 v8, 0x1

    .line 409
    :cond_9
    :goto_3
    if-ne v2, v5, :cond_d

    .line 410
    if-eqz v3, :cond_b

    .line 411
    if-nez v4, :cond_a

    .line 414
    const/4 v7, 0x1

    goto :goto_4

    .line 412
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 416
    :cond_b
    if-eqz v4, :cond_c

    .line 419
    const/4 v9, 0x1

    goto :goto_4

    .line 417
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 421
    :cond_d
    const/4 v5, -0x1

    if-ne v2, v5, :cond_11

    .line 422
    if-eqz v3, :cond_f

    .line 423
    if-nez v4, :cond_e

    .line 426
    const/4 v6, 0x1

    goto :goto_4

    .line 424
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 428
    :cond_f
    if-eqz v4, :cond_10

    .line 431
    const/4 v8, 0x1

    goto :goto_4

    .line 429
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 433
    :cond_11
    if-nez v2, :cond_1c

    .line 434
    if-eqz v3, :cond_14

    .line 435
    if-eqz v4, :cond_13

    .line 439
    if-ge v0, v1, :cond_12

    .line 440
    const/4 v6, 0x1

    .line 441
    const/4 v9, 0x1

    goto :goto_4

    .line 443
    :cond_12
    const/4 v7, 0x1

    .line 444
    const/4 v8, 0x1

    goto :goto_4

    .line 436
    :cond_13
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 447
    :cond_14
    if-nez v4, :cond_1b

    .line 456
    :goto_4
    if-eqz v6, :cond_16

    .line 457
    if-nez v7, :cond_15

    .line 460
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_5

    .line 458
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 462
    :cond_16
    :goto_5
    if-eqz v7, :cond_17

    .line 463
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 465
    :cond_17
    if-eqz v8, :cond_19

    .line 466
    if-nez v9, :cond_18

    .line 469
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    goto :goto_6

    .line 467
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 471
    :cond_19
    :goto_6
    if-eqz v9, :cond_1a

    .line 472
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v10

    invoke-static {v5, v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 475
    :cond_1a
    return-void

    .line 448
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 453
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 3
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 151
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v1

    const/16 v2, 0x10

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x4f

    .line 152
    .local v0, "checkValue":I
    nop

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    const/16 v2, 0x9

    mul-int/2addr v2, v1

    invoke-virtual {p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v1

    add-int/2addr v2, v1

    .line 154
    .local v2, "targetCheckValue":I
    const/16 v1, 0x48

    if-le v2, v1, :cond_0

    .line 155
    add-int/lit8 v2, v2, -0x1

    .line 157
    :cond_0
    const/16 v1, 0x8

    if-le v2, v1, :cond_1

    .line 158
    add-int/lit8 v2, v2, -0x1

    .line 160
    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 15
    .param p0, "leftPair"    # Lcom/google/zxing/oned/rss/Pair;
    .param p1, "rightPair"    # Lcom/google/zxing/oned/rss/Pair;

    .line 116
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x453af5

    mul-long/2addr v2, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    .line 117
    .local v2, "symbolValue":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xe

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 120
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xd

    rsub-int/lit8 v4, v4, 0xd

    .local v4, "i":I
    :goto_0
    const/16 v6, 0x30

    if-lez v4, :cond_0

    .line 121
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 123
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v4, 0x0

    .line 126
    .local v4, "checkDigit":I
    const/4 v7, 0x0

    move v8, v4

    move v4, v7

    .local v4, "i":I
    .local v8, "checkDigit":I
    :goto_1
    const/4 v9, 0x3

    if-ge v4, v5, :cond_2

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    sub-int/2addr v10, v6

    .line 128
    .local v10, "digit":I
    and-int/lit8 v11, v4, 0x1

    if-nez v11, :cond_1

    mul-int/2addr v9, v10

    goto :goto_2

    :cond_1
    move v9, v10

    :goto_2
    add-int/2addr v8, v9

    .line 126
    .end local v10    # "digit":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v4    # "i":I
    :cond_2
    rem-int/lit8 v4, v8, 0xa

    const/16 v5, 0xa

    rsub-int/lit8 v4, v4, 0xa

    .line 131
    .end local v8    # "checkDigit":I
    .local v4, "checkDigit":I
    if-ne v4, v5, :cond_3

    .line 132
    const/4 v4, 0x0

    .line 134
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    .line 137
    .local v5, "leftPoints":[Lcom/google/zxing/ResultPoint;
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    .line 138
    .local v6, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v8, Lcom/google/zxing/Result;

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    aget-object v13, v5, v7

    aput-object v13, v12, v7

    const/4 v13, 0x1

    aget-object v14, v5, v13

    aput-object v14, v12, v13

    const/4 v14, 0x2

    aget-object v7, v6, v7

    aput-object v7, v12, v14

    aget-object v7, v6, v13

    aput-object v7, v12, v9

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v8, v10, v11, v12, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 138
    return-object v8
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 26
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "pattern"    # Lcom/google/zxing/oned/rss/FinderPattern;
    .param p3, "outsideChar"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 193
    move/from16 v1, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v2

    .line 194
    .local v2, "counters":[I
    const/4 v3, 0x0

    aput v3, v2, v3

    .line 195
    const/4 v4, 0x1

    aput v3, v2, v4

    .line 196
    const/4 v5, 0x2

    aput v3, v2, v5

    .line 197
    const/4 v6, 0x3

    aput v3, v2, v6

    .line 198
    const/4 v7, 0x4

    aput v3, v2, v7

    .line 199
    const/4 v8, 0x5

    aput v3, v2, v8

    .line 200
    const/4 v8, 0x6

    aput v3, v2, v8

    .line 201
    const/4 v8, 0x7

    aput v3, v2, v8

    .line 203
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v3

    invoke-static {v0, v8, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v8

    aget v8, v8, v4

    add-int/2addr v8, v4

    invoke-static {v0, v8, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 208
    const/4 v8, 0x0

    .local v8, "i":I
    array-length v9, v2

    sub-int/2addr v9, v4

    .local v9, "j":I
    :goto_0
    if-ge v8, v9, :cond_1

    .line 209
    aget v10, v2, v8

    .line 210
    .local v10, "temp":I
    aget v11, v2, v9

    aput v11, v2, v8

    .line 211
    aput v10, v2, v9

    .line 208
    .end local v10    # "temp":I
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 215
    .end local v8    # "i":I
    .end local v9    # "j":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    const/16 v8, 0x10

    goto :goto_2

    :cond_2
    const/16 v8, 0xf

    .line 216
    .local v8, "numModules":I
    :goto_2
    invoke-static {v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    .line 218
    .local v9, "elementWidth":F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v10

    .line 219
    .local v10, "oddCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v11

    .line 220
    .local v11, "evenCounts":[I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v12

    .line 221
    .local v12, "oddRoundingErrors":[F
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v13

    .line 223
    .local v13, "evenRoundingErrors":[F
    move v14, v3

    .local v14, "i":I
    :goto_3
    array-length v15, v2

    if-ge v14, v15, :cond_6

    .line 224
    aget v15, v2, v14

    int-to-float v15, v15

    div-float/2addr v15, v9

    .line 225
    .local v15, "value":F
    const/high16 v16, 0x3f000000    # 0.5f

    add-float v3, v15, v16

    float-to-int v3, v3

    .line 226
    .local v3, "count":I
    if-ge v3, v4, :cond_3

    .line 227
    const/4 v3, 0x1

    goto :goto_4

    .line 228
    :cond_3
    const/16 v5, 0x8

    if-le v3, v5, :cond_4

    .line 229
    const/16 v3, 0x8

    .line 231
    :cond_4
    :goto_4
    div-int/lit8 v5, v14, 0x2

    .line 232
    .local v5, "offset":I
    and-int/lit8 v16, v14, 0x1

    if-nez v16, :cond_5

    .line 233
    aput v3, v10, v5

    .line 234
    int-to-float v7, v3

    sub-float v7, v15, v7

    aput v7, v12, v5

    goto :goto_5

    .line 236
    :cond_5
    aput v3, v11, v5

    .line 237
    int-to-float v7, v3

    sub-float v7, v15, v7

    aput v7, v13, v5

    .line 223
    .end local v3    # "count":I
    .end local v5    # "offset":I
    .end local v15    # "value":F
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x4

    goto :goto_3

    .line 241
    .end local v14    # "i":I
    :cond_6
    move-object/from16 v3, p0

    invoke-direct {v3, v1, v8}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 243
    const/4 v5, 0x0

    .line 244
    .local v5, "oddSum":I
    const/4 v7, 0x0

    .line 245
    .local v7, "oddChecksumPortion":I
    array-length v14, v10

    sub-int/2addr v14, v4

    .restart local v14    # "i":I
    :goto_6
    if-ltz v14, :cond_7

    .line 246
    mul-int/lit8 v7, v7, 0x9

    .line 247
    aget v15, v10, v14

    add-int/2addr v7, v15

    .line 248
    aget v15, v10, v14

    add-int/2addr v5, v15

    .line 245
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 250
    .end local v14    # "i":I
    :cond_7
    const/4 v14, 0x0

    .line 251
    .local v14, "evenChecksumPortion":I
    const/4 v15, 0x0

    .line 252
    .local v15, "evenSum":I
    array-length v6, v11

    sub-int/2addr v6, v4

    .local v6, "i":I
    :goto_7
    if-ltz v6, :cond_8

    .line 253
    mul-int/lit8 v14, v14, 0x9

    .line 254
    aget v16, v11, v6

    add-int v14, v14, v16

    .line 255
    aget v16, v11, v6

    add-int v15, v15, v16

    .line 252
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 257
    .end local v6    # "i":I
    :cond_8
    const/4 v6, 0x3

    mul-int/2addr v6, v14

    add-int/2addr v6, v7

    .line 259
    .local v6, "checksumPortion":I
    if-eqz v1, :cond_a

    .line 260
    and-int/lit8 v16, v5, 0x1

    if-nez v16, :cond_9

    const/16 v4, 0xc

    if-gt v5, v4, :cond_9

    const/4 v4, 0x4

    if-lt v5, v4, :cond_9

    .line 263
    const/16 v4, 0xc

    sub-int/2addr v4, v5

    const/16 v16, 0x2

    div-int/lit8 v4, v4, 0x2

    .line 264
    .local v4, "group":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    aget v0, v16, v4

    .line 265
    .local v0, "oddWidest":I
    rsub-int/lit8 v1, v0, 0x9

    .line 266
    .local v1, "evenWidest":I
    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-static {v10, v0, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    .line 267
    .local v2, "vOdd":I
    .local v19, "counters":[I
    move/from16 v20, v0

    const/4 v0, 0x1

    invoke-static {v11, v1, v0}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v0

    .line 268
    .local v0, "vEven":I
    .local v20, "oddWidest":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    aget v16, v16, v4

    .line 269
    .local v16, "tEven":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    aget v17, v17, v4

    .line 270
    .local v17, "gSum":I
    move/from16 v21, v1

    new-instance v1, Lcom/google/zxing/oned/rss/DataCharacter;

    .end local v1    # "evenWidest":I
    .local v21, "evenWidest":I
    mul-int v18, v2, v16

    add-int v18, v18, v0

    move/from16 v22, v0

    add-int v0, v18, v17

    .end local v0    # "vEven":I
    .local v22, "vEven":I
    invoke-direct {v1, v0, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v1

    .line 261
    .end local v4    # "group":I
    .end local v16    # "tEven":I
    .end local v17    # "gSum":I
    .end local v19    # "counters":[I
    .end local v20    # "oddWidest":I
    .end local v21    # "evenWidest":I
    .end local v22    # "vEven":I
    .local v2, "counters":[I
    :cond_9
    move-object/from16 v19, v2

    .end local v2    # "counters":[I
    .restart local v19    # "counters":[I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 272
    .end local v19    # "counters":[I
    .restart local v2    # "counters":[I
    :cond_a
    move-object/from16 v19, v2

    .end local v2    # "counters":[I
    .restart local v19    # "counters":[I
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_b

    const/16 v0, 0xa

    if-gt v15, v0, :cond_b

    const/4 v1, 0x4

    if-lt v15, v1, :cond_b

    .line 275
    sub-int/2addr v0, v15

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 276
    .local v0, "group":I
    sget-object v1, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    aget v1, v1, v0

    .line 277
    .local v1, "oddWidest":I
    rsub-int/lit8 v2, v1, 0x9

    .line 278
    .local v2, "evenWidest":I
    const/4 v4, 0x1

    invoke-static {v10, v1, v4}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v4

    .line 279
    .local v4, "vOdd":I
    move/from16 v23, v1

    const/4 v1, 0x0

    invoke-static {v11, v2, v1}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 280
    .local v1, "vEven":I
    .local v23, "oddWidest":I
    sget-object v16, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    aget v16, v16, v0

    .line 281
    .local v16, "tOdd":I
    sget-object v17, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    aget v17, v17, v0

    .line 282
    .restart local v17    # "gSum":I
    move/from16 v24, v0

    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    .end local v0    # "group":I
    .local v24, "group":I
    mul-int v18, v1, v16

    add-int v18, v18, v4

    move/from16 v25, v1

    add-int v1, v18, v17

    .end local v1    # "vEven":I
    .local v25, "vEven":I
    invoke-direct {v0, v1, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 273
    .end local v2    # "evenWidest":I
    .end local v4    # "vOdd":I
    .end local v16    # "tOdd":I
    .end local v17    # "gSum":I
    .end local v23    # "oddWidest":I
    .end local v24    # "group":I
    .end local v25    # "vEven":I
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 11
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "right"    # Z
    .param p3, "rowNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .line 165
    .local p4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v2

    .line 166
    .local v2, "startEnd":[I
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v3

    .line 168
    .local v3, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    if-nez p4, :cond_0

    .line 169
    move-object v4, v0

    goto :goto_0

    .line 168
    :cond_0
    sget-object v4, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    .line 169
    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/ResultPointCallback;

    .line 171
    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    :goto_0
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 172
    aget v6, v2, v1

    aget v7, v2, v5

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 173
    .local v6, "center":F
    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v7

    sub-int/2addr v7, v5

    int-to-float v7, v7

    sub-float v6, v7, v6

    .line 177
    :cond_1
    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, p3

    invoke-direct {v7, v6, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v4, v7}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 180
    .end local v6    # "center":F
    :cond_2
    invoke-direct {p0, p1, v3, v5}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v5

    .line 181
    .local v5, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    invoke-direct {p0, p1, v3, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v1

    .line 182
    .local v1, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v6, Lcom/google/zxing/oned/rss/Pair;

    const/16 v7, 0x63d

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v8

    add-int/2addr v7, v8

    .line 183
    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v8

    const/4 v9, 0x4

    invoke-virtual {v1}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    invoke-direct {v6, v7, v8, v3}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    return-object v6

    .line 185
    .end local v1    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v2    # "startEnd":[I
    .end local v3    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v4    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v5    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "ignored":Lcom/google/zxing/NotFoundException;
    return-object v0
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 12
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowOffset"    # I
    .param p3, "rightFinderPattern"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v0

    .line 291
    .local v0, "counters":[I
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 292
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 293
    const/4 v3, 0x2

    aput v1, v0, v3

    .line 294
    const/4 v4, 0x3

    aput v1, v0, v4

    .line 296
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    .line 297
    .local v5, "width":I
    move v6, p2

    move p2, v1

    .line 298
    .local v6, "rowOffset":I
    .local p2, "isWhite":Z
    :goto_0
    if-ge v6, v5, :cond_1

    .line 299
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    xor-int/2addr v7, v2

    move p2, v7

    .line 300
    if-ne p3, p2, :cond_0

    .line 302
    goto :goto_1

    .line 304
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    :cond_1
    :goto_1
    const/4 v7, 0x0

    .line 308
    .local v7, "counterPosition":I
    move v8, v6

    .line 309
    .local v8, "patternStart":I
    move v9, v8

    move v8, v7

    move v7, p2

    move p2, v6

    .local v7, "isWhite":Z
    .local v8, "counterPosition":I
    .local v9, "patternStart":I
    .local p2, "x":I
    :goto_2
    if-ge p2, v5, :cond_6

    .line 310
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v7

    if-eqz v10, :cond_2

    .line 311
    aget v10, v0, v8

    add-int/2addr v10, v2

    aput v10, v0, v8

    goto :goto_5

    .line 313
    :cond_2
    if-ne v8, v4, :cond_4

    .line 314
    invoke-static {v0}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 315
    new-array v3, v3, [I

    aput v9, v3, v1

    aput p2, v3, v2

    return-object v3

    .line 317
    :cond_3
    aget v10, v0, v1

    aget v11, v0, v2

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 318
    aget v10, v0, v3

    aput v10, v0, v1

    .line 319
    aget v10, v0, v4

    aput v10, v0, v2

    .line 320
    aput v1, v0, v3

    .line 321
    aput v1, v0, v4

    .line 322
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 324
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 326
    :goto_3
    aput v2, v0, v8

    .line 327
    if-nez v7, :cond_5

    move v10, v2

    goto :goto_4

    :cond_5
    move v10, v1

    :goto_4
    move v7, v10

    .line 309
    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 330
    .end local p2    # "x":I
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p2

    throw p2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 17
    .param p1, "row"    # Lcom/google/zxing/common/BitArray;
    .param p2, "rowNumber"    # I
    .param p3, "right"    # Z
    .param p4, "startEnd"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 337
    const/4 v1, 0x0

    aget v2, p4, v1

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    .line 338
    .local v2, "firstIsBlack":Z
    aget v3, p4, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 340
    .local v3, "firstElementStart":I
    :goto_0
    if-ltz v3, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_0

    .line 341
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 343
    :cond_0
    add-int/2addr v3, v4

    .line 344
    aget v5, p4, v1

    sub-int/2addr v5, v3

    .line 346
    .local v5, "firstCounter":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v6

    .line 347
    .local v6, "counters":[I
    array-length v7, v6

    sub-int/2addr v7, v4

    invoke-static {v6, v1, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    aput v5, v6, v1

    .line 349
    sget-object v7, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v6, v7}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v7

    .line 350
    .local v7, "value":I
    move v8, v3

    .line 351
    .local v8, "start":I
    aget v9, p4, v4

    .line 352
    .local v9, "end":I
    if-eqz p3, :cond_1

    .line 354
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int/2addr v10, v8

    .line 355
    .end local v8    # "start":I
    .local v10, "start":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    sub-int/2addr v8, v4

    sub-int/2addr v8, v9

    .line 357
    .end local v9    # "end":I
    .local v8, "end":I
    move v15, v8

    move v14, v10

    goto :goto_1

    .end local v10    # "start":I
    .local v8, "start":I
    .restart local v9    # "end":I
    :cond_1
    move v14, v8

    move v15, v9

    .end local v8    # "start":I
    .end local v9    # "end":I
    .local v14, "start":I
    .local v15, "end":I
    :goto_1
    new-instance v16, Lcom/google/zxing/oned/rss/FinderPattern;

    const/4 v8, 0x2

    new-array v10, v8, [I

    aput v3, v10, v1

    aget v1, p4, v4

    aput v1, v10, v4

    move-object/from16 v8, v16

    move v9, v7

    move v11, v14

    move v12, v15

    move/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object v16
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 11
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 68
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v1

    .line 69
    .local v1, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v2, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 70
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 71
    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, p1, p3}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v3

    .line 72
    .local v3, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 74
    iget-object v4, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 75
    .local v4, "lefSize":I
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 76
    iget-object v6, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/Pair;

    .line 77
    .local v6, "left":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v7

    if-le v7, v2, :cond_1

    .line 78
    iget-object v7, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 79
    .local v7, "rightSize":I
    move v8, v0

    .local v8, "j":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 80
    iget-object v9, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/oned/rss/Pair;

    .line 81
    .local v9, "right":Lcom/google/zxing/oned/rss/Pair;
    invoke-virtual {v9}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v10

    if-le v10, v2, :cond_0

    .line 82
    invoke-static {v6, v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 83
    invoke-static {v6, v9}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0

    .line 79
    .end local v9    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 75
    .end local v6    # "left":Lcom/google/zxing/oned/rss/Pair;
    .end local v7    # "rightSize":I
    .end local v8    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .end local v5    # "i":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    iget-object v0, p0, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    return-void
.end method
