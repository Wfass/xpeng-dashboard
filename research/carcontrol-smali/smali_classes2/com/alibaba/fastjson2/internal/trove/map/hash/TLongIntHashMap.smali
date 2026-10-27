.class public final Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;
.super Ljava/lang/Object;
.source "TLongIntHashMap.java"


# static fields
.field static final largestPrime:I

.field static final primeCapacities:[I


# instance fields
.field private consumeFreeSlot:Z

.field private free:I

.field private maxSize:I

.field private set:[J

.field private size:I

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xf4

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->primeCapacities:[I

    .line 89
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 90
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    sput v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->largestPrime:I

    return-void

    :array_0
    .array-data 4
        0x5
        0xb
        0x17
        0x2f
        0x61
        0xc5
        0x18d
        0x31d
        0x63d
        0xc83
        0x1915
        0x3235
        0x6475
        0xc8ed
        0x191dd
        0x323bf
        0x64787
        0xc8f4d
        0x191e9d
        0x323d49
        0x647a97
        0xc8f539
        0x191ea81
        0x323d521
        0x647aa43
        0xc8f5489
        0x191ea927
        0x323d525b
        0x647aa4bf
        0x1b1
        0x36d
        0x6df
        0xdc7
        0x1b91
        0x373f
        0x6e81
        0xdd0f
        0x1ba25
        0x3744b
        0x6e897
        0xdd14f
        0x1ba2a3
        0x37454b
        0x6e8a99
        0xdd1563
        0x1ba2ac7
        0x374559b
        0x6e8ab8b
        0xdd1572b
        0x1ba2ae79
        0x37455d1b
        0x6e8aba45
        0x3b9
        0x773
        0xeed
        0x1ddb
        0x3bb7
        0x7771
        0xeef1
        0x1ddeb
        0x3bbdf
        0x777bf
        0xeef85
        0x1ddf13
        0x3bbe4d
        0x777cad
        0xeef96f
        0x1ddf2f3
        0x3bbe5ed
        0x777cbdb
        0xeef97cb
        0x1ddf2f9b
        0x3bbe5f3b
        0x777cbe79
        0x40f
        0x821
        0x1051
        0x20ab
        0x4159
        0x82b5
        0x1056b
        0x20add
        0x415c1
        0x82bb9
        0x105785
        0x20af19
        0x415e3b
        0x82bc79
        0x10578f7
        0x20af203
        0x415e415
        0x82bc82d
        0x1057909f
        0x20af2147
        0x415e428f
        0x1f
        0x43
        0x89
        0x115
        0x22d
        0x45d
        0x8bd
        0x1181
        0x2303
        0x4609
        0x8c17
        0x1183d
        0x2307b
        0x460fd
        0x8c201
        0x118411
        0x230833
        0x461069
        0x8c20e1
        0x11841cb
        0x2308397
        0x461075b    # 2.6452E-36f
        0x8c20ecb
        0x11841da5
        0x23083b61
        0x461076c7
        0x257
        0x4b1
        0x96b
        0x12df
        0x25cd
        0x4bad
        0x975b
        0x12ec5
        0x25d93
        0x4bb41
        0x9768b
        0x12ed29
        0x25da59
        0x4bb4b3
        0x976975
        0x12ed2ef
        0x25da5ef
        0x4bb4bed
        0x97697dd
        0x12ed2fbd
        0x25da5f7b
        0x4bb4bf6b    # 2.3690966E7f
        0x137
        0x277
        0x4fd
        0x9fd
        0x13ff
        0x2803
        0x501b
        0xa039
        0x14075
        0x280f9
        0x50215
        0xa042d
        0x140863
        0x2810e1
        0x5021c9
        0xa04395
        0x1408739
        0x2810e79
        0x5021d05
        0xa043a0b
        0x14087417    # 6.88914E-27f
        0x2810e841
        0x5021d089
        0x3
        0x7
        0x11
        0x25
        0x4f
        0xa3
        0x14b
        0x2a1
        0x551
        0xaa9
        0x155f
        0x2ac5
        0x5597
        0xab4d
        0x156a7
        0x2ad57
        0x55ab3
        0xab57b
        0x156af9
        0x2ad607
        0x55ac41
        0xab5893
        0x156b12f
        0x2ad6285
        0x55ac519
        0xab58a35
        0x156b14a3
        0x2ad62961
        0x55ac52c5
        0x2b
        0x59
        0xb3
        0x167
        0x2cf
        0x59f
        0xb3f
        0x1693
        0x2d3b
        0x5a77
        0xb4f7
        0x169f1
        0x2d3eb
        0x5a7e5
        0xb4fd9
        0x169fd3
        0x2d3fad
        0x5a7f87
        0xb4ff1f
        0x169fe4d
        0x2d3fca1
        0x5a7f95b
        0xb4ff2b9
        0x169fe58d
        0x2d3fcb1b
        0x5a7f9637
        0x17b
        0x2f9
        0x5f3
        0xbe9
        0x17d5
        0x2fab
        0x5f57
        0xbeb1
        0x17d71
        0x2faef
        0x5f5f7
        0xbebf5
        0x17d7f3
        0x2fb009
        0x5f6029
        0xbec0b1
        0x17d8195
        0x2fb0337
        0x5f60687
        0xbec0d15
        0x17d81a33
        0x2fb03481
        0x5f606903
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 119
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    const/16 v0, 0x25

    .line 120
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    new-array v1, v0, [J

    .line 122
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    new-array v0, v0, [I

    .line 123
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    .line 128
    iput v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    const/16 v0, 0x25

    new-array v1, v0, [J

    .line 129
    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    new-array v0, v0, [I

    .line 130
    iput-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    const/16 v3, 0x20

    ushr-long v3, p1, v3

    xor-long/2addr v3, p1

    long-to-int v3, v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    .line 134
    array-length v4, v1

    rem-int/2addr v3, v4

    .line 135
    aput-wide p1, v1, v3

    .line 136
    aput p3, v0, v3

    const/16 p1, 0x24

    .line 137
    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 138
    iput v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    return-void
.end method

.method private insertKey(J)I
    .locals 11

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 432
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v2, v1

    rem-int v2, v0, v2

    .line 433
    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v4

    .line 435
    :goto_0
    iput-boolean v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    if-nez v3, :cond_1

    .line 438
    iput-boolean v7, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 440
    aput-wide p1, v1, v2

    return v2

    .line 445
    :cond_1
    aget-wide v8, v1, v2

    cmp-long v3, v8, p1

    if-nez v3, :cond_2

    neg-int p1, v2

    :goto_1
    sub-int/2addr p1, v7

    return p1

    .line 453
    :cond_2
    array-length v1, v1

    add-int/lit8 v3, v1, -0x2

    .line 454
    rem-int/2addr v0, v3

    add-int/2addr v0, v7

    move v3, v2

    :goto_2
    sub-int/2addr v3, v0

    if-gez v3, :cond_3

    add-int/2addr v3, v1

    .line 466
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    aget-wide v9, v8, v3

    cmp-long v9, v9, v5

    if-eqz v9, :cond_4

    move v9, v7

    goto :goto_3

    :cond_4
    move v9, v4

    :goto_3
    if-nez v9, :cond_5

    .line 470
    iput-boolean v7, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 472
    aput-wide p1, v8, v3

    return v3

    .line 476
    :cond_5
    aget-wide v8, v8, v3

    cmp-long v8, v8, p1

    if-nez v8, :cond_6

    neg-int p1, v3

    goto :goto_1

    :cond_6
    if-eq v3, v2, :cond_7

    goto :goto_2

    .line 484
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No free or removed slots available. Key set full?!!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static nextPrime(I)I
    .locals 1

    .line 94
    sget v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->largestPrime:I

    if-lt p0, v0, :cond_0

    return v0

    .line 97
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->primeCapacities:[I

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_1

    neg-int p0, p0

    add-int/lit8 p0, p0, -0x1

    .line 103
    :cond_1
    aget p0, v0, p0

    return p0
.end method

.method private rehash(I)V
    .locals 7

    .line 324
    iget v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    iget v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    if-le v0, v1, :cond_0

    shl-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->nextPrime(I)I

    move-result p1

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v1, v0

    .line 329
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 331
    new-array v3, p1, [J

    iput-object v3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 332
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_2

    .line 335
    aget-wide v3, v0, p1

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    invoke-direct {p0, v3, v4}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->insertKey(J)I

    move-result v3

    aget v4, v2, p1

    aput v4, v1, v3

    :cond_1
    move v1, p1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public forEachEntry(Ljava/util/function/BiFunction;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 384
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 385
    array-length v2, v0

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_0

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public get(J)I
    .locals 11

    .line 345
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v1, v0

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    xor-long/2addr v2, p1

    long-to-int v2, v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    .line 347
    rem-int v1, v2, v1

    .line 348
    aget-wide v3, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, -0x1

    if-nez v7, :cond_0

    return v8

    :cond_0
    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 355
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    aget p1, p1, v1

    return p1

    .line 359
    :cond_1
    array-length v0, v0

    add-int/lit8 v3, v0, -0x2

    .line 360
    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :cond_2
    sub-int/2addr v3, v2

    if-gez v3, :cond_3

    add-int/2addr v3, v0

    .line 368
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    aget-wide v9, v4, v3

    cmp-long v7, v9, v5

    if-nez v7, :cond_4

    return v8

    .line 374
    :cond_4
    aget-wide v9, v4, v3

    cmp-long v4, p1, v9

    if-nez v4, :cond_5

    .line 375
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    aget p1, p1, v3

    return p1

    :cond_5
    if-ne v3, v1, :cond_2

    return v8
.end method

.method public put(JI)V
    .locals 12

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v2, v1

    rem-int v2, v0, v2

    .line 147
    aget-wide v3, v1, v2

    const/4 v5, 0x0

    .line 149
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    const/4 v9, 0x1

    if-nez v8, :cond_0

    .line 152
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 154
    aput-wide p1, v1, v2

    goto :goto_2

    :cond_0
    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    neg-int p1, v2

    :goto_0
    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    .line 162
    :cond_1
    array-length v1, v1

    add-int/lit8 v3, v1, -0x2

    .line 163
    rem-int/2addr v0, v3

    add-int/2addr v0, v9

    move v3, v2

    :cond_2
    sub-int/2addr v3, v0

    if-gez v3, :cond_3

    add-int/2addr v3, v1

    .line 174
    :cond_3
    iget-object v4, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    aget-wide v10, v4, v3

    cmp-long v8, v10, v6

    if-nez v8, :cond_4

    .line 178
    iput-boolean v9, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 179
    aput-wide p1, v4, v3

    goto :goto_1

    :cond_4
    cmp-long v4, v10, p1

    if-nez v4, :cond_5

    neg-int p1, v3

    goto :goto_0

    :cond_5
    if-ne v3, v2, :cond_2

    :goto_1
    move v2, v3

    :goto_2
    if-gez v2, :cond_6

    neg-int p1, v2

    add-int/lit8 v2, p1, -0x1

    goto :goto_3

    :cond_6
    move v5, v9

    .line 199
    :goto_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    aput p3, p1, v2

    if-eqz v5, :cond_c

    .line 202
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    if-eqz p1, :cond_7

    .line 203
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    sub-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 207
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    if-gt p1, p2, :cond_8

    iget p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    if-nez p3, :cond_c

    .line 212
    :cond_8
    iget-object p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length p3, p3

    if-le p1, p2, :cond_9

    shl-int/lit8 p1, p3, 0x1

    .line 213
    invoke-static {p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->nextPrime(I)I

    move-result p3

    .line 216
    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length p2, p1

    .line 219
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    .line 221
    new-array v1, p3, [J

    iput-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    .line 222
    new-array p3, p3, [I

    iput-object p3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    :goto_4
    add-int/lit8 p3, p2, -0x1

    if-lez p2, :cond_b

    .line 225
    aget-wide v1, p1, p3

    cmp-long p2, v1, v6

    if-eqz p2, :cond_a

    .line 226
    aget-wide v1, p1, p3

    .line 227
    invoke-direct {p0, v1, v2}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->insertKey(J)I

    move-result p2

    .line 228
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    aget v2, v0, p3

    aput v2, v1, p2

    :cond_a
    move p2, p3

    goto :goto_4

    .line 233
    :cond_b
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length p1, p1

    add-int/lit8 p2, p1, -0x1

    int-to-float p3, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    .line 235
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 236
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    :cond_c
    return-void
.end method

.method public putIfAbsent(JI)I
    .locals 11

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 246
    iget-object v1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v2, v1

    rem-int v2, v0, v2

    .line 247
    aget-wide v3, v1, v2

    const/4 v5, 0x0

    .line 249
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 252
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 254
    aput-wide p1, v1, v2

    goto :goto_2

    :cond_0
    cmp-long v1, v3, p1

    if-nez v1, :cond_1

    neg-int p1, v2

    :goto_0
    add-int/lit8 v2, p1, -0x1

    goto :goto_2

    :cond_1
    move v1, v2

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    rem-int v4, v0, v4

    add-int/2addr v4, v8

    sub-int/2addr v1, v4

    if-gez v1, :cond_3

    .line 272
    array-length v4, v3

    add-int/2addr v1, v4

    .line 274
    :cond_3
    aget-wide v9, v3, v1

    cmp-long v4, v9, v5

    if-nez v4, :cond_4

    .line 278
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    .line 279
    aput-wide p1, v3, v1

    goto :goto_1

    :cond_4
    cmp-long v3, v9, p1

    if-nez v3, :cond_5

    neg-int p1, v1

    goto :goto_0

    :cond_5
    if-ne v1, v2, :cond_2

    :goto_1
    move v2, v1

    :goto_2
    if-gez v2, :cond_6

    .line 295
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    neg-int p2, v2

    sub-int/2addr p2, v8

    aget p1, p1, p2

    return p1

    .line 298
    :cond_6
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->values:[I

    aput p3, p1, v2

    .line 300
    iget-boolean p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->consumeFreeSlot:Z

    if-eqz p1, :cond_7

    .line 301
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    sub-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    .line 305
    :cond_7
    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    if-gt p1, p2, :cond_8

    iget p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    if-nez p1, :cond_9

    .line 310
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length p1, p1

    .line 312
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->rehash(I)V

    .line 314
    iget-object p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->set:[J

    array-length p1, p1

    add-int/lit8 p2, p1, -0x1

    int-to-float v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 316
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->maxSize:I

    .line 317
    iget p2, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->free:I

    :cond_9
    return p3
.end method

.method public size()I
    .locals 1

    .line 417
    iget v0, p0, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    new-instance v1, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap$1;-><init>(Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/internal/trove/map/hash/TLongIntHashMap;->forEachEntry(Ljava/util/function/BiFunction;)Z

    const-string/jumbo v1, "}"

    .line 412
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
