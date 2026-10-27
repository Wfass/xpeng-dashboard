.class Lorg/apache/commons/compress/compressors/bzip2/BlockSort;
.super Ljava/lang/Object;
.source "BlockSort.java"


# static fields
.field private static final CLEARMASK:I = -0x200001

.field private static final DEPTH_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_SMALL_THRESH:I = 0xa

.field private static final FALLBACK_QSORT_STACK_SIZE:I = 0x64

.field private static final INCS:[I

.field private static final QSORT_STACK_SIZE:I = 0x3e8

.field private static final SETMASK:I = 0x200000

.field private static final SMALL_THRESH:I = 0x14

.field private static final STACK_SIZE:I = 0x3e8

.field private static final WORK_FACTOR:I = 0x1e


# instance fields
.field private eclass:[I

.field private firstAttempt:Z

.field private final ftab:[I

.field private final mainSort_bigDone:[Z

.field private final mainSort_copy:[I

.field private final mainSort_runningOrder:[I

.field private final quadrant:[C

.field private final stack_dd:[I

.field private final stack_hh:[I

.field private final stack_ll:[I

.field private workDone:I

.field private workLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 581
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0xd
        0x28
        0x79
        0x16c
        0x445
        0xcd0
        0x2671
        0x7354
        0x159fd
        0x40df8
        0xc29e9
        0x247dbc
    .end array-data
.end method

.method constructor <init>(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;)V
    .locals 2
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/16 v0, 0x3e8

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 133
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 134
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 136
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 137
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 138
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 140
    const v0, 0x10001

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 150
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->sfmap:[C

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 151
    return-void
.end method

.method private fallbackQSort3([I[III)V
    .locals 26
    .param p1, "fmap"    # [I
    .param p2, "eclass"    # [I
    .param p3, "loSt"    # I
    .param p4, "hiSt"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 348
    const-wide/16 v3, 0x0

    .line 349
    .local v3, "r":J
    const/4 v5, 0x0

    .line 350
    .local v5, "sp":I
    add-int/lit8 v6, v5, 0x1

    .local v6, "sp":I
    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct {v0, v5, v7, v8}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 352
    .end local v5    # "sp":I
    :goto_0
    if-lez v6, :cond_c

    .line 353
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "sp":I
    .restart local v5    # "sp":I
    invoke-direct {v0, v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpop(I)[I

    move-result-object v9

    .line 354
    .local v9, "s":[I
    const/4 v6, 0x0

    aget v10, v9, v6

    .local v10, "lo":I
    const/4 v11, 0x1

    aget v12, v9, v11

    .line 356
    .local v12, "hi":I
    sub-int v6, v12, v10

    const/16 v13, 0xa

    if-ge v6, v13, :cond_0

    .line 357
    invoke-direct {v0, v1, v2, v10, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSimpleSort([I[III)V

    .line 358
    nop

    .line 352
    move v6, v5

    goto :goto_0

    .line 368
    :cond_0
    const-wide/16 v13, 0x1dc5

    mul-long/2addr v13, v3

    const-wide/16 v15, 0x1

    add-long/2addr v13, v15

    const-wide/32 v17, 0x8000

    rem-long v13, v13, v17

    .line 369
    .end local v3    # "r":J
    .local v13, "r":J
    const-wide/16 v3, 0x3

    rem-long v17, v13, v3

    .line 371
    .local v17, "r3":J
    const-wide/16 v3, 0x0

    cmp-long v3, v17, v3

    if-nez v3, :cond_1

    .line 372
    aget v3, v1, v10

    aget v3, v2, v3

    int-to-long v3, v3

    .local v3, "med":J
    :goto_1
    goto :goto_2

    .line 373
    .end local v3    # "med":J
    :cond_1
    cmp-long v3, v17, v15

    if-nez v3, :cond_2

    .line 374
    add-int v3, v10, v12

    ushr-int/2addr v3, v11

    aget v3, v1, v3

    aget v3, v2, v3

    int-to-long v3, v3

    goto :goto_1

    .line 376
    :cond_2
    aget v3, v1, v12

    aget v3, v2, v3

    int-to-long v3, v3

    .line 379
    .restart local v3    # "med":J
    :goto_2
    move v6, v10

    .local v6, "ltLo":I
    move v15, v10

    .line 380
    .local v15, "unLo":I
    move/from16 v16, v12

    .local v16, "gtHi":I
    move v11, v6

    move v6, v12

    .line 386
    .local v6, "unHi":I
    .local v11, "ltLo":I
    :goto_3
    if-le v15, v6, :cond_3

    .line 387
    nop

    .line 401
    move/from16 v21, v6

    goto :goto_4

    .line 389
    :cond_3
    aget v20, v1, v15

    aget v20, v2, v20

    move/from16 v21, v6

    long-to-int v6, v3

    .end local v6    # "unHi":I
    .local v21, "unHi":I
    sub-int v20, v20, v6

    .line 390
    .local v20, "n":I
    if-nez v20, :cond_4

    .line 391
    invoke-direct {v0, v1, v15, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 392
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    .line 393
    nop

    .line 380
    move/from16 v6, v21

    goto :goto_3

    .line 395
    :cond_4
    if-lez v20, :cond_b

    .line 396
    nop

    .line 401
    .end local v20    # "n":I
    .end local v21    # "unHi":I
    .restart local v6    # "unHi":I
    :goto_4
    move/from16 v7, v16

    move/from16 v6, v21

    .end local v16    # "gtHi":I
    .local v7, "gtHi":I
    :goto_5
    if-le v15, v6, :cond_5

    .line 402
    goto :goto_7

    .line 404
    :cond_5
    aget v16, v1, v6

    aget v16, v2, v16

    long-to-int v2, v3

    sub-int v16, v16, v2

    .line 405
    .local v16, "n":I
    if-nez v16, :cond_6

    .line 406
    invoke-direct {v0, v1, v6, v7}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 407
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    .line 408
    nop

    .line 401
    .end local v16    # "n":I
    :goto_6
    move-object/from16 v2, p2

    goto :goto_5

    .line 410
    .restart local v16    # "n":I
    :cond_6
    if-gez v16, :cond_a

    .line 411
    nop

    .line 415
    .end local v16    # "n":I
    :goto_7
    if-le v15, v6, :cond_9

    .line 416
    nop

    .line 421
    if-ge v7, v11, :cond_7

    .line 422
    nop

    .line 352
    .end local v5    # "sp":I
    .end local v7    # "gtHi":I
    .end local v9    # "s":[I
    .end local v10    # "lo":I
    .end local v11    # "ltLo":I
    .end local v12    # "hi":I
    .end local v13    # "r":J
    .end local v15    # "unLo":I
    .end local v17    # "r3":J
    .local v3, "r":J
    .local v6, "sp":I
    :goto_8
    move v6, v5

    move-wide v3, v13

    move-object/from16 v2, p2

    move/from16 v7, p3

    goto/16 :goto_0

    .line 425
    .local v3, "med":J
    .restart local v5    # "sp":I
    .local v6, "unHi":I
    .restart local v7    # "gtHi":I
    .restart local v9    # "s":[I
    .restart local v10    # "lo":I
    .restart local v11    # "ltLo":I
    .restart local v12    # "hi":I
    .restart local v13    # "r":J
    .restart local v15    # "unLo":I
    .restart local v17    # "r3":J
    :cond_7
    sub-int v2, v11, v10

    move-wide/from16 v22, v3

    sub-int v3, v15, v11

    .end local v3    # "med":J
    .local v22, "med":J
    invoke-direct {v0, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v2

    .line 426
    .local v2, "n":I
    sub-int v3, v15, v2

    invoke-direct {v0, v1, v10, v3, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 427
    sub-int v3, v12, v7

    sub-int v4, v7, v6

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fmin(II)I

    move-result v3

    .line 428
    .local v3, "m":I
    add-int/lit8 v4, v6, 0x1

    sub-int v16, v12, v3

    move/from16 v24, v2

    const/16 v19, 0x1

    add-int/lit8 v2, v16, 0x1

    .end local v2    # "n":I
    .local v24, "n":I
    invoke-direct {v0, v1, v4, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fvswap([IIII)V

    .line 430
    add-int v2, v10, v15

    sub-int/2addr v2, v11

    add-int/lit8 v2, v2, -0x1

    .line 431
    .end local v24    # "n":I
    .restart local v2    # "n":I
    sub-int v4, v7, v6

    sub-int v4, v12, v4

    add-int/lit8 v4, v4, 0x1

    .line 433
    .end local v3    # "m":I
    .local v4, "m":I
    sub-int v3, v2, v10

    move/from16 v25, v7

    sub-int v7, v12, v4

    .end local v7    # "gtHi":I
    .local v25, "gtHi":I
    if-le v3, v7, :cond_8

    .line 434
    add-int/lit8 v3, v5, 0x1

    .local v3, "sp":I
    invoke-direct {v0, v5, v10, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 435
    .end local v5    # "sp":I
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "sp":I
    invoke-direct {v0, v3, v4, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .end local v3    # "sp":I
    goto :goto_9

    .line 437
    :cond_8
    add-int/lit8 v3, v5, 0x1

    .restart local v3    # "sp":I
    invoke-direct {v0, v5, v4, v12}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 438
    .end local v5    # "sp":I
    add-int/lit8 v5, v3, 0x1

    .restart local v5    # "sp":I
    invoke-direct {v0, v3, v10, v2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fpush(III)V

    .line 440
    .end local v3    # "sp":I
    .end local v4    # "m":I
    .end local v9    # "s":[I
    .end local v17    # "r3":J
    .end local v22    # "med":J
    :goto_9
    goto :goto_8

    .line 418
    .end local v2    # "n":I
    .end local v25    # "gtHi":I
    .local v3, "med":J
    .restart local v7    # "gtHi":I
    .restart local v9    # "s":[I
    .restart local v17    # "r3":J
    :cond_9
    move-wide/from16 v22, v3

    move/from16 v25, v7

    const/16 v19, 0x1

    .end local v3    # "med":J
    .end local v7    # "gtHi":I
    .restart local v22    # "med":J
    .restart local v25    # "gtHi":I
    invoke-direct {v0, v1, v15, v6}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 380
    move/from16 v16, v25

    goto :goto_a

    .line 413
    .end local v22    # "med":J
    .end local v25    # "gtHi":I
    .restart local v3    # "med":J
    .restart local v7    # "gtHi":I
    .restart local v16    # "n":I
    :cond_a
    move-wide/from16 v22, v3

    move/from16 v25, v7

    const/16 v19, 0x1

    .end local v3    # "med":J
    .end local v7    # "gtHi":I
    .restart local v22    # "med":J
    .restart local v25    # "gtHi":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 398
    .end local v6    # "unHi":I
    .end local v22    # "med":J
    .end local v25    # "gtHi":I
    .restart local v3    # "med":J
    .local v16, "gtHi":I
    .restart local v20    # "n":I
    .restart local v21    # "unHi":I
    :cond_b
    move-wide/from16 v22, v3

    const/16 v19, 0x1

    .end local v3    # "med":J
    .restart local v22    # "med":J
    add-int/lit8 v15, v15, 0x1

    .line 380
    move/from16 v6, v21

    .end local v20    # "n":I
    .end local v21    # "unHi":I
    .end local v22    # "med":J
    .restart local v3    # "med":J
    .restart local v6    # "unHi":I
    :goto_a
    move-object/from16 v2, p2

    move/from16 v7, p3

    goto/16 :goto_3

    .line 441
    .end local v5    # "sp":I
    .end local v9    # "s":[I
    .end local v10    # "lo":I
    .end local v11    # "ltLo":I
    .end local v12    # "hi":I
    .end local v13    # "r":J
    .end local v15    # "unLo":I
    .end local v16    # "gtHi":I
    .end local v17    # "r3":J
    .local v3, "r":J
    .local v6, "sp":I
    :cond_c
    return-void
.end method

.method private fallbackSimpleSort([I[III)V
    .locals 6
    .param p1, "fmap"    # [I
    .param p2, "eclass"    # [I
    .param p3, "lo"    # I
    .param p4, "hi"    # I

    .line 271
    if-ne p3, p4, :cond_0

    .line 272
    return-void

    .line 276
    :cond_0
    sub-int v0, p4, p3

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 277
    add-int/lit8 v0, p4, -0x4

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_2

    .line 278
    aget v1, p1, v0

    .line 279
    .local v1, "tmp":I
    aget v2, p2, v1

    .line 280
    .local v2, "ec_tmp":I
    add-int/lit8 v3, v0, 0x4

    .local v3, "j":I
    :goto_1
    if-gt v3, p4, :cond_1

    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_1

    .line 282
    add-int/lit8 v4, v3, -0x4

    aget v5, p1, v3

    aput v5, p1, v4

    .line 281
    add-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 284
    :cond_1
    add-int/lit8 v4, v3, -0x4

    aput v1, p1, v4

    .line 277
    .end local v1    # "tmp":I
    .end local v2    # "ec_tmp":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 288
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v0, p4, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, p3, :cond_4

    .line 289
    aget v1, p1, v0

    .line 290
    .restart local v1    # "tmp":I
    aget v2, p2, v1

    .line 291
    .restart local v2    # "ec_tmp":I
    add-int/lit8 v3, v0, 0x1

    .restart local v3    # "j":I
    :goto_3
    if-gt v3, p4, :cond_3

    aget v4, p1, v3

    aget v4, p2, v4

    if-le v2, v4, :cond_3

    .line 292
    add-int/lit8 v4, v3, -0x1

    aget v5, p1, v3

    aput v5, p1, v4

    .line 291
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 294
    :cond_3
    add-int/lit8 v4, v3, -0x1

    aput v1, p1, v4

    .line 288
    .end local v1    # "tmp":I
    .end local v2    # "ec_tmp":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 296
    .end local v0    # "i":I
    .end local v3    # "j":I
    :cond_4
    return-void
.end method

.method private fmin(II)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 320
    if-ge p1, p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private fpop(I)[I
    .locals 3
    .param p1, "sp"    # I

    .line 329
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aget v1, v1, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method private fpush(III)V
    .locals 1
    .param p1, "sp"    # I
    .param p2, "lz"    # I
    .param p3, "hz"    # I

    .line 324
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    aput p2, v0, p1

    .line 325
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    aput p3, v0, p1

    .line 326
    return-void
.end method

.method private fswap([III)V
    .locals 2
    .param p1, "fmap"    # [I
    .param p2, "zz1"    # I
    .param p3, "zz2"    # I

    .line 304
    aget v0, p1, p2

    .line 305
    .local v0, "zztmp":I
    aget v1, p1, p3

    aput v1, p1, p2

    .line 306
    aput v0, p1, p3

    .line 307
    return-void
.end method

.method private fvswap([IIII)V
    .locals 0
    .param p1, "fmap"    # [I
    .param p2, "yyp1"    # I
    .param p3, "yyp2"    # I
    .param p4, "yyn"    # I

    .line 313
    :goto_0
    if-lez p4, :cond_0

    .line 314
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fswap([III)V

    .line 315
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 317
    :cond_0
    return-void
.end method

.method private getEclass()[I
    .locals 1

    .line 449
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->eclass:[I

    :goto_0
    return-object v0
.end method

.method private mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V
    .locals 25
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "loSt"    # I
    .param p3, "hiSt"    # I
    .param p4, "dSt"    # I
    .param p5, "last"    # I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 808
    iget-object v8, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_ll:[I

    .line 809
    .local v8, "stack_ll":[I
    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_hh:[I

    .line 810
    .local v9, "stack_hh":[I
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->stack_dd:[I

    .line 811
    .local v10, "stack_dd":[I
    iget-object v11, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 812
    .local v11, "fmap":[I
    iget-object v12, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 814
    .local v12, "block":[B
    const/4 v0, 0x0

    aput p2, v8, v0

    .line 815
    aput p3, v9, v0

    .line 816
    aput p4, v10, v0

    .line 818
    const/16 v16, 0x1

    move/from16 v0, v16

    .local v0, "sp":I
    :goto_0
    add-int/lit8 v17, v0, -0x1

    .end local v0    # "sp":I
    .local v17, "sp":I
    if-ltz v17, :cond_c

    .line 819
    aget v5, v8, v17

    .line 820
    .local v5, "lo":I
    aget v18, v9, v17

    .line 821
    .local v18, "hi":I
    aget v4, v10, v17

    .line 823
    .local v4, "d":I
    sub-int v0, v18, v5

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    const/16 v0, 0xa

    if-le v4, v0, :cond_0

    goto/16 :goto_7

    .line 828
    :cond_0
    add-int/lit8 v0, v4, 0x1

    .line 829
    .local v0, "d1":I
    aget v1, v11, v5

    add-int/2addr v1, v0

    aget-byte v1, v12, v1

    aget v2, v11, v18

    add-int/2addr v2, v0

    aget-byte v2, v12, v2

    add-int v3, v5, v18

    ushr-int/lit8 v3, v3, 0x1

    aget v3, v11, v3

    add-int/2addr v3, v0

    aget-byte v3, v12, v3

    invoke-static {v1, v2, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->med3(BBB)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 832
    .local v1, "med":I
    move v2, v5

    .line 833
    .local v2, "unLo":I
    move/from16 v3, v18

    .line 834
    .local v3, "unHi":I
    move/from16 v19, v5

    .line 835
    .local v19, "ltLo":I
    move v13, v3

    move/from16 v14, v19

    move v3, v2

    move/from16 v2, v18

    .line 838
    .end local v19    # "ltLo":I
    .local v2, "gtHi":I
    .local v3, "unLo":I
    .local v13, "unHi":I
    .local v14, "ltLo":I
    :goto_1
    if-gt v3, v13, :cond_2

    .line 839
    aget v19, v11, v3

    add-int v19, v19, v0

    move/from16 v20, v2

    aget-byte v2, v12, v19

    .end local v2    # "gtHi":I
    .local v20, "gtHi":I
    and-int/lit16 v2, v2, 0xff

    sub-int/2addr v2, v1

    .line 841
    .local v2, "n":I
    if-nez v2, :cond_1

    .line 842
    aget v19, v11, v3

    .line 843
    .local v19, "temp":I
    add-int/lit8 v21, v3, 0x1

    .local v21, "unLo":I
    aget v22, v11, v14

    aput v22, v11, v3

    .line 844
    .end local v3    # "unLo":I
    add-int/lit8 v3, v14, 0x1

    .local v3, "ltLo":I
    aput v19, v11, v14

    .line 845
    .end local v14    # "ltLo":I
    .end local v19    # "temp":I
    nop

    .line 850
    move v14, v3

    move/from16 v3, v21

    goto :goto_2

    .line 845
    .end local v21    # "unLo":I
    .local v3, "unLo":I
    .restart local v14    # "ltLo":I
    :cond_1
    if-gez v2, :cond_3

    .line 846
    add-int/lit8 v3, v3, 0x1

    .line 850
    .end local v2    # "n":I
    :goto_2
    nop

    .line 835
    move/from16 v2, v20

    goto :goto_1

    .line 852
    .end local v20    # "gtHi":I
    .local v2, "gtHi":I
    :cond_2
    move/from16 v20, v2

    .end local v2    # "gtHi":I
    .restart local v20    # "gtHi":I
    :cond_3
    move/from16 v2, v20

    .end local v20    # "gtHi":I
    .restart local v2    # "gtHi":I
    :goto_3
    if-gt v3, v13, :cond_5

    .line 853
    aget v19, v11, v13

    add-int v19, v19, v0

    aget-byte v15, v12, v19

    and-int/lit16 v15, v15, 0xff

    sub-int/2addr v15, v1

    .line 855
    .local v15, "n":I
    if-nez v15, :cond_4

    .line 856
    aget v19, v11, v13

    .line 857
    .restart local v19    # "temp":I
    add-int/lit8 v20, v13, -0x1

    .local v20, "unHi":I
    aget v21, v11, v2

    aput v21, v11, v13

    .line 858
    .end local v13    # "unHi":I
    add-int/lit8 v13, v2, -0x1

    .local v13, "gtHi":I
    aput v19, v11, v2

    .line 859
    .end local v2    # "gtHi":I
    .end local v19    # "temp":I
    nop

    .line 864
    move v2, v13

    move/from16 v13, v20

    goto :goto_4

    .line 859
    .end local v20    # "unHi":I
    .restart local v2    # "gtHi":I
    .local v13, "unHi":I
    :cond_4
    if-lez v15, :cond_5

    .line 860
    add-int/lit8 v13, v13, -0x1

    .line 864
    .end local v15    # "n":I
    :goto_4
    goto :goto_3

    .line 866
    :cond_5
    if-gt v3, v13, :cond_6

    .line 867
    aget v15, v11, v3

    .line 868
    .local v15, "temp":I
    add-int/lit8 v19, v3, 0x1

    .local v19, "unLo":I
    aget v20, v11, v13

    aput v20, v11, v3

    .line 869
    .end local v3    # "unLo":I
    add-int/lit8 v3, v13, -0x1

    .local v3, "unHi":I
    aput v15, v11, v13

    .line 870
    .end local v13    # "unHi":I
    .end local v15    # "temp":I
    nop

    .line 835
    move v13, v3

    move/from16 v3, v19

    goto :goto_1

    .line 875
    .end local v19    # "unLo":I
    .local v3, "unLo":I
    .restart local v13    # "unHi":I
    :cond_6
    if-ge v2, v14, :cond_7

    .line 876
    aput v5, v8, v17

    .line 877
    aput v18, v9, v17

    .line 878
    aput v0, v10, v17

    .line 879
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 881
    :cond_7
    sub-int v15, v14, v5

    move/from16 v23, v1

    sub-int v1, v3, v14

    .end local v1    # "med":I
    .local v23, "med":I
    if-ge v15, v1, :cond_8

    sub-int v1, v14, v5

    goto :goto_5

    :cond_8
    sub-int v1, v3, v14

    .line 883
    .local v1, "n":I
    :goto_5
    sub-int v15, v3, v1

    invoke-static {v11, v5, v15, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 884
    sub-int v15, v18, v2

    move/from16 v24, v1

    sub-int v1, v2, v13

    .end local v1    # "n":I
    .local v24, "n":I
    if-ge v15, v1, :cond_9

    sub-int v1, v18, v2

    goto :goto_6

    :cond_9
    sub-int v1, v2, v13

    .line 886
    .local v1, "m":I
    :goto_6
    sub-int v15, v18, v1

    add-int/lit8 v15, v15, 0x1

    invoke-static {v11, v3, v15, v1}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->vswap([IIII)V

    .line 888
    add-int v15, v5, v3

    sub-int/2addr v15, v14

    add-int/lit8 v15, v15, -0x1

    .line 889
    .end local v24    # "n":I
    .local v15, "n":I
    sub-int v19, v2, v13

    sub-int v19, v18, v19

    add-int/lit8 v19, v19, 0x1

    .line 891
    .end local v1    # "m":I
    .local v19, "m":I
    aput v5, v8, v17

    .line 892
    aput v15, v9, v17

    .line 893
    aput v4, v10, v17

    .line 894
    add-int/lit8 v17, v17, 0x1

    .line 896
    add-int/lit8 v1, v15, 0x1

    aput v1, v8, v17

    .line 897
    add-int/lit8 v1, v19, -0x1

    aput v1, v9, v17

    .line 898
    aput v0, v10, v17

    .line 899
    add-int/lit8 v17, v17, 0x1

    .line 901
    aput v19, v8, v17

    .line 902
    aput v18, v9, v17

    .line 903
    aput v4, v10, v17

    .line 904
    add-int/lit8 v17, v17, 0x1

    .end local v0    # "d1":I
    .end local v2    # "gtHi":I
    .end local v3    # "unLo":I
    .end local v4    # "d":I
    .end local v5    # "lo":I
    .end local v13    # "unHi":I
    .end local v14    # "ltLo":I
    .end local v15    # "n":I
    .end local v18    # "hi":I
    .end local v19    # "m":I
    .end local v23    # "med":I
    goto :goto_8

    .line 824
    .restart local v4    # "d":I
    .restart local v5    # "lo":I
    .restart local v18    # "hi":I
    :cond_a
    :goto_7
    move-object v0, v6

    move-object v1, v7

    move v2, v5

    move/from16 v3, v18

    move v13, v4

    .end local v4    # "d":I
    .local v13, "d":I
    move v14, v5

    move/from16 v5, p5

    .end local v5    # "lo":I
    .local v14, "lo":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    return-void

    .line 907
    .end local v13    # "d":I
    .end local v14    # "lo":I
    .end local v17    # "sp":I
    .end local v18    # "hi":I
    .local v0, "sp":I
    :cond_b
    :goto_8
    move/from16 v0, v17

    goto/16 :goto_0

    .line 908
    .end local v0    # "sp":I
    :cond_c
    return-void
.end method

.method private mainSimpleSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)Z
    .locals 27
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "lo"    # I
    .param p3, "hi"    # I
    .param p4, "d"    # I
    .param p5, "lastShadow"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    .line 598
    sub-int v5, v3, p2

    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 599
    .local v5, "bigN":I
    const/4 v8, 0x2

    if-ge v5, v8, :cond_1

    .line 600
    iget-boolean v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v8, :cond_0

    iget v8, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v9, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return v6

    .line 603
    :cond_1
    const/4 v8, 0x0

    .line 604
    .local v8, "hp":I
    :goto_1
    sget-object v9, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v9, v9, v8

    if-ge v9, v5, :cond_2

    .line 605
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 608
    :cond_2
    iget-object v9, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 609
    .local v9, "fmap":[I
    iget-object v10, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 610
    .local v10, "quadrant":[C
    iget-object v11, v1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 611
    .local v11, "block":[B
    add-int/lit8 v12, p5, 0x1

    .line 612
    .local v12, "lastPlus1":I
    iget-boolean v13, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 613
    .local v13, "firstAttemptShadow":Z
    iget v14, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 614
    .local v14, "workLimitShadow":I
    iget v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 619
    .local v7, "workDoneShadow":I
    :goto_2
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_19

    .line 620
    sget-object v16, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->INCS:[I

    aget v16, v16, v8

    .line 621
    .local v16, "h":I
    add-int v17, p2, v16

    add-int/lit8 v1, v17, -0x1

    .line 623
    .local v1, "mj":I
    add-int v17, p2, v16

    .local v17, "i":I
    :goto_3
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    move/from16 v6, v18

    if-gt v6, v3, :cond_18

    .line 625
    .end local v18    # "i":I
    .local v6, "i":I
    const/16 v17, 0x3

    .local v17, "k":I
    :goto_4
    if-gt v6, v3, :cond_16

    add-int/lit8 v17, v17, -0x1

    if-ltz v17, :cond_16

    .line 626
    aget v18, v9, v6

    .line 627
    .local v18, "v":I
    add-int v19, v18, p4

    .line 628
    .local v19, "vd":I
    move/from16 v20, v6

    .line 640
    .local v20, "j":I
    const/16 v21, 0x0

    .line 641
    .local v21, "onceRunned":Z
    move/from16 v22, v7

    const/4 v7, 0x0

    .line 644
    .local v7, "a":I
    .local v22, "workDoneShadow":I
    :goto_5
    if-eqz v21, :cond_3

    .line 645
    aput v7, v9, v20

    .line 646
    sub-int v2, v20, v16

    move/from16 v20, v2

    if-gt v2, v1, :cond_4

    .line 647
    nop

    .line 762
    move/from16 v25, v1

    goto/16 :goto_8

    .line 650
    :cond_3
    const/4 v2, 0x1

    .line 653
    .end local v21    # "onceRunned":Z
    .local v2, "onceRunned":Z
    move/from16 v21, v2

    .end local v2    # "onceRunned":Z
    .restart local v21    # "onceRunned":Z
    :cond_4
    sub-int v2, v20, v16

    aget v7, v9, v2

    .line 654
    add-int v2, v7, p4

    .line 655
    .local v2, "i1":I
    move/from16 v23, v19

    .line 659
    .local v23, "i2":I
    add-int/lit8 v24, v2, 0x1

    move/from16 v25, v1

    aget-byte v1, v11, v24

    .end local v1    # "mj":I
    .local v25, "mj":I
    add-int/lit8 v24, v23, 0x1

    aget-byte v4, v11, v24

    if-ne v1, v4, :cond_14

    .line 660
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x2

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_13

    .line 661
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x3

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_12

    .line 662
    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x4

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_11

    .line 663
    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x5

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_10

    .line 664
    add-int/lit8 v2, v2, 0x6

    aget-byte v1, v11, v2

    add-int/lit8 v23, v23, 0x6

    aget-byte v4, v11, v23

    if-ne v1, v4, :cond_f

    .line 665
    move/from16 v1, p5

    .line 666
    .local v1, "x":I
    :goto_6
    if-lez v1, :cond_15

    .line 667
    add-int/lit8 v1, v1, -0x4

    .line 669
    add-int/lit8 v4, v2, 0x1

    aget-byte v4, v11, v4

    add-int/lit8 v24, v23, 0x1

    move/from16 v26, v1

    aget-byte v1, v11, v24

    .end local v1    # "x":I
    .local v26, "x":I
    if-ne v4, v1, :cond_e

    .line 670
    aget-char v1, v10, v2

    aget-char v4, v10, v23

    if-ne v1, v4, :cond_d

    .line 671
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x2

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_c

    .line 672
    add-int/lit8 v1, v2, 0x1

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x1

    aget-char v4, v10, v4

    if-ne v1, v4, :cond_b

    .line 673
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x3

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_a

    .line 674
    add-int/lit8 v1, v2, 0x2

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x2

    aget-char v4, v10, v4

    if-ne v1, v4, :cond_9

    .line 675
    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v11, v1

    add-int/lit8 v4, v23, 0x4

    aget-byte v4, v11, v4

    if-ne v1, v4, :cond_8

    .line 676
    add-int/lit8 v1, v2, 0x3

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x3

    aget-char v4, v10, v4

    if-ne v1, v4, :cond_7

    .line 677
    add-int/lit8 v2, v2, 0x4

    if-lt v2, v12, :cond_5

    .line 678
    sub-int/2addr v2, v12

    .line 680
    :cond_5
    add-int/lit8 v1, v23, 0x4

    .end local v23    # "i2":I
    .local v1, "i2":I
    if-lt v1, v12, :cond_6

    .line 681
    sub-int/2addr v1, v12

    .line 683
    .end local v1    # "i2":I
    .restart local v23    # "i2":I
    :cond_6
    move/from16 v23, v1

    add-int/lit8 v22, v22, 0x1

    .line 684
    nop

    .line 665
    move/from16 v1, v26

    goto :goto_6

    .line 685
    :cond_7
    add-int/lit8 v1, v2, 0x3

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x3

    aget-char v4, v10, v4

    if-le v1, v4, :cond_15

    .line 686
    goto/16 :goto_7

    .line 690
    :cond_8
    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x4

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 691
    goto/16 :goto_7

    .line 695
    :cond_9
    add-int/lit8 v1, v2, 0x2

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x2

    aget-char v4, v10, v4

    if-le v1, v4, :cond_15

    .line 696
    goto/16 :goto_7

    .line 700
    :cond_a
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x3

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 701
    goto/16 :goto_7

    .line 705
    :cond_b
    add-int/lit8 v1, v2, 0x1

    aget-char v1, v10, v1

    add-int/lit8 v4, v23, 0x1

    aget-char v4, v10, v4

    if-le v1, v4, :cond_15

    .line 706
    goto/16 :goto_7

    .line 710
    :cond_c
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x2

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 711
    goto/16 :goto_7

    .line 715
    :cond_d
    aget-char v1, v10, v2

    aget-char v4, v10, v23

    if-le v1, v4, :cond_15

    .line 716
    goto :goto_7

    .line 720
    :cond_e
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x1

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 721
    goto :goto_7

    .line 729
    .end local v26    # "x":I
    :cond_f
    aget-byte v1, v11, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v4, v11, v23

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 730
    goto :goto_7

    .line 733
    :cond_10
    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x5

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 734
    goto :goto_7

    .line 738
    :cond_11
    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x4

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 739
    goto :goto_7

    .line 743
    :cond_12
    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x3

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 744
    goto :goto_7

    .line 748
    :cond_13
    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x2

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 749
    goto :goto_7

    .line 753
    :cond_14
    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v11, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v4, v23, 0x1

    aget-byte v4, v11, v4

    and-int/lit16 v4, v4, 0xff

    if-le v1, v4, :cond_15

    .line 754
    nop

    .line 641
    .end local v2    # "i1":I
    .end local v23    # "i2":I
    :goto_7
    move/from16 v1, v25

    goto/16 :goto_5

    .line 762
    :cond_15
    :goto_8
    aput v18, v9, v20

    .line 625
    .end local v7    # "a":I
    .end local v18    # "v":I
    .end local v19    # "vd":I
    .end local v20    # "j":I
    .end local v21    # "onceRunned":Z
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v22

    move/from16 v1, v25

    goto/16 :goto_4

    .line 765
    .end local v17    # "k":I
    .end local v22    # "workDoneShadow":I
    .end local v25    # "mj":I
    .local v1, "mj":I
    .local v7, "workDoneShadow":I
    :cond_16
    move/from16 v25, v1

    .end local v1    # "mj":I
    .restart local v25    # "mj":I
    if-eqz v13, :cond_17

    if-gt v6, v3, :cond_17

    if-le v7, v14, :cond_17

    .line 767
    goto :goto_9

    .line 623
    :cond_17
    move/from16 v17, v6

    move/from16 v1, v25

    const/4 v6, 0x1

    goto/16 :goto_3

    .line 770
    .end local v6    # "i":I
    .end local v16    # "h":I
    .end local v25    # "mj":I
    :cond_18
    nop

    .line 614
    move-object/from16 v1, p1

    const/4 v6, 0x1

    goto/16 :goto_2

    .line 772
    :cond_19
    :goto_9
    iput v7, v0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 773
    if-eqz v13, :cond_1a

    if-le v7, v14, :cond_1a

    const/4 v15, 0x1

    goto :goto_a

    :cond_1a
    const/4 v15, 0x0

    :goto_a
    return v15
.end method

.method private static med3(BBB)B
    .locals 1
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 794
    if-ge p0, p1, :cond_1

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-ge p0, p2, :cond_3

    goto :goto_1

    :cond_1
    if-le p1, p2, :cond_2

    :goto_0
    move v0, p1

    goto :goto_2

    :cond_2
    if-le p0, p2, :cond_3

    :goto_1
    move v0, p2

    goto :goto_2

    :cond_3
    move v0, p0

    :goto_2
    return v0
.end method

.method private static vswap([IIII)V
    .locals 3
    .param p0, "fmap"    # [I
    .param p1, "p1"    # I
    .param p2, "p2"    # I
    .param p3, "n"    # I

    .line 785
    add-int/2addr p3, p1

    .line 786
    :goto_0
    if-ge p1, p3, :cond_0

    .line 787
    aget v0, p0, p1

    .line 788
    .local v0, "t":I
    add-int/lit8 v1, p1, 0x1

    .local v1, "p1":I
    aget v2, p0, p2

    aput v2, p0, p1

    .line 789
    .end local p1    # "p1":I
    add-int/lit8 p1, p2, 0x1

    .local p1, "p2":I
    aput v0, p0, p2

    .line 790
    .end local v0    # "t":I
    .end local p2    # "p2":I
    nop

    .line 786
    move p2, p1

    move p1, v1

    goto :goto_0

    .line 791
    .end local v1    # "p1":I
    .local p1, "p1":I
    .restart local p2    # "p2":I
    :cond_0
    return-void
.end method


# virtual methods
.method blockSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 3
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "last"    # I

    .line 154
    const/16 v0, 0x1e

    mul-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    .line 156
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 158
    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    .line 159
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 163
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    iget v2, p0, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    if-le v1, v2, :cond_1

    .line 164
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V

    .line 168
    :cond_1
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 169
    .local v1, "fmap":[I
    const/4 v2, -0x1

    iput v2, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 170
    nop

    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_3

    .line 171
    aget v2, v1, v0

    if-nez v2, :cond_2

    .line 172
    iput v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->origPtr:I

    .line 173
    goto :goto_2

    .line 170
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "i":I
    :cond_3
    :goto_2
    return-void
.end method

.method final fallbackSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 4
    .param p1, "data"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "last"    # I

    .line 187
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v2, p2, 0x1

    aget-byte v1, v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 188
    iget-object v0, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackSort([I[BI)V

    .line 189
    move v0, v2

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    nop

    .local v2, "i":I
    :goto_1
    move v0, v2

    .end local v2    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 v1, p2, 0x1

    if-ge v0, v1, :cond_2

    .line 193
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 194
    iget-object v1, p1, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    aput p2, v1, v0

    .line 195
    goto :goto_2

    .line 192
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 198
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method final fallbackSort([I[BI)V
    .locals 17
    .param p1, "fmap"    # [I
    .param p2, "block"    # [B
    .param p3, "nblock"    # I

    move-object/from16 v0, p1

    .line 472
    move/from16 v1, p3

    const/16 v2, 0x101

    new-array v3, v2, [I

    .line 476
    .local v3, "ftab":[I
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->getEclass()[I

    move-result-object v4

    .line 478
    .local v4, "eclass":[I
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 479
    aput v5, v4, v6

    .line 478
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 485
    :cond_0
    const/4 v5, 0x0

    .end local v6    # "i":I
    .local v5, "i":I
    :goto_1
    const/4 v6, 0x1

    if-ge v5, v1, :cond_1

    .line 486
    aget-byte v7, p2, v5

    and-int/lit16 v7, v7, 0xff

    aget v8, v3, v7

    add-int/2addr v8, v6

    aput v8, v3, v7

    .line 485
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 488
    :cond_1
    const/4 v5, 0x1

    :goto_2
    if-ge v5, v2, :cond_2

    .line 489
    aget v7, v3, v5

    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    add-int/2addr v7, v8

    aput v7, v3, v5

    .line 488
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 492
    :cond_2
    const/4 v2, 0x0

    .end local v5    # "i":I
    .local v2, "i":I
    :goto_3
    if-ge v2, v1, :cond_3

    .line 493
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    .line 494
    .local v5, "j":I
    aget v7, v3, v5

    sub-int/2addr v7, v6

    .line 495
    .local v7, "k":I
    aput v7, v3, v5

    .line 496
    aput v2, v0, v7

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 499
    .end local v5    # "j":I
    .end local v7    # "k":I
    :cond_3
    const/16 v5, 0x40

    add-int/2addr v5, v1

    .line 500
    .local v5, "nBhtab":I
    new-instance v7, Ljava/util/BitSet;

    invoke-direct {v7, v5}, Ljava/util/BitSet;-><init>(I)V

    .line 501
    .local v7, "bhtab":Ljava/util/BitSet;
    const/4 v2, 0x0

    :goto_4
    const/16 v8, 0x100

    if-ge v2, v8, :cond_4

    .line 502
    aget v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 512
    :cond_4
    const/4 v2, 0x0

    :goto_5
    const/16 v8, 0x20

    if-ge v2, v8, :cond_5

    .line 513
    const/4 v8, 0x2

    mul-int v9, v8, v2

    add-int/2addr v9, v1

    invoke-virtual {v7, v9}, Ljava/util/BitSet;->set(I)V

    .line 514
    mul-int/2addr v8, v2

    add-int/2addr v8, v1

    add-int/2addr v8, v6

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->clear(I)V

    .line 512
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 518
    :cond_5
    move v8, v2

    move v2, v6

    .line 521
    .local v2, "H":I
    .local v8, "i":I
    :cond_6
    const/4 v9, 0x0

    .line 522
    .local v9, "j":I
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v1, :cond_9

    .line 523
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 524
    move v9, v8

    .line 526
    :cond_7
    aget v10, v0, v8

    sub-int/2addr v10, v2

    .line 527
    .local v10, "k":I
    if-gez v10, :cond_8

    .line 528
    add-int/2addr v10, v1

    .line 530
    :cond_8
    aput v9, v4, v10

    .line 522
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 533
    .end local v10    # "k":I
    :cond_9
    const/4 v10, 0x0

    .line 534
    .local v10, "nNotDone":I
    const/4 v11, -0x1

    .line 538
    .local v11, "r":I
    :goto_7
    add-int/lit8 v12, v11, 0x1

    .line 539
    .local v12, "k":I
    invoke-virtual {v7, v12}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v12

    .line 540
    add-int/lit8 v13, v12, -0x1

    .line 541
    .local v13, "l":I
    if-lt v13, v1, :cond_a

    .line 542
    goto :goto_8

    .line 544
    :cond_a
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v7, v14}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v12

    .line 545
    add-int/lit8 v11, v12, -0x1

    .line 546
    if-lt v11, v1, :cond_c

    .line 547
    nop

    .line 567
    :goto_8
    mul-int/lit8 v2, v2, 0x2

    .line 568
    if-gt v2, v1, :cond_b

    if-nez v10, :cond_6

    .line 569
    nop

    .line 572
    :cond_b
    return-void

    .line 551
    :cond_c
    if-le v11, v13, :cond_f

    .line 552
    sub-int v14, v11, v13

    add-int/2addr v14, v6

    add-int/2addr v10, v14

    .line 553
    move-object/from16 v14, p0

    invoke-direct {v14, v0, v4, v13, v11}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->fallbackQSort3([I[III)V

    .line 556
    const/4 v15, -0x1

    .line 557
    .local v15, "cc":I
    move v8, v13

    move v6, v15

    .end local v15    # "cc":I
    .local v6, "cc":I
    :goto_9
    if-gt v8, v11, :cond_e

    .line 558
    aget v15, v0, v8

    aget v0, v4, v15

    .line 559
    .local v0, "cc1":I
    if-eq v6, v0, :cond_d

    .line 560
    invoke-virtual {v7, v8}, Ljava/util/BitSet;->set(I)V

    .line 561
    move v6, v0

    .line 557
    :cond_d
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    goto :goto_9

    .line 534
    .end local v0    # "cc1":I
    .end local v6    # "cc":I
    .end local v12    # "k":I
    .end local v13    # "l":I
    :cond_e
    const/4 v6, 0x1

    goto :goto_7

    :cond_f
    move-object/from16 v14, p0

    goto :goto_7
.end method

.method final mainSort(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;I)V
    .locals 32
    .param p1, "dataShadow"    # Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;
    .param p2, "lastShadow"    # I

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 915
    move/from16 v8, p2

    iget-object v9, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_runningOrder:[I

    .line 916
    .local v9, "runningOrder":[I
    iget-object v10, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_copy:[I

    .line 917
    .local v10, "copy":[I
    iget-object v11, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainSort_bigDone:[Z

    .line 918
    .local v11, "bigDone":[Z
    iget-object v12, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->ftab:[I

    .line 919
    .local v12, "ftab":[I
    iget-object v13, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->block:[B

    .line 920
    .local v13, "block":[B
    iget-object v14, v7, Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;->fmap:[I

    .line 921
    .local v14, "fmap":[I
    iget-object v15, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->quadrant:[C

    .line 922
    .local v15, "quadrant":[C
    iget v5, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workLimit:I

    .line 923
    .local v5, "workLimitShadow":I
    iget-boolean v4, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->firstAttempt:Z

    .line 926
    .local v4, "firstAttemptShadow":Z
    const v0, 0x10001

    .local v0, "i":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    const/16 v16, 0x0

    if-ltz v0, :cond_0

    .line 927
    aput v16, v12, v0

    goto :goto_0

    .line 935
    .end local v0    # "i":I
    :cond_0
    move/from16 v0, v16

    .restart local v0    # "i":I
    :goto_1
    const/16 v3, 0x14

    const/4 v2, 0x1

    if-ge v0, v3, :cond_1

    .line 936
    add-int v1, v8, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v8, 0x1

    rem-int v3, v0, v3

    add-int/2addr v3, v2

    aget-byte v2, v13, v3

    aput-byte v2, v13, v1

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 938
    .end local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v8, 0x14

    add-int/2addr v0, v2

    .restart local v0    # "i":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 939
    aput-char v16, v15, v0

    goto :goto_2

    .line 941
    .end local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v13, v0

    aput-byte v0, v13, v16

    .line 945
    aget-byte v0, v13, v16

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 946
    .local v0, "c1":I
    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "c1":I
    :goto_3
    if-gt v0, v8, :cond_3

    .line 947
    add-int/lit8 v18, v0, 0x1

    aget-byte v3, v13, v18

    and-int/2addr v3, v1

    .line 948
    .local v3, "c2":I
    shl-int/lit8 v18, v17, 0x8

    add-int v18, v18, v3

    aget v20, v12, v18

    add-int/lit8 v20, v20, 0x1

    aput v20, v12, v18

    .line 949
    move/from16 v17, v3

    .line 946
    .end local v3    # "c2":I
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x14

    goto :goto_3

    .line 952
    .end local v0    # "i":I
    :cond_3
    move v0, v2

    .restart local v0    # "i":I
    :goto_4
    const/high16 v3, 0x10000

    if-gt v0, v3, :cond_4

    .line 953
    aget v3, v12, v0

    add-int/lit8 v18, v0, -0x1

    aget v18, v12, v18

    add-int v3, v3, v18

    aput v3, v12, v0

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 956
    .end local v0    # "i":I
    :cond_4
    aget-byte v0, v13, v2

    and-int/2addr v0, v1

    .line 957
    .end local v17    # "c1":I
    .local v0, "c1":I
    move v3, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v3, "c1":I
    :goto_5
    if-ge v0, v8, :cond_5

    .line 958
    add-int/lit8 v17, v0, 0x2

    aget-byte v2, v13, v17

    and-int/2addr v2, v1

    .line 959
    .local v2, "c2":I
    shl-int/lit8 v17, v3, 0x8

    add-int v17, v17, v2

    aget v18, v12, v17

    const/16 v20, 0x1

    add-int/lit8 v18, v18, -0x1

    aput v18, v12, v17

    aput v0, v14, v18

    .line 960
    move v3, v2

    .line 957
    .end local v2    # "c2":I
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    goto :goto_5

    .line 963
    .end local v0    # "i":I
    :cond_5
    add-int/lit8 v0, v8, 0x1

    aget-byte v0, v13, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    move/from16 v22, v3

    const/4 v2, 0x1

    aget-byte v3, v13, v2

    .end local v3    # "c1":I
    .local v22, "c1":I
    and-int/2addr v3, v1

    add-int/2addr v0, v3

    aget v3, v12, v0

    sub-int/2addr v3, v2

    aput v3, v12, v0

    aput v8, v14, v3

    .line 969
    const/16 v17, 0x100

    move/from16 v0, v17

    .restart local v0    # "i":I
    :goto_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_6

    .line 970
    aput-boolean v16, v11, v0

    .line 971
    aput v0, v9, v0

    goto :goto_6

    .line 974
    .end local v0    # "i":I
    :cond_6
    const/16 v0, 0x16c

    .local v0, "h":I
    :cond_7
    const/4 v2, 0x1

    if-eq v0, v2, :cond_a

    .line 975
    div-int/lit8 v0, v0, 0x3

    .line 976
    move v2, v0

    .local v2, "i":I
    :goto_7
    if-gt v2, v1, :cond_7

    .line 977
    aget v3, v9, v2

    .line 978
    .local v3, "vv":I
    add-int/lit8 v18, v3, 0x1

    shl-int/lit8 v18, v18, 0x8

    aget v18, v12, v18

    shl-int/lit8 v20, v3, 0x8

    aget v20, v12, v20

    sub-int v1, v18, v20

    .line 979
    .local v1, "a":I
    move/from16 v24, v4

    add-int/lit8 v4, v0, -0x1

    .line 980
    .local v4, "b":I
    .local v24, "firstAttemptShadow":Z
    move/from16 v18, v2

    .line 981
    .local v18, "j":I
    sub-int v20, v18, v0

    aget v20, v9, v20

    .local v20, "ro":I
    :goto_8
    add-int/lit8 v25, v20, 0x1

    shl-int/lit8 v25, v25, 0x8

    aget v25, v12, v25

    shl-int/lit8 v26, v20, 0x8

    aget v26, v12, v26

    move/from16 v27, v5

    sub-int v5, v25, v26

    .end local v5    # "workLimitShadow":I
    .local v27, "workLimitShadow":I
    if-le v5, v1, :cond_9

    .line 983
    aput v20, v9, v18

    .line 984
    sub-int v5, v18, v0

    .line 985
    .end local v18    # "j":I
    .local v5, "j":I
    if-gt v5, v4, :cond_8

    .line 986
    nop

    .line 989
    move/from16 v18, v5

    goto :goto_9

    .line 981
    :cond_8
    sub-int v18, v5, v0

    aget v20, v9, v18

    move/from16 v18, v5

    move/from16 v5, v27

    goto :goto_8

    .line 989
    .end local v5    # "j":I
    .end local v20    # "ro":I
    .restart local v18    # "j":I
    :cond_9
    :goto_9
    aput v3, v9, v18

    .line 976
    .end local v1    # "a":I
    .end local v3    # "vv":I
    .end local v4    # "b":I
    .end local v18    # "j":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v24

    move/from16 v5, v27

    const/16 v1, 0xff

    goto :goto_7

    .line 996
    .end local v0    # "h":I
    .end local v2    # "i":I
    .end local v24    # "firstAttemptShadow":Z
    .end local v27    # "workLimitShadow":I
    .local v4, "firstAttemptShadow":Z
    .local v5, "workLimitShadow":I
    :cond_a
    move/from16 v24, v4

    move/from16 v27, v5

    .end local v4    # "firstAttemptShadow":Z
    .end local v5    # "workLimitShadow":I
    .restart local v24    # "firstAttemptShadow":Z
    .restart local v27    # "workLimitShadow":I
    move/from16 v0, v16

    .local v0, "i":I
    :goto_a
    move v5, v0

    .end local v0    # "i":I
    .local v5, "i":I
    const/16 v1, 0xff

    if-gt v5, v1, :cond_17

    .line 1000
    aget v18, v9, v5

    .line 1009
    .local v18, "ss":I
    move/from16 v0, v16

    .local v0, "j":I
    :goto_b
    move v4, v0

    .end local v0    # "j":I
    .local v4, "j":I
    const/high16 v3, 0x200000

    const v0, -0x200001

    if-gt v4, v1, :cond_e

    .line 1010
    shl-int/lit8 v2, v18, 0x8

    add-int v20, v2, v4

    .line 1011
    .local v20, "sb":I
    aget v23, v12, v20

    .line 1012
    .local v23, "ftab_sb":I
    and-int v2, v23, v3

    if-eq v2, v3, :cond_d

    .line 1013
    and-int v2, v23, v0

    .line 1014
    .local v2, "lo":I
    add-int/lit8 v25, v20, 0x1

    aget v25, v12, v25

    and-int v0, v25, v0

    const/16 v21, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 1015
    .local v0, "hi":I
    if-le v0, v2, :cond_b

    .line 1016
    const/16 v25, 0x2

    move/from16 v26, v0

    move-object v0, v6

    .end local v0    # "hi":I
    .local v26, "hi":I
    move-object v1, v7

    move/from16 v28, v21

    move/from16 v21, v2

    .end local v2    # "lo":I
    .local v21, "lo":I
    move/from16 v19, v3

    const/16 v7, 0x14

    move/from16 v3, v26

    move/from16 v29, v4

    move/from16 v4, v25

    .end local v4    # "j":I
    .local v29, "j":I
    move-object/from16 v30, v9

    move/from16 v7, v27

    move v9, v5

    move v5, v8

    .end local v5    # "i":I
    .end local v27    # "workLimitShadow":I
    .local v7, "workLimitShadow":I
    .local v9, "i":I
    .local v30, "runningOrder":[I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->mainQSort3(Lorg/apache/commons/compress/compressors/bzip2/BZip2CompressorOutputStream$Data;IIII)V

    .line 1017
    if-eqz v24, :cond_c

    iget v0, v6, Lorg/apache/commons/compress/compressors/bzip2/BlockSort;->workDone:I

    if-le v0, v7, :cond_c

    .line 1019
    return-void

    .line 1022
    .end local v7    # "workLimitShadow":I
    .end local v21    # "lo":I
    .end local v26    # "hi":I
    .end local v29    # "j":I
    .end local v30    # "runningOrder":[I
    .restart local v0    # "hi":I
    .restart local v2    # "lo":I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .local v9, "runningOrder":[I
    .restart local v27    # "workLimitShadow":I
    :cond_b
    move/from16 v26, v0

    move/from16 v19, v3

    move/from16 v29, v4

    move-object/from16 v30, v9

    move/from16 v28, v21

    move/from16 v7, v27

    move/from16 v21, v2

    move v9, v5

    .end local v0    # "hi":I
    .end local v2    # "lo":I
    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v27    # "workLimitShadow":I
    .restart local v7    # "workLimitShadow":I
    .local v9, "i":I
    .restart local v21    # "lo":I
    .restart local v26    # "hi":I
    .restart local v29    # "j":I
    .restart local v30    # "runningOrder":[I
    :cond_c
    or-int v0, v23, v19

    aput v0, v12, v20

    .end local v20    # "sb":I
    .end local v21    # "lo":I
    .end local v23    # "ftab_sb":I
    .end local v26    # "hi":I
    goto :goto_c

    .line 1009
    .end local v7    # "workLimitShadow":I
    .end local v29    # "j":I
    .end local v30    # "runningOrder":[I
    .restart local v4    # "j":I
    .restart local v5    # "i":I
    .local v9, "runningOrder":[I
    .restart local v27    # "workLimitShadow":I
    :cond_d
    move/from16 v29, v4

    move-object/from16 v30, v9

    move/from16 v7, v27

    const/16 v28, 0x1

    move v9, v5

    .end local v4    # "j":I
    .end local v5    # "i":I
    .end local v27    # "workLimitShadow":I
    .restart local v7    # "workLimitShadow":I
    .local v9, "i":I
    .restart local v29    # "j":I
    .restart local v30    # "runningOrder":[I
    :goto_c
    add-int/lit8 v0, v29, 0x1

    .end local v29    # "j":I
    .local v0, "j":I
    move/from16 v27, v7

    move v5, v9

    move-object/from16 v9, v30

    const/16 v1, 0xff

    move-object/from16 v7, p1

    goto :goto_b

    .line 1030
    .end local v0    # "j":I
    .end local v7    # "workLimitShadow":I
    .end local v30    # "runningOrder":[I
    .restart local v5    # "i":I
    .local v9, "runningOrder":[I
    .restart local v27    # "workLimitShadow":I
    :cond_e
    move/from16 v19, v3

    move-object/from16 v30, v9

    move/from16 v7, v27

    const/16 v28, 0x1

    move v9, v5

    .end local v5    # "i":I
    .end local v27    # "workLimitShadow":I
    .restart local v7    # "workLimitShadow":I
    .local v9, "i":I
    .restart local v30    # "runningOrder":[I
    move/from16 v1, v16

    .local v1, "j":I
    :goto_d
    const/16 v2, 0xff

    if-gt v1, v2, :cond_f

    .line 1031
    shl-int/lit8 v3, v1, 0x8

    add-int v3, v3, v18

    aget v3, v12, v3

    and-int/2addr v3, v0

    aput v3, v10, v1

    .line 1030
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1034
    .end local v1    # "j":I
    :cond_f
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    and-int/2addr v1, v0

    .restart local v1    # "j":I
    add-int/lit8 v3, v18, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v3, v12, v3

    and-int/2addr v3, v0

    .local v3, "hj":I
    :goto_e
    if-ge v1, v3, :cond_12

    .line 1035
    aget v4, v14, v1

    .line 1036
    .local v4, "fmap_j":I
    aget-byte v5, v13, v4

    and-int/2addr v5, v2

    .line 1037
    .end local v22    # "c1":I
    .local v5, "c1":I
    aget-boolean v20, v11, v5

    if-nez v20, :cond_11

    .line 1038
    aget v20, v10, v5

    if-nez v4, :cond_10

    move/from16 v21, v8

    goto :goto_f

    :cond_10
    add-int/lit8 v21, v4, -0x1

    :goto_f
    aput v21, v14, v20

    .line 1039
    aget v20, v10, v5

    add-int/lit8 v20, v20, 0x1

    aput v20, v10, v5

    .line 1034
    .end local v4    # "fmap_j":I
    :cond_11
    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v5

    goto :goto_e

    .line 1043
    .end local v1    # "j":I
    .end local v3    # "hj":I
    .end local v5    # "c1":I
    .restart local v22    # "c1":I
    :cond_12
    move/from16 v1, v17

    .restart local v1    # "j":I
    :goto_10
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_13

    .line 1044
    shl-int/lit8 v3, v1, 0x8

    add-int v3, v3, v18

    aget v4, v12, v3

    or-int v4, v4, v19

    aput v4, v12, v3

    goto :goto_10

    .line 1055
    .end local v1    # "j":I
    :cond_13
    aput-boolean v28, v11, v18

    .line 1057
    if-ge v9, v2, :cond_16

    .line 1058
    shl-int/lit8 v1, v18, 0x8

    aget v1, v12, v1

    and-int/2addr v1, v0

    .line 1059
    .local v1, "bbStart":I
    add-int/lit8 v3, v18, 0x1

    shl-int/lit8 v3, v3, 0x8

    aget v3, v12, v3

    and-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 1060
    .local v0, "bbSize":I
    move/from16 v3, v16

    .line 1062
    .local v3, "shifts":I
    :goto_11
    shr-int v4, v0, v3

    const v5, 0xfffe

    if-le v4, v5, :cond_14

    .line 1063
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1066
    :cond_14
    move/from16 v4, v16

    .local v4, "j":I
    :goto_12
    if-ge v4, v0, :cond_16

    .line 1067
    add-int v5, v1, v4

    aget v5, v14, v5

    .line 1068
    .local v5, "a2update":I
    shr-int v2, v4, v3

    int-to-char v2, v2

    .line 1069
    .local v2, "qVal":C
    aput-char v2, v15, v5

    .line 1070
    move/from16 v31, v0

    const/16 v0, 0x14

    if-ge v5, v0, :cond_15

    .line 1071
    .end local v0    # "bbSize":I
    .local v31, "bbSize":I
    add-int v19, v5, v8

    add-int/lit8 v19, v19, 0x1

    aput-char v2, v15, v19

    .line 1066
    .end local v2    # "qVal":C
    .end local v5    # "a2update":I
    :cond_15
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v31

    const/16 v2, 0xff

    goto :goto_12

    .line 996
    .end local v1    # "bbStart":I
    .end local v3    # "shifts":I
    .end local v4    # "j":I
    .end local v18    # "ss":I
    .end local v31    # "bbSize":I
    :cond_16
    const/16 v0, 0x14

    add-int/lit8 v1, v9, 0x1

    .end local v9    # "i":I
    .local v1, "i":I
    move v0, v1

    move/from16 v27, v7

    move-object/from16 v9, v30

    move-object/from16 v7, p1

    goto/16 :goto_a

    .line 1077
    .end local v1    # "i":I
    .end local v7    # "workLimitShadow":I
    .end local v30    # "runningOrder":[I
    .local v9, "runningOrder":[I
    .restart local v27    # "workLimitShadow":I
    :cond_17
    move-object/from16 v30, v9

    move/from16 v7, v27

    .end local v9    # "runningOrder":[I
    .end local v27    # "workLimitShadow":I
    .restart local v7    # "workLimitShadow":I
    .restart local v30    # "runningOrder":[I
    return-void
.end method
