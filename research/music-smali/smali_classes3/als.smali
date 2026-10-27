.class public final Lals;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    .line 44
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lals;->b:[I

    .line 53
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lals;->a:Ljava/nio/charset/Charset;

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

.method static a(I)I
    .locals 2

    .line 237
    sget-object v0, Lals;->b:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 238
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lale;Laln;Lalp;Lalr;)I
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 303
    invoke-static {p0, p1, p2, v2, p3}, Lalu;->a(Lale;Laln;Lalp;ILalr;)V

    .line 304
    invoke-static {p3}, Lals;->a(Lalr;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lalo;Lale;Lale;Lalp;)I
    .locals 0

    .line 229
    invoke-virtual {p1}, Lale;->a()I

    move-result p1

    invoke-virtual {p0, p3}, Lalo;->a(Lalp;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lale;->a()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static a(Lalr;)I
    .locals 2

    .line 61
    invoke-static {p0}, Lalt;->a(Lalr;)I

    move-result v0

    .line 62
    invoke-static {p0}, Lalt;->b(Lalr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
    invoke-static {p0}, Lalt;->c(Lalr;)I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    invoke-static {p0}, Lalt;->d(Lalr;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lale;III)Lale;
    .locals 17

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 438
    invoke-virtual/range {p0 .. p0}, Lale;->b()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 449
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    .line 452
    new-array v15, v0, [I

    .line 453
    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 454
    invoke-static/range {v0 .. v5}, Lals;->a(IIII[I[I)V

    .line 458
    aget v0, v15, v10

    .line 459
    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    .line 460
    invoke-virtual {v3, v2, v1, v10, v0}, Lale;->a(I[BII)V

    .line 461
    aget v2, v16, v10

    invoke-static {v1, v2}, Lals;->a([BI)[B

    move-result-object v2

    .line 462
    new-instance v4, Lalq;

    invoke-direct {v4, v1, v2}, Lalq;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 465
    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 466
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    .line 472
    new-instance v0, Lale;

    invoke-direct {v0}, Lale;-><init>()V

    move v1, v10

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v13, :cond_3

    .line 476
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lalq;

    .line 477
    invoke-virtual {v4}, Lalq;->a()[B

    move-result-object v4

    .line 478
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 479
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lale;->a(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v14, :cond_6

    .line 485
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lalq;

    .line 486
    invoke-virtual {v3}, Lalq;->b()[B

    move-result-object v3

    .line 487
    array-length v4, v3

    if-ge v10, v4, :cond_4

    .line 488
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lale;->a(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 492
    :cond_6
    invoke-virtual {v0}, Lale;->b()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    .line 493
    :cond_7
    new-instance v1, Lald;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Lale;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lald;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_8
    new-instance v0, Lald;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lald;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_9
    new-instance v0, Lald;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lald;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lalo;
    .locals 5

    .line 252
    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_0

    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    .line 253
    invoke-virtual {v0, p1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    invoke-static {p0}, Lals;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    sget-object p0, Lalo;->KANJI:Lalo;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    .line 260
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 261
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    move v1, v4

    goto :goto_1

    .line 264
    :cond_1
    invoke-static {v2}, Lals;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    move v0, v4

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 267
    :cond_2
    sget-object p0, Lalo;->BYTE:Lalo;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 271
    sget-object p0, Lalo;->ALPHANUMERIC:Lalo;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 274
    sget-object p0, Lalo;->NUMERIC:Lalo;

    return-object p0

    .line 276
    :cond_5
    sget-object p0, Lalo;->BYTE:Lalo;

    return-object p0
.end method

.method private static a(ILaln;)Lalp;
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 315
    invoke-static {v0}, Lalp;->a(I)Lalp;

    move-result-object v1

    .line 316
    invoke-static {p0, v1, p1}, Lals;->a(ILalp;Laln;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    new-instance p0, Lald;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Laln;Lalo;Lale;Lale;)Lalp;
    .locals 1

    const/4 v0, 0x1

    .line 217
    invoke-static {v0}, Lalp;->a(I)Lalp;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lals;->a(Lalo;Lale;Lale;Lalp;)I

    move-result v0

    .line 218
    invoke-static {v0, p0}, Lals;->a(ILaln;)Lalp;

    move-result-object v0

    .line 221
    invoke-static {p1, p2, p3, v0}, Lals;->a(Lalo;Lale;Lale;Lalp;)I

    move-result p1

    .line 222
    invoke-static {p1, p0}, Lals;->a(ILaln;)Lalp;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Laln;Ljava/util/Map;)Lalw;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Laln;",
            "Ljava/util/Map<",
            "Lalc;",
            "*>;)",
            "Lalw;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 86
    sget-object v2, Lalc;->GS1_FORMAT:Lalc;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lalc;->GS1_FORMAT:Lalc;

    .line 87
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p2, :cond_1

    .line 88
    sget-object v3, Lalc;->QR_COMPACT:Lalc;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lalc;->QR_COMPACT:Lalc;

    .line 89
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 92
    :goto_1
    sget-object v4, Lals;->a:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_2

    .line 93
    sget-object v5, Lalc;->CHARACTER_SET:Lalc;

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 96
    :try_start_0
    sget-object v1, Lalc;->CHARACTER_SET:Lalc;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    if-eqz v3, :cond_5

    .line 103
    sget-object v0, Lalo;->BYTE:Lalo;

    .line 105
    sget-object v1, Lals;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    move-object v4, v3

    .line 106
    :cond_4
    invoke-static {p0, v3, v4, v2, p1}, Lalv;->a(Ljava/lang/String;Lalp;Ljava/nio/charset/Charset;ZLaln;)Lalv$b;

    move-result-object p0

    .line 108
    new-instance v1, Lale;

    invoke-direct {v1}, Lale;-><init>()V

    .line 109
    invoke-virtual {p0, v1}, Lalv$b;->a(Lale;)V

    .line 110
    invoke-virtual {p0}, Lalv$b;->b()Lalp;

    move-result-object p0

    goto/16 :goto_5

    .line 116
    :cond_5
    invoke-static {p0, v4}, Lals;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lalo;

    move-result-object v1

    .line 120
    new-instance v3, Lale;

    invoke-direct {v3}, Lale;-><init>()V

    .line 123
    sget-object v5, Lalo;->BYTE:Lalo;

    if-ne v1, v5, :cond_6

    if-eqz v0, :cond_6

    .line 124
    invoke-static {v4}, Lalg;->a(Ljava/nio/charset/Charset;)Lalg;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 126
    invoke-static {v0, v3}, Lals;->a(Lalg;Lale;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 133
    sget-object v0, Lalo;->FNC1_FIRST_POSITION:Lalo;

    invoke-static {v0, v3}, Lals;->a(Lalo;Lale;)V

    .line 137
    :cond_7
    invoke-static {v1, v3}, Lals;->a(Lalo;Lale;)V

    .line 141
    new-instance v0, Lale;

    invoke-direct {v0}, Lale;-><init>()V

    .line 142
    invoke-static {p0, v1, v0, v4}, Lals;->a(Ljava/lang/String;Lalo;Lale;Ljava/nio/charset/Charset;)V

    if-eqz p2, :cond_9

    .line 144
    sget-object v2, Lalc;->QR_VERSION:Lalc;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 145
    sget-object v2, Lalc;->QR_VERSION:Lalc;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 146
    invoke-static {v2}, Lalp;->a(I)Lalp;

    move-result-object v2

    .line 147
    invoke-static {v1, v3, v0, v2}, Lals;->a(Lalo;Lale;Lale;Lalp;)I

    move-result v4

    .line 148
    invoke-static {v4, v2, p1}, Lals;->a(ILalp;Laln;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    .line 149
    :cond_8
    new-instance p0, Lald;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_9
    invoke-static {p1, v1, v3, v0}, Lals;->a(Laln;Lalo;Lale;Lale;)Lalp;

    move-result-object v2

    .line 155
    :goto_3
    new-instance v4, Lale;

    invoke-direct {v4}, Lale;-><init>()V

    .line 156
    invoke-virtual {v4, v3}, Lale;->a(Lale;)V

    .line 158
    sget-object v3, Lalo;->BYTE:Lalo;

    if-ne v1, v3, :cond_a

    invoke-virtual {v0}, Lale;->b()I

    move-result p0

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 159
    :goto_4
    invoke-static {p0, v2, v1, v4}, Lals;->a(ILalp;Lalo;Lale;)V

    .line 161
    invoke-virtual {v4, v0}, Lale;->a(Lale;)V

    move-object v0, v1

    move-object p0, v2

    move-object v1, v4

    .line 164
    :goto_5
    invoke-virtual {p0, p1}, Lalp;->a(Laln;)Lalp$b;

    move-result-object v2

    .line 165
    invoke-virtual {p0}, Lalp;->b()I

    move-result v3

    invoke-virtual {v2}, Lalp$b;->c()I

    move-result v4

    sub-int/2addr v3, v4

    .line 168
    invoke-static {v3, v1}, Lals;->a(ILale;)V

    .line 172
    invoke-virtual {p0}, Lalp;->b()I

    move-result v4

    .line 174
    invoke-virtual {v2}, Lalp$b;->b()I

    move-result v2

    .line 171
    invoke-static {v1, v4, v3, v2}, Lals;->a(Lale;III)Lale;

    move-result-object v1

    .line 176
    new-instance v2, Lalw;

    invoke-direct {v2}, Lalw;-><init>()V

    .line 178
    invoke-virtual {v2, p1}, Lalw;->a(Laln;)V

    .line 179
    invoke-virtual {v2, v0}, Lalw;->a(Lalo;)V

    .line 180
    invoke-virtual {v2, p0}, Lalw;->a(Lalp;)V

    .line 183
    invoke-virtual {p0}, Lalp;->c()I

    move-result v0

    .line 184
    new-instance v3, Lalr;

    invoke-direct {v3, v0, v0}, Lalr;-><init>(II)V

    const/4 v0, -0x1

    if-eqz p2, :cond_b

    .line 188
    sget-object v4, Lalc;->QR_MASK_PATTERN:Lalc;

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 189
    sget-object v4, Lalc;->QR_MASK_PATTERN:Lalc;

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 190
    invoke-static {p2}, Lalw;->b(I)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    move p2, v0

    :goto_6
    if-ne p2, v0, :cond_c

    .line 194
    invoke-static {v1, p1, p0, v3}, Lals;->a(Lale;Laln;Lalp;Lalr;)I

    move-result p2

    .line 196
    :cond_c
    invoke-virtual {v2, p2}, Lalw;->a(I)V

    .line 199
    invoke-static {v1, p1, p0, p2, v3}, Lalu;->a(Lale;Laln;Lalp;ILalr;)V

    .line 200
    invoke-virtual {v2, v3}, Lalw;->a(Lalr;)V

    return-object v2
.end method

.method static a(IIII[I[I)V
    .locals 6

    if-ge p3, p2, :cond_4

    .line 386
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 390
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 394
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int/2addr p2, v1

    add-int v5, v4, v3

    mul-int/2addr v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 420
    aput p1, p4, p0

    .line 421
    aput v2, p5, p0

    goto :goto_0

    .line 423
    :cond_0
    aput v4, p4, p0

    .line 424
    aput v3, p5, p0

    :goto_0
    return-void

    .line 416
    :cond_1
    new-instance p0, Lald;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 408
    :cond_2
    new-instance p0, Lald;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 404
    :cond_3
    new-instance p0, Lald;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 383
    :cond_4
    new-instance p0, Lald;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILale;)V
    .locals 4

    mul-int/lit8 v0, p0, 0x8

    .line 345
    invoke-virtual {p1}, Lale;->a()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 350
    invoke-virtual {p1}, Lale;->a()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 351
    invoke-virtual {p1, v1}, Lale;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p1}, Lale;->a()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 358
    invoke-virtual {p1, v1}, Lale;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 362
    :cond_1
    invoke-virtual {p1}, Lale;->b()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 364
    :goto_3
    invoke-virtual {p1, v2, v3}, Lale;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 366
    :cond_3
    invoke-virtual {p1}, Lale;->a()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 367
    :cond_4
    new-instance p0, Lald;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :cond_5
    new-instance p0, Lald;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lale;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILalp;Lalo;Lale;)V
    .locals 1

    .line 527
    invoke-virtual {p2, p1}, Lalo;->a(Lalp;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 531
    invoke-virtual {p3, p0, p1}, Lale;->a(II)V

    return-void

    .line 529
    :cond_0
    new-instance p1, Lald;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lald;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lalg;Lale;)V
    .locals 2

    .line 643
    sget-object v0, Lalo;->ECI:Lalo;

    invoke-virtual {v0}, Lalo;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lale;->a(II)V

    .line 645
    invoke-virtual {p0}, Lalg;->a()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lale;->a(II)V

    return-void
.end method

.method static a(Lalo;Lale;)V
    .locals 1

    .line 519
    invoke-virtual {p0}, Lalo;->a()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lale;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lale;)V
    .locals 6

    .line 560
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 563
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 566
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 567
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 568
    invoke-virtual {p1, v2, v5}, Lale;->a(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 572
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 573
    invoke-virtual {p1, v2, v1}, Lale;->a(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 577
    invoke-virtual {p1, v2, v3}, Lale;->a(II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Ljava/lang/String;Lale;)V
    .locals 6

    .line 615
    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    .line 619
    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 620
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 623
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 625
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 626
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 638
    invoke-virtual {p1, v3, v2}, Lale;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 635
    :cond_2
    new-instance p0, Lald;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    .line 621
    :cond_4
    new-instance p0, Lald;

    const-string p1, "Kanji byte size not even"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 617
    :cond_5
    new-instance p0, Lald;

    const-string p1, "SJIS Charset not supported on this platform"

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(Ljava/lang/String;Lale;Ljava/nio/charset/Charset;)V
    .locals 3

    .line 608
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 609
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 610
    invoke-virtual {p1, v1, v2}, Lale;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static a(Ljava/lang/String;Lalo;Lale;Ljava/nio/charset/Charset;)V
    .locals 2

    .line 541
    sget-object v0, Lals$1;->a:[I

    invoke-virtual {p1}, Lalo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 552
    invoke-static {p0, p2}, Lals;->a(Ljava/lang/String;Lale;)V

    goto :goto_0

    .line 555
    :cond_0
    new-instance p0, Lald;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lald;-><init>(Ljava/lang/String;)V

    throw p0

    .line 549
    :cond_1
    invoke-static {p0, p2, p3}, Lals;->a(Ljava/lang/String;Lale;Ljava/nio/charset/Charset;)V

    goto :goto_0

    .line 546
    :cond_2
    invoke-static {p0, p2}, Lals;->b(Ljava/lang/CharSequence;Lale;)V

    goto :goto_0

    .line 543
    :cond_3
    invoke-static {p0, p2}, Lals;->a(Ljava/lang/CharSequence;Lale;)V

    :goto_0
    return-void
.end method

.method static a(ILalp;Laln;)Z
    .locals 1

    .line 330
    invoke-virtual {p1}, Lalp;->b()I

    move-result v0

    .line 332
    invoke-virtual {p1, p2}, Lalp;->a(Laln;)Lalp$b;

    move-result-object p1

    .line 333
    invoke-virtual {p1}, Lalp$b;->c()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 336
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 5

    .line 280
    sget-object v0, Lali;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 281
    array-length v0, p0

    .line 282
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_4

    .line 286
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

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

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method static a([BI)[B
    .locals 5

    .line 501
    array-length v0, p0

    add-int v1, v0, p1

    .line 502
    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 504
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    :cond_0
    new-instance p0, Lall;

    sget-object v3, Lalj;->e:Lalj;

    invoke-direct {p0, v3}, Lall;-><init>(Lalj;)V

    invoke-virtual {p0, v1, p1}, Lall;->a([II)V

    .line 508
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 510
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Lale;)V
    .locals 5

    .line 584
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 587
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lals;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 592
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lals;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 597
    invoke-virtual {p1, v2, v3}, Lale;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 594
    :cond_0
    new-instance p0, Lald;

    invoke-direct {p0}, Lald;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 601
    invoke-virtual {p1, v2, v1}, Lale;->a(II)V

    move v1, v4

    goto :goto_0

    .line 589
    :cond_2
    new-instance p0, Lald;

    invoke-direct {p0}, Lald;-><init>()V

    throw p0

    :cond_3
    return-void
.end method
