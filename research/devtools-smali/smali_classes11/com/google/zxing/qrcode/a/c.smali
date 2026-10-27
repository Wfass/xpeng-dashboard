.class public final Lcom/google/zxing/qrcode/a/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final kh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/a/c;->kh:[I

    return-void

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
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
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
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/a;Lcom/google/zxing/qrcode/a/b;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 234
    nop

    .line 235
    nop

    .line 237
    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 238
    invoke-static {p0, p1, p2, v2, p3}, Lcom/google/zxing/qrcode/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/a;ILcom/google/zxing/qrcode/a/b;)V

    .line 239
    invoke-static {p3}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/qrcode/a/b;)I

    move-result v3

    .line 240
    if-ge v3, v0, :cond_0

    .line 241
    nop

    .line 242
    nop

    .line 237
    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return v1
.end method

.method private static a(Lcom/google/zxing/qrcode/a/b;)I
    .locals 2

    .line 58
    invoke-static {p0}, Lcom/google/zxing/qrcode/a/d;->b(Lcom/google/zxing/qrcode/a/b;)I

    move-result v0

    .line 59
    invoke-static {p0}, Lcom/google/zxing/qrcode/a/d;->c(Lcom/google/zxing/qrcode/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    invoke-static {p0}, Lcom/google/zxing/qrcode/a/d;->d(Lcom/google/zxing/qrcode/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    invoke-static {p0}, Lcom/google/zxing/qrcode/a/d;->e(Lcom/google/zxing/qrcode/a/b;)I

    move-result p0

    add-int/2addr v0, p0

    .line 58
    return v0
.end method

.method static a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    .line 364
    move/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/a;->ci()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 370
    nop

    .line 371
    nop

    .line 372
    nop

    .line 375
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    const/16 v15, 0x8

    if-ge v11, v8, :cond_0

    .line 378
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 379
    new-array v4, v0, [I

    .line 380
    move v0, v6

    move v1, v7

    move v2, v8

    move v3, v11

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/a/c;->a(IIII[I[I)V

    .line 384
    aget v0, v17, v10

    .line 385
    new-array v1, v0, [B

    .line 386
    mul-int/2addr v15, v12

    move-object/from16 v2, p0

    invoke-virtual {v2, v15, v1, v10, v0}, Lcom/google/zxing/common/a;->a(I[BII)V

    .line 387
    aget v3, v16, v10

    invoke-static {v1, v3}, Lcom/google/zxing/qrcode/a/c;->c([BI)[B

    move-result-object v3

    .line 388
    new-instance v4, Lcom/google/zxing/qrcode/a/a;

    invoke-direct {v4, v1, v3}, Lcom/google/zxing/qrcode/a/a;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 391
    array-length v0, v3

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 392
    aget v0, v17, v10

    add-int/2addr v12, v0

    .line 377
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 394
    :cond_0
    if-ne v7, v12, :cond_8

    .line 398
    new-instance v0, Lcom/google/zxing/common/a;

    invoke-direct {v0}, Lcom/google/zxing/common/a;-><init>()V

    .line 401
    move v1, v10

    :goto_1
    if-ge v1, v13, :cond_3

    .line 402
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/qrcode/a/a;

    .line 403
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/a/a;->getDataBytes()[B

    move-result-object v3

    .line 404
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 405
    aget-byte v3, v3, v1

    invoke-virtual {v0, v3, v15}, Lcom/google/zxing/common/a;->e(II)V

    .line 407
    :cond_1
    goto :goto_2

    .line 401
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 410
    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 411
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/qrcode/a/a;

    .line 412
    invoke-virtual {v2}, Lcom/google/zxing/qrcode/a/a;->cA()[B

    move-result-object v2

    .line 413
    array-length v3, v2

    if-ge v10, v3, :cond_4

    .line 414
    aget-byte v2, v2, v10

    invoke-virtual {v0, v2, v15}, Lcom/google/zxing/common/a;->e(II)V

    .line 416
    :cond_4
    goto :goto_4

    .line 410
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 418
    :cond_6
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->ci()I

    move-result v1

    if-ne v6, v1, :cond_7

    .line 423
    return-object v0

    .line 419
    :cond_7
    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v0}, Lcom/google/zxing/common/a;->ci()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_8
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_9
    new-instance v0, Lcom/google/zxing/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/a/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/a/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 80
    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->iy:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 81
    :goto_0
    if-nez p2, :cond_1

    .line 82
    const-string p2, "ISO-8859-1"

    .line 87
    :cond_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/a/c;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/google/zxing/common/a;

    invoke-direct {v1}, Lcom/google/zxing/common/a;-><init>()V

    .line 94
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->jP:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v2, :cond_2

    const-string v2, "ISO-8859-1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    invoke-static {p2}, Lcom/google/zxing/common/CharacterSetECI;->aD(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    invoke-static {v2, v1}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/a;)V

    .line 102
    :cond_2
    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V

    .line 106
    new-instance v2, Lcom/google/zxing/common/a;

    invoke-direct {v2}, Lcom/google/zxing/common/a;-><init>()V

    .line 107
    invoke-static {p0, v0, v2, p2}, Lcom/google/zxing/qrcode/a/c;->a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Lcom/google/zxing/common/a;->getSize()I

    move-result p2

    const/4 v3, 0x1

    .line 114
    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/a;->bv(I)Lcom/google/zxing/qrcode/decoder/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/a;)I

    move-result v3

    add-int/2addr p2, v3

    .line 115
    invoke-virtual {v2}, Lcom/google/zxing/common/a;->getSize()I

    move-result v3

    add-int/2addr p2, v3

    .line 116
    invoke-static {p2, p1}, Lcom/google/zxing/qrcode/a/c;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/a;

    move-result-object p2

    .line 120
    invoke-virtual {v1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v3

    .line 121
    invoke-virtual {v0, p2}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/a;)I

    move-result p2

    add-int/2addr v3, p2

    .line 122
    invoke-virtual {v2}, Lcom/google/zxing/common/a;->getSize()I

    move-result p2

    add-int/2addr v3, p2

    .line 123
    invoke-static {v3, p1}, Lcom/google/zxing/qrcode/a/c;->a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/a;

    move-result-object p2

    .line 125
    new-instance v3, Lcom/google/zxing/common/a;

    invoke-direct {v3}, Lcom/google/zxing/common/a;-><init>()V

    .line 126
    invoke-virtual {v3, v1}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 128
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->jP:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/google/zxing/common/a;->ci()I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 129
    :goto_1
    invoke-static {p0, p2, v0, v3}, Lcom/google/zxing/qrcode/a/c;->a(ILcom/google/zxing/qrcode/decoder/a;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V

    .line 131
    invoke-virtual {v3, v2}, Lcom/google/zxing/common/a;->a(Lcom/google/zxing/common/a;)V

    .line 133
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/a;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/a$b;

    move-result-object p0

    .line 134
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/a;->cs()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/a$b;->cy()I

    move-result v2

    sub-int/2addr v1, v2

    .line 137
    invoke-static {v1, v3}, Lcom/google/zxing/qrcode/a/c;->a(ILcom/google/zxing/common/a;)V

    .line 140
    nop

    .line 141
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/a;->cs()I

    move-result v2

    .line 143
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/a$b;->cx()I

    move-result p0

    .line 140
    invoke-static {v3, v2, v1, p0}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/common/a;III)Lcom/google/zxing/common/a;

    move-result-object p0

    .line 145
    new-instance v1, Lcom/google/zxing/qrcode/a/f;

    invoke-direct {v1}, Lcom/google/zxing/qrcode/a/f;-><init>()V

    .line 147
    invoke-virtual {v1, p1}, Lcom/google/zxing/qrcode/a/f;->b(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 148
    invoke-virtual {v1, v0}, Lcom/google/zxing/qrcode/a/f;->a(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 149
    invoke-virtual {v1, p2}, Lcom/google/zxing/qrcode/a/f;->b(Lcom/google/zxing/qrcode/decoder/a;)V

    .line 152
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/a;->ct()I

    move-result v0

    .line 153
    new-instance v2, Lcom/google/zxing/qrcode/a/b;

    invoke-direct {v2, v0, v0}, Lcom/google/zxing/qrcode/a/b;-><init>(II)V

    .line 154
    invoke-static {p0, p1, p2, v2}, Lcom/google/zxing/qrcode/a/c;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/a;Lcom/google/zxing/qrcode/a/b;)I

    move-result v0

    .line 155
    invoke-virtual {v1, v0}, Lcom/google/zxing/qrcode/a/f;->by(I)V

    .line 158
    invoke-static {p0, p1, p2, v0, v2}, Lcom/google/zxing/qrcode/a/e;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/a;ILcom/google/zxing/qrcode/a/b;)V

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/a/f;->j(Lcom/google/zxing/qrcode/a/b;)V

    .line 161
    return-object v1
.end method

.method private static a(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 250
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 251
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/a;->bv(I)Lcom/google/zxing/qrcode/decoder/a;

    move-result-object v1

    .line 253
    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/a;->cs()I

    move-result v2

    .line 255
    invoke-virtual {v1, p1}, Lcom/google/zxing/qrcode/decoder/a;->a(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/a$b;

    move-result-object v3

    .line 256
    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/a$b;->cy()I

    move-result v3

    .line 258
    sub-int/2addr v2, v3

    .line 259
    add-int/lit8 v3, p0, 0x7

    div-int/lit8 v3, v3, 0x8

    .line 260
    if-lt v2, v3, :cond_0

    .line 261
    return-object v1

    .line 250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 308
    if-ge p3, p2, :cond_4

    .line 312
    rem-int v0, p0, p2

    .line 314
    sub-int v1, p2, v0

    .line 316
    div-int v2, p0, p2

    .line 318
    add-int/lit8 v3, v2, 0x1

    .line 320
    div-int/2addr p1, p2

    .line 322
    add-int/lit8 v4, p1, 0x1

    .line 324
    sub-int/2addr v2, p1

    .line 326
    sub-int/2addr v3, v4

    .line 329
    if-ne v2, v3, :cond_3

    .line 333
    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    .line 337
    add-int p2, p1, v2

    mul-int/2addr p2, v1

    add-int v5, v4, v3

    mul-int/2addr v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    .line 345
    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 346
    aput p1, p4, p0

    .line 347
    aput v2, p5, p0

    goto :goto_0

    .line 349
    :cond_0
    aput v4, p4, p0

    .line 350
    aput v3, p5, p0

    .line 352
    :goto_0
    return-void

    .line 342
    :cond_1
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 334
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :cond_3
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcom/google/zxing/common/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 271
    mul-int/lit8 v0, p0, 0x8

    .line 272
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v1

    if-gt v1, v0, :cond_5

    .line 276
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 277
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->u(Z)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    .line 282
    const/16 v3, 0x8

    if-lez v2, :cond_1

    .line 283
    :goto_1
    if-ge v2, v3, :cond_1

    .line 284
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->u(Z)V

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->ci()I

    move-result v2

    sub-int/2addr p0, v2

    .line 289
    :goto_2
    if-ge v1, p0, :cond_3

    .line 290
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result p0

    if-ne p0, v0, :cond_4

    .line 295
    return-void

    .line 293
    :cond_4
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_5
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/common/a;->getSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcom/google/zxing/qrcode/decoder/a;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 453
    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->a(Lcom/google/zxing/qrcode/decoder/a;)I

    move-result p1

    .line 454
    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 457
    invoke-virtual {p3, p0, p1}, Lcom/google/zxing/common/a;->e(II)V

    .line 458
    return-void

    .line 455
    :cond_0
    new-instance p1, Lcom/google/zxing/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/a;)V
    .locals 2

    .line 573
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->jQ:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->cp()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/a;->e(II)V

    .line 575
    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/a;->e(II)V

    .line 576
    return-void
.end method

.method static a(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;)V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->cp()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/google/zxing/common/a;->e(II)V

    .line 446
    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .locals 6

    .line 486
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 487
    nop

    .line 488
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 489
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    .line 490
    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    .line 492
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 493
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    .line 494
    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/a;->e(II)V

    .line 495
    add-int/lit8 v1, v1, 0x3

    .line 496
    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 498
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    .line 499
    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/a;->e(II)V

    .line 500
    nop

    .line 501
    nop

    .line 506
    move v1, v3

    goto :goto_1

    .line 503
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    .line 504
    nop

    .line 506
    :goto_1
    goto :goto_0

    .line 507
    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 549
    :try_start_0
    const-string v0, "Shift_JIS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    nop

    .line 553
    array-length v0, p0

    .line 554
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 555
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 556
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 557
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    .line 558
    nop

    .line 559
    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    .line 560
    sub-int/2addr v2, v3

    goto :goto_1

    .line 561
    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    .line 562
    const v3, 0xc140

    sub-int/2addr v2, v3

    goto :goto_1

    .line 564
    :cond_1
    move v2, v4

    :goto_1
    if-eq v2, v4, :cond_2

    .line 567
    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    .line 568
    const/16 v2, 0xd

    invoke-virtual {p1, v3, v2}, Lcom/google/zxing/common/a;->e(II)V

    .line 554
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 565
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 570
    :cond_3
    return-void

    .line 550
    :catch_0
    move-exception p0

    .line 551
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 537
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    nop

    .line 541
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    .line 542
    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/google/zxing/common/a;->e(II)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 544
    :cond_0
    return-void

    .line 538
    :catch_0
    move-exception p0

    .line 539
    new-instance p1, Lcom/google/zxing/WriterException;

    invoke-direct {p1, p0}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/a;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 467
    sget-object v0, Lcom/google/zxing/qrcode/a/c$1;->ki:[I

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 481
    new-instance p0, Lcom/google/zxing/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 478
    :pswitch_0
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/a/c;->a(Ljava/lang/String;Lcom/google/zxing/common/a;)V

    .line 479
    goto :goto_0

    .line 475
    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/a/c;->a(Ljava/lang/String;Lcom/google/zxing/common/a;Ljava/lang/String;)V

    .line 476
    goto :goto_0

    .line 472
    :pswitch_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/a/c;->b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    .line 473
    goto :goto_0

    .line 469
    :pswitch_3
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/a/c;->a(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V

    .line 470
    nop

    .line 483
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static aE(Ljava/lang/String;)Z
    .locals 5

    .line 212
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "Shift_JIS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    nop

    .line 216
    array-length v1, p0

    .line 217
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 218
    return v0

    .line 220
    :cond_0
    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 221
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 222
    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 220
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 223
    :cond_3
    :goto_1
    return v0

    .line 226
    :cond_4
    const/4 p0, 0x1

    return p0

    .line 213
    :catch_0
    move-exception p0

    .line 214
    return v0
.end method

.method static b(Ljava/lang/CharSequence;Lcom/google/zxing/common/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 510
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 511
    nop

    .line 512
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 513
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/a/c;->bw(I)I

    move-result v2

    .line 514
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 517
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 518
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/a/c;->bw(I)I

    move-result v4

    .line 519
    if-eq v4, v3, :cond_0

    .line 523
    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/google/zxing/common/a;->e(II)V

    .line 524
    add-int/lit8 v1, v1, 0x2

    .line 525
    goto :goto_1

    .line 520
    :cond_0
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    .line 527
    :cond_1
    const/4 v1, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/zxing/common/a;->e(II)V

    .line 528
    nop

    .line 530
    move v1, v4

    :goto_1
    goto :goto_0

    .line 515
    :cond_2
    new-instance p0, Lcom/google/zxing/WriterException;

    invoke-direct {p0}, Lcom/google/zxing/WriterException;-><init>()V

    throw p0

    .line 531
    :cond_3
    return-void
.end method

.method static bw(I)I
    .locals 1

    .line 169
    sget-object v0, Lcom/google/zxing/qrcode/a/c;->kh:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 170
    sget-object v0, Lcom/google/zxing/qrcode/a/c;->kh:[I

    aget p0, v0, p0

    return p0

    .line 172
    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static c([BI)[B
    .locals 5

    .line 427
    array-length v0, p0

    .line 428
    add-int v1, v0, p1

    new-array v1, v1, [I

    .line 429
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 430
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    .line 429
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 432
    :cond_0
    new-instance p0, Lcom/google/zxing/common/a/c;

    sget-object v3, Lcom/google/zxing/common/a/a;->js:Lcom/google/zxing/common/a/a;

    invoke-direct {p0, v3}, Lcom/google/zxing/common/a/c;-><init>(Lcom/google/zxing/common/a/a;)V

    invoke-virtual {p0, v1, p1}, Lcom/google/zxing/common/a/c;->a([II)V

    .line 434
    new-array p0, p1, [B

    .line 435
    :goto_1
    if-ge v2, p1, :cond_1

    .line 436
    add-int v3, v0, v2

    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 438
    :cond_1
    return-object p0
.end method

.method private static r(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 5

    .line 184
    const-string v0, "Shift_JIS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    invoke-static {p0}, Lcom/google/zxing/qrcode/a/c;->aE(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jR:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jP:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_0
    return-object p0

    .line 188
    :cond_1
    nop

    .line 189
    nop

    .line 190
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 191
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 192
    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 193
    nop

    .line 190
    move v1, v4

    goto :goto_2

    .line 194
    :cond_2
    invoke-static {v2}, Lcom/google/zxing/qrcode/a/c;->bw(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 195
    nop

    .line 190
    move v0, v4

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 197
    :cond_3
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jP:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 200
    :cond_4
    if-eqz v0, :cond_5

    .line 201
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jN:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 203
    :cond_5
    if-eqz v1, :cond_6

    .line 204
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jM:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0

    .line 206
    :cond_6
    sget-object p0, Lcom/google/zxing/qrcode/decoder/Mode;->jP:Lcom/google/zxing/qrcode/decoder/Mode;

    return-object p0
.end method
