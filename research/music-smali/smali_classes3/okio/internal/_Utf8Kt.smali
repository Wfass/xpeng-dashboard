.class public final Lokio/internal/_Utf8Kt;
.super Ljava/lang/Object;
.source "-Utf8.kt"


# annotations
.annotation runtime Lkotlin/j;
.end annotation


# direct methods
.method public static final commonAsUtf8ToByteArray(Ljava/lang/String;)[B
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    if-lez v1, :cond_b

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 47
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x80

    .line 48
    invoke-static {v6, v7}, Lccf;->a(II)I

    move-result v8

    if-ltz v8, :cond_9

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v4

    :cond_0
    :goto_1
    if-ge v4, v1, :cond_8

    .line 241
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 244
    invoke-static {v6, v7}, Lccf;->a(II)I

    move-result v8

    if-gez v8, :cond_1

    int-to-byte v6, v6

    add-int/lit8 v8, v5, 0x1

    .line 51
    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    :goto_2
    move v5, v8

    if-ge v4, v1, :cond_0

    .line 250
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Lccf;->a(II)I

    move-result v6

    if-gez v6, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 251
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    add-int/lit8 v8, v5, 0x1

    .line 51
    aput-byte v4, v0, v5

    move v4, v6

    goto :goto_2

    :cond_1
    const/16 v8, 0x800

    .line 255
    invoke-static {v6, v8}, Lccf;->a(II)I

    move-result v8

    if-gez v8, :cond_2

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    .line 51
    aput-byte v8, v0, v5

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v9, 0x1

    aput-byte v5, v0, v9

    :goto_3
    add-int/lit8 v4, v4, 0x1

    :goto_4
    move v5, v6

    goto :goto_1

    :cond_2
    const v8, 0xd800

    const v9, 0xdfff

    const/4 v10, 0x1

    if-gt v8, v6, :cond_3

    if-gt v6, v9, :cond_3

    move v8, v10

    goto :goto_5

    :cond_3
    move v8, v3

    :goto_5
    const/16 v11, 0x3f

    if-nez v8, :cond_4

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    aput-byte v8, v0, v5

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v8, v9, 0x1

    aput-byte v5, v0, v9

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v8, 0x1

    aput-byte v5, v0, v8

    goto :goto_3

    :cond_4
    const v8, 0xdbff

    .line 278
    invoke-static {v6, v8}, Lccf;->a(II)I

    move-result v8

    if-gtz v8, :cond_7

    add-int/lit8 v8, v4, 0x1

    if-le v1, v8, :cond_7

    .line 280
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const v13, 0xdc00

    if-gt v13, v12, :cond_5

    if-gt v12, v9, :cond_5

    goto :goto_6

    :cond_5
    move v10, v3

    :goto_6
    if-nez v10, :cond_6

    goto :goto_7

    :cond_6
    shl-int/lit8 v6, v6, 0xa

    .line 289
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/2addr v6, v8

    const v8, -0x35fdc00

    add-int/2addr v6, v8

    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    add-int/lit8 v9, v5, 0x1

    .line 51
    aput-byte v8, v0, v5

    shr-int/lit8 v5, v6, 0xc

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v8, v9, 0x1

    aput-byte v5, v0, v9

    shr-int/lit8 v5, v6, 0x6

    and-int/2addr v5, v11

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v9, v8, 0x1

    aput-byte v5, v0, v8

    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    add-int/lit8 v6, v9, 0x1

    aput-byte v5, v0, v9

    add-int/lit8 v4, v4, 0x2

    goto :goto_4

    :cond_7
    :goto_7
    add-int/lit8 v6, v5, 0x1

    aput-byte v11, v0, v5

    goto/16 :goto_3

    .line 53
    :cond_8
    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_9
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v0, v4

    if-lt v5, v1, :cond_a

    goto :goto_8

    :cond_a
    move v4, v5

    goto/16 :goto_0

    .line 58
    :cond_b
    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-static {p0, v2}, Lccf;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final commonToUtf8String([BII)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lccf;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v1, :cond_27

    .line 28
    array-length v3, v0

    if-gt v2, v3, :cond_27

    if-gt v1, v2, :cond_27

    sub-int v3, v2, v1

    .line 31
    new-array v3, v3, [C

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_26

    .line 63
    aget-byte v6, v0, v1

    if-ltz v6, :cond_1

    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    :goto_1
    move v5, v7

    if-ge v1, v2, :cond_0

    .line 72
    aget-byte v6, v0, v1

    if-ltz v6, :cond_0

    add-int/lit8 v6, v1, 0x1

    .line 73
    aget-byte v1, v0, v1

    int-to-char v1, v1

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v1, v3, v5

    move v1, v6

    goto :goto_1

    :cond_1
    shr-int/lit8 v7, v6, 0x5

    const/4 v8, -0x2

    const/16 v10, 0x80

    const v11, 0xfffd

    if-ne v7, v8, :cond_8

    add-int/lit8 v6, v1, 0x1

    if-gt v2, v6, :cond_3

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    .line 36
    :goto_2
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    :cond_2
    :goto_3
    move v5, v7

    const/4 v12, 0x1

    goto :goto_7

    .line 85
    :cond_3
    aget-byte v7, v0, v1

    .line 86
    aget-byte v6, v0, v6

    and-int/lit16 v8, v6, 0xc0

    if-ne v8, v10, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    move v8, v4

    :goto_4
    if-nez v8, :cond_5

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    goto :goto_2

    :cond_5
    xor-int/lit16 v6, v6, 0xf80

    shl-int/lit8 v7, v7, 0x6

    xor-int/2addr v6, v7

    if-ge v6, v10, :cond_6

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_5

    :cond_6
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    .line 36
    :goto_5
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    :cond_7
    :goto_6
    move v5, v7

    const/4 v12, 0x2

    :goto_7
    add-int/2addr v1, v12

    goto :goto_0

    :cond_8
    shr-int/lit8 v7, v6, 0x4

    const v13, 0xdfff

    const v14, 0xd800

    const/4 v15, 0x3

    if-ne v7, v8, :cond_12

    add-int/lit8 v6, v1, 0x2

    if-gt v2, v6, :cond_a

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 36
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_2

    .line 116
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_9

    const/4 v5, 0x1

    goto :goto_8

    :cond_9
    move v5, v4

    :goto_8
    if-nez v5, :cond_7

    goto :goto_3

    .line 125
    :cond_a
    aget-byte v7, v0, v1

    add-int/lit8 v8, v1, 0x1

    .line 126
    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_b

    const/4 v9, 0x1

    goto :goto_9

    :cond_b
    move v9, v4

    :goto_9
    if-nez v9, :cond_c

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 36
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_3

    .line 132
    :cond_c
    aget-byte v6, v0, v6

    and-int/lit16 v9, v6, 0xc0

    if-ne v9, v10, :cond_d

    const/4 v9, 0x1

    goto :goto_a

    :cond_d
    move v9, v4

    :goto_a
    if-nez v9, :cond_e

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 36
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_6

    :cond_e
    const v9, -0x1e080

    xor-int/2addr v6, v9

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v6, v8

    shl-int/lit8 v7, v7, 0xc

    xor-int/2addr v6, v7

    const/16 v7, 0x800

    if-ge v6, v7, :cond_f

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    .line 36
    :goto_b
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_d

    :cond_f
    if-gt v14, v6, :cond_10

    if-gt v6, v13, :cond_10

    const/4 v12, 0x1

    goto :goto_c

    :cond_10
    move v12, v4

    :goto_c
    if-eqz v12, :cond_11

    int-to-char v6, v11

    add-int/lit8 v7, v5, 0x1

    .line 35
    aput-char v6, v3, v5

    goto :goto_b

    :cond_11
    int-to-char v6, v6

    add-int/lit8 v7, v5, 0x1

    aput-char v6, v3, v5

    goto :goto_b

    :goto_d
    move v5, v7

    move v12, v15

    goto :goto_7

    :cond_12
    shr-int/lit8 v6, v6, 0x3

    if-ne v6, v8, :cond_25

    add-int/lit8 v6, v1, 0x3

    if-gt v2, v6, :cond_19

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    .line 176
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    add-int/lit8 v5, v1, 0x1

    if-le v2, v5, :cond_18

    .line 177
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_13

    const/4 v5, 0x1

    goto :goto_e

    :cond_13
    move v5, v4

    :goto_e
    if-nez v5, :cond_14

    goto :goto_12

    :cond_14
    add-int/lit8 v5, v1, 0x2

    if-le v2, v5, :cond_17

    .line 180
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xc0

    if-ne v5, v10, :cond_15

    const/4 v12, 0x1

    goto :goto_f

    :cond_15
    move v12, v4

    :goto_f
    if-nez v12, :cond_16

    goto :goto_11

    :cond_16
    :goto_10
    move v5, v6

    goto/16 :goto_19

    :cond_17
    :goto_11
    move v5, v6

    const/4 v15, 0x2

    goto/16 :goto_19

    :cond_18
    :goto_12
    move v5, v6

    const/4 v15, 0x1

    goto/16 :goto_19

    .line 189
    :cond_19
    aget-byte v7, v0, v1

    add-int/lit8 v8, v1, 0x1

    .line 190
    aget-byte v8, v0, v8

    and-int/lit16 v9, v8, 0xc0

    if-ne v9, v10, :cond_1a

    const/4 v9, 0x1

    goto :goto_13

    :cond_1a
    move v9, v4

    :goto_13
    if-nez v9, :cond_1b

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 176
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_12

    :cond_1b
    add-int/lit8 v9, v1, 0x2

    .line 196
    aget-byte v9, v0, v9

    and-int/lit16 v12, v9, 0xc0

    if-ne v12, v10, :cond_1c

    const/4 v12, 0x1

    goto :goto_14

    :cond_1c
    move v12, v4

    :goto_14
    if-nez v12, :cond_1d

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 176
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_11

    .line 202
    :cond_1d
    aget-byte v6, v0, v6

    and-int/lit16 v12, v6, 0xc0

    if-ne v12, v10, :cond_1e

    const/4 v10, 0x1

    goto :goto_15

    :cond_1e
    move v10, v4

    :goto_15
    if-nez v10, :cond_1f

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 176
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_10

    :cond_1f
    const v10, 0x381f80

    xor-int/2addr v6, v10

    shl-int/lit8 v9, v9, 0x6

    xor-int/2addr v6, v9

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v6, v8

    shl-int/lit8 v7, v7, 0x12

    xor-int/2addr v6, v7

    const v7, 0x10ffff

    if-le v6, v7, :cond_20

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    .line 176
    :goto_16
    sget-object v5, Lkotlin/w;->a:Lkotlin/w;

    goto :goto_18

    :cond_20
    if-gt v14, v6, :cond_21

    if-gt v6, v13, :cond_21

    const/16 v16, 0x1

    goto :goto_17

    :cond_21
    move/from16 v16, v4

    :goto_17
    if-eqz v16, :cond_22

    add-int/lit8 v6, v5, 0x1

    .line 35
    aput-char v11, v3, v5

    goto :goto_16

    :cond_22
    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_23

    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_16

    :cond_23
    if-eq v6, v11, :cond_24

    ushr-int/lit8 v7, v6, 0xa

    const v8, 0xd7c0

    add-int/2addr v7, v8

    int-to-char v7, v7

    add-int/lit8 v8, v5, 0x1

    aput-char v7, v3, v5

    and-int/lit16 v5, v6, 0x3ff

    const v6, 0xdc00

    add-int/2addr v5, v6

    int-to-char v5, v5

    add-int/lit8 v6, v8, 0x1

    aput-char v5, v3, v8

    goto :goto_16

    :cond_24
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    goto :goto_16

    :goto_18
    const/4 v9, 0x4

    move v5, v6

    move v15, v9

    :goto_19
    add-int/2addr v1, v15

    goto/16 :goto_0

    :cond_25
    add-int/lit8 v6, v5, 0x1

    aput-char v11, v3, v5

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    goto/16 :goto_0

    .line 38
    :cond_26
    invoke-static {v3, v4, v5}, Lkotlin/text/j;->a([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 29
    :cond_27
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " beginIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static synthetic commonToUtf8String$default([BIIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 27
    array-length p2, p0

    :cond_1
    invoke-static {p0, p1, p2}, Lokio/internal/_Utf8Kt;->commonToUtf8String([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
