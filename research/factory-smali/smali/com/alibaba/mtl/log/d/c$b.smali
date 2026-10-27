.class Lcom/alibaba/mtl/log/d/c$b;
.super Lcom/alibaba/mtl/log/d/c$a;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private final c:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/mtl/log/d/c$b;->a:[I

    .line 207
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alibaba/mtl/log/d/c$b;->b:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/c$a;-><init>()V

    .line 245
    iput-object p2, p0, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    .line 247
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    sget-object p1, Lcom/alibaba/mtl/log/d/c$b;->a:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/alibaba/mtl/log/d/c$b;->b:[I

    :goto_0
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/c$b;->c:[I

    .line 248
    const/4 p1, 0x0

    iput p1, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 249
    iput p1, p0, Lcom/alibaba/mtl/log/d/c$b;->value:I

    .line 250
    return-void
.end method


# virtual methods
.method public process([BIIZ)Z
    .locals 15
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "finish"    # Z

    move-object v0, p0

    .line 269
    iget v1, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    return v2

    .line 271
    :cond_0
    nop

    .line 272
    add-int v4, p3, p2

    .line 279
    .end local p3    # "len":I
    .local v4, "len":I
    iget v5, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 280
    iget v6, v0, Lcom/alibaba/mtl/log/d/c$b;->value:I

    .line 281
    nop

    .line 282
    iget-object v7, v0, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    .line 283
    iget-object v8, v0, Lcom/alibaba/mtl/log/d/c$b;->c:[I

    .line 285
    move v9, v2

    move v10, v6

    move v6, v5

    move/from16 v5, p2

    :goto_0
    const/4 v11, 0x4

    if-ge v5, v4, :cond_b

    .line 300
    if-nez v6, :cond_2

    .line 301
    :goto_1
    add-int/lit8 v12, v5, 0x4

    if-gt v12, v4, :cond_1

    aget-byte v10, p1, v5

    and-int/lit16 v10, v10, 0xff

    aget v10, v8, v10

    shl-int/lit8 v10, v10, 0x12

    add-int/lit8 v13, v5, 0x1

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v10, v13

    add-int/lit8 v13, v5, 0x2

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    shl-int/2addr v13, v3

    or-int/2addr v10, v13

    add-int/lit8 v13, v5, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget v13, v8, v13

    or-int/2addr v10, v13

    if-ltz v10, :cond_1

    .line 306
    add-int/lit8 v5, v9, 0x2

    int-to-byte v13, v10

    aput-byte v13, v7, v5

    .line 307
    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v13, v10, 0x8

    int-to-byte v13, v13

    aput-byte v13, v7, v5

    .line 308
    shr-int/lit8 v5, v10, 0x10

    int-to-byte v5, v5

    aput-byte v5, v7, v9

    .line 309
    add-int/lit8 v9, v9, 0x3

    .line 310
    nop

    .line 301
    move v5, v12

    goto :goto_1

    .line 312
    :cond_1
    if-lt v5, v4, :cond_2

    goto/16 :goto_5

    .line 320
    :cond_2
    add-int/lit8 v12, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aget v5, v8, v5

    .line 322
    const/4 v13, -0x2

    const/4 v14, -0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    .line 390
    :pswitch_0
    if-eq v5, v14, :cond_a

    .line 391
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 392
    return v2

    .line 381
    :pswitch_1
    if-ne v5, v13, :cond_3

    .line 382
    add-int/lit8 v5, v6, 0x1

    .line 396
    :goto_2
    move v6, v5

    goto/16 :goto_4

    .line 383
    :cond_3
    if-eq v5, v14, :cond_a

    .line 384
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 385
    return v2

    .line 359
    :pswitch_2
    if-ltz v5, :cond_4

    .line 361
    shl-int/lit8 v6, v10, 0x6

    or-int/2addr v5, v6

    .line 362
    add-int/lit8 v6, v9, 0x2

    int-to-byte v10, v5

    aput-byte v10, v7, v6

    .line 363
    add-int/lit8 v6, v9, 0x1

    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v7, v6

    .line 364
    shr-int/lit8 v6, v5, 0x10

    int-to-byte v6, v6

    aput-byte v6, v7, v9

    .line 365
    add-int/lit8 v9, v9, 0x3

    .line 366
    nop

    .line 396
    move v6, v2

    goto :goto_3

    .line 367
    :cond_4
    if-ne v5, v13, :cond_5

    .line 370
    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v6, v10, 0x2

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 371
    shr-int/lit8 v5, v10, 0xa

    int-to-byte v5, v5

    aput-byte v5, v7, v9

    .line 372
    add-int/lit8 v9, v9, 0x2

    .line 373
    const/4 v5, 0x5

    goto :goto_2

    .line 374
    :cond_5
    if-eq v5, v14, :cond_a

    .line 375
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 376
    return v2

    .line 344
    :pswitch_3
    if-ltz v5, :cond_6

    .line 345
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v5, v10

    .line 346
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 347
    :cond_6
    if-ne v5, v13, :cond_7

    .line 350
    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v6, v10, 0x4

    int-to-byte v6, v6

    aput-byte v6, v7, v9

    .line 351
    nop

    .line 396
    move v9, v5

    move v6, v11

    goto :goto_4

    .line 352
    :cond_7
    if-eq v5, v14, :cond_a

    .line 353
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 354
    return v2

    .line 334
    :pswitch_4
    if-ltz v5, :cond_8

    .line 335
    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v5, v10

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 337
    :cond_8
    if-eq v5, v14, :cond_a

    .line 338
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 339
    return v2

    .line 324
    :pswitch_5
    if-ltz v5, :cond_9

    .line 325
    nop

    .line 326
    add-int/lit8 v6, v6, 0x1

    .line 396
    :goto_3
    move v10, v5

    goto :goto_4

    .line 327
    :cond_9
    if-eq v5, v14, :cond_a

    .line 328
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 329
    return v2

    .line 396
    :cond_a
    :goto_4
    nop

    .line 285
    move v5, v12

    goto/16 :goto_0

    .line 398
    :cond_b
    :goto_5
    const/4 v5, 0x1

    if-nez p4, :cond_c

    .line 401
    iput v6, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 402
    iput v10, v0, Lcom/alibaba/mtl/log/d/c$b;->value:I

    .line 403
    iput v9, v0, Lcom/alibaba/mtl/log/d/c$b;->op:I

    .line 404
    return v5

    .line 410
    :cond_c
    packed-switch v6, :pswitch_data_1

    goto :goto_6

    .line 432
    :pswitch_6
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 433
    return v2

    .line 427
    :pswitch_7
    add-int/lit8 v2, v9, 0x1

    shr-int/lit8 v3, v10, 0xa

    int-to-byte v3, v3

    aput-byte v3, v7, v9

    .line 428
    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v3, v10, 0x2

    int-to-byte v3, v3

    aput-byte v3, v7, v2

    .line 429
    goto :goto_6

    .line 422
    :pswitch_8
    add-int/lit8 v2, v9, 0x1

    shr-int/lit8 v3, v10, 0x4

    int-to-byte v3, v3

    aput-byte v3, v7, v9

    .line 423
    nop

    .line 440
    move v9, v2

    goto :goto_6

    .line 417
    :pswitch_9
    iput v3, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 418
    return v2

    .line 413
    :pswitch_a
    nop

    .line 440
    :goto_6
    iput v6, v0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 441
    iput v9, v0, Lcom/alibaba/mtl/log/d/c$b;->op:I

    .line 442
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
