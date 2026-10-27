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
    .locals 11

    .line 269
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 271
    :cond_0
    nop

    .line 272
    add-int/2addr p3, p2

    .line 279
    iget v0, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 280
    iget v3, p0, Lcom/alibaba/mtl/log/d/c$b;->value:I

    .line 281
    nop

    .line 282
    iget-object v4, p0, Lcom/alibaba/mtl/log/d/c$b;->output:[B

    .line 283
    iget-object v5, p0, Lcom/alibaba/mtl/log/d/c$b;->c:[I

    .line 285
    move v6, v3

    move v3, v1

    :goto_0
    const/4 v7, 0x4

    if-ge p2, p3, :cond_b

    .line 300
    if-nez v0, :cond_2

    .line 301
    :goto_1
    add-int/lit8 v8, p2, 0x4

    if-gt v8, p3, :cond_1

    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    aget v6, v5, v6

    shl-int/lit8 v6, v6, 0x12

    add-int/lit8 v9, p2, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x2

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    shl-int/2addr v9, v2

    or-int/2addr v6, v9

    add-int/lit8 v9, p2, 0x3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget v9, v5, v9

    or-int/2addr v6, v9

    if-ltz v6, :cond_1

    .line 306
    add-int/lit8 p2, v3, 0x2

    int-to-byte v9, v6

    aput-byte v9, v4, p2

    .line 307
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, p2

    .line 308
    shr-int/lit8 p2, v6, 0x10

    int-to-byte p2, p2

    aput-byte p2, v4, v3

    .line 309
    add-int/lit8 v3, v3, 0x3

    .line 310
    nop

    .line 301
    move p2, v8

    goto :goto_1

    .line 312
    :cond_1
    if-lt p2, p3, :cond_2

    goto/16 :goto_5

    .line 320
    :cond_2
    add-int/lit8 v8, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    aget p2, v5, p2

    .line 322
    const/4 v9, -0x2

    const/4 v10, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 390
    :pswitch_0
    if-eq p2, v10, :cond_a

    .line 391
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 392
    return v1

    .line 381
    :pswitch_1
    if-ne p2, v9, :cond_3

    .line 382
    add-int/lit8 p2, v0, 0x1

    .line 396
    :goto_2
    move v0, p2

    goto/16 :goto_4

    .line 383
    :cond_3
    if-eq p2, v10, :cond_a

    .line 384
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 385
    return v1

    .line 359
    :pswitch_2
    if-ltz p2, :cond_4

    .line 361
    shl-int/lit8 v0, v6, 0x6

    or-int/2addr p2, v0

    .line 362
    add-int/lit8 v0, v3, 0x2

    int-to-byte v6, p2

    aput-byte v6, v4, v0

    .line 363
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v6, p2, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    .line 364
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 365
    add-int/lit8 v3, v3, 0x3

    .line 366
    nop

    .line 396
    move v6, p2

    move v0, v1

    goto :goto_4

    .line 367
    :cond_4
    if-ne p2, v9, :cond_5

    .line 370
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v0, v6, 0x2

    int-to-byte v0, v0

    aput-byte v0, v4, p2

    .line 371
    shr-int/lit8 p2, v6, 0xa

    int-to-byte p2, p2

    aput-byte p2, v4, v3

    .line 372
    add-int/lit8 v3, v3, 0x2

    .line 373
    const/4 p2, 0x5

    goto :goto_2

    .line 374
    :cond_5
    if-eq p2, v10, :cond_a

    .line 375
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 376
    return v1

    .line 344
    :pswitch_3
    if-ltz p2, :cond_6

    .line 345
    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p2, v6

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 347
    :cond_6
    if-ne p2, v9, :cond_7

    .line 350
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 v0, v6, 0x4

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    .line 351
    nop

    .line 396
    move v3, p2

    move v0, v7

    goto :goto_4

    .line 352
    :cond_7
    if-eq p2, v10, :cond_a

    .line 353
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 354
    return v1

    .line 334
    :pswitch_4
    if-ltz p2, :cond_8

    .line 335
    shl-int/lit8 v6, v6, 0x6

    or-int/2addr p2, v6

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 337
    :cond_8
    if-eq p2, v10, :cond_a

    .line 338
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 339
    return v1

    .line 324
    :pswitch_5
    if-ltz p2, :cond_9

    .line 325
    nop

    .line 326
    add-int/lit8 v0, v0, 0x1

    .line 396
    :goto_3
    move v6, p2

    goto :goto_4

    .line 327
    :cond_9
    if-eq p2, v10, :cond_a

    .line 328
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 329
    return v1

    .line 396
    :cond_a
    :goto_4
    nop

    .line 285
    move p2, v8

    goto/16 :goto_0

    .line 398
    :cond_b
    :goto_5
    const/4 p1, 0x1

    if-nez p4, :cond_c

    .line 401
    iput v0, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 402
    iput v6, p0, Lcom/alibaba/mtl/log/d/c$b;->value:I

    .line 403
    iput v3, p0, Lcom/alibaba/mtl/log/d/c$b;->op:I

    .line 404
    return p1

    .line 410
    :cond_c
    packed-switch v0, :pswitch_data_1

    goto :goto_6

    .line 432
    :pswitch_6
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 433
    return v1

    .line 427
    :pswitch_7
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 p3, v6, 0xa

    int-to-byte p3, p3

    aput-byte p3, v4, v3

    .line 428
    add-int/lit8 v3, p2, 0x1

    shr-int/lit8 p3, v6, 0x2

    int-to-byte p3, p3

    aput-byte p3, v4, p2

    .line 429
    goto :goto_6

    .line 422
    :pswitch_8
    add-int/lit8 p2, v3, 0x1

    shr-int/lit8 p3, v6, 0x4

    int-to-byte p3, p3

    aput-byte p3, v4, v3

    .line 423
    nop

    .line 440
    move v3, p2

    goto :goto_6

    .line 417
    :pswitch_9
    iput v2, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 418
    return v1

    .line 413
    :pswitch_a
    nop

    .line 440
    :goto_6
    iput v0, p0, Lcom/alibaba/mtl/log/d/c$b;->state:I

    .line 441
    iput v3, p0, Lcom/alibaba/mtl/log/d/c$b;->op:I

    .line 442
    return p1

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
