.class public Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;
.super Ljava/lang/Object;
.source "ArrowUtils.java"


# static fields
.field static final DECIMAL_TYPE_WIDTH:B = 0x10t

.field static final LITTLE_ENDIAN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->LITTLE_ENDIAN:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDecimal(Lorg/apache/arrow/vector/DecimalVector;ILjava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_2

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 200
    array-length v2, v0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->setDecimal(Lorg/apache/arrow/vector/DecimalVector;I[BII)V

    .line 203
    :cond_1
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object p2

    .line 204
    array-length v0, p2

    invoke-static {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->setDecimal(Lorg/apache/arrow/vector/DecimalVector;I[CII)V

    return-void

    .line 194
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/arrow/vector/DecimalVector;->setNull(I)V

    return-void
.end method

.method public static setDecimal(Lorg/apache/arrow/vector/DecimalVector;ILjava/math/BigDecimal;)V
    .locals 4

    .line 404
    invoke-virtual {p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v0

    .line 405
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x2

    .line 406
    invoke-virtual {p2, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p2

    .line 408
    :cond_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    .line 409
    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 410
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->FIELD_DECIMAL_INT_COMPACT_OFFSET:J

    invoke-virtual {v0, p2, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {p0}, Lorg/apache/arrow/vector/DecimalVector;->getValidityBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object p2

    int-to-long v2, p1

    invoke-static {p2, v2, v3}, Lorg/apache/arrow/vector/BitVectorHelper;->setBit(Lorg/apache/arrow/memory/ArrowBuf;J)V

    .line 413
    invoke-virtual {p0}, Lorg/apache/arrow/vector/DecimalVector;->getDataBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object p0

    const-wide/16 p1, 0x10

    mul-long/2addr v2, p1

    .line 415
    sget-boolean p1, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->LITTLE_ENDIAN:Z

    if-eqz p1, :cond_1

    .line 418
    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    .line 421
    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    .line 422
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p1

    const-wide/16 v0, 0x8

    add-long/2addr v2, v0

    .line 423
    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    :goto_0
    return-void

    .line 429
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/DecimalVector;->set(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public static setDecimal(Lorg/apache/arrow/vector/DecimalVector;I[BII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 316
    aget-byte v3, p2, p3

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, p3, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x14

    if-le v2, v7, :cond_1

    if-eqz v6, :cond_10

    const/16 v7, 0x15

    if-ne v2, v7, :cond_10

    :cond_1
    add-int v7, p3, v2

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    move v13, v9

    move-wide v14, v10

    const/4 v12, 0x0

    :goto_1
    const-wide/16 v16, 0xa

    if-ge v3, v7, :cond_5

    .line 327
    aget-byte v4, p2, v3

    const/16 v8, 0x2e

    if-ne v4, v8, :cond_3

    add-int/lit8 v12, v12, 0x1

    if-le v12, v5, :cond_2

    goto :goto_3

    :cond_2
    move v13, v3

    move/from16 v18, v6

    goto :goto_2

    :cond_3
    const/16 v8, 0x30

    if-lt v4, v8, :cond_4

    const/16 v8, 0x39

    if-gt v4, v8, :cond_4

    mul-long v14, v14, v16

    add-int/lit8 v4, v4, -0x30

    move/from16 v18, v6

    int-to-long v5, v4

    add-long/2addr v14, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v18

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move/from16 v18, v6

    const-wide/16 v14, -0x1

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v18, v6

    :goto_4
    cmp-long v3, v14, v10

    if-ltz v3, :cond_10

    const/4 v3, 0x1

    if-gt v12, v3, :cond_10

    if-eq v13, v9, :cond_6

    sub-int v13, v13, p3

    sub-int/2addr v2, v13

    sub-int/2addr v2, v3

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 349
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v4

    if-le v4, v2, :cond_8

    move v5, v2

    move-wide v6, v14

    :goto_6
    if-ge v5, v4, :cond_a

    mul-long v6, v6, v16

    cmp-long v8, v6, v10

    if-gez v8, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    if-ge v4, v2, :cond_9

    move v4, v3

    move-wide v6, v14

    goto :goto_7

    :cond_9
    move-wide v6, v14

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_d

    if-eqz v18, :cond_b

    neg-long v6, v6

    .line 366
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getValidityBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lorg/apache/arrow/vector/BitVectorHelper;->setBit(Lorg/apache/arrow/memory/ArrowBuf;J)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getDataBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object v0

    const-wide/16 v1, 0x10

    mul-long/2addr v3, v1

    .line 370
    sget-boolean v1, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->LITTLE_ENDIAN:Z

    if-eqz v1, :cond_c

    .line 373
    invoke-virtual {v0, v3, v4, v6, v7}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    goto :goto_8

    .line 376
    :cond_c
    invoke-virtual {v0, v3, v4, v10, v11}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    .line 377
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    .line 378
    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    :goto_8
    return-void

    :cond_d
    if-eqz v18, :cond_e

    neg-long v14, v14

    .line 387
    :cond_e
    invoke-static {v14, v15, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    .line 388
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 389
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 391
    :cond_f
    invoke-virtual {v0, v1, v2}, Lorg/apache/arrow/vector/DecimalVector;->set(ILjava/math/BigDecimal;)V

    return-void

    .line 396
    :cond_10
    invoke-static/range {p2 .. p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([BII)Ljava/math/BigDecimal;

    move-result-object v2

    .line 397
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-eq v3, v4, :cond_11

    .line 398
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 400
    :cond_11
    invoke-virtual {v0, v1, v2}, Lorg/apache/arrow/vector/DecimalVector;->set(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public static setDecimal(Lorg/apache/arrow/vector/DecimalVector;I[CII)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p4

    .line 226
    aget-char v3, p2, p3

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_0

    add-int/lit8 v3, p3, 0x1

    move v6, v5

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x14

    if-le v2, v7, :cond_1

    if-eqz v6, :cond_10

    const/16 v7, 0x15

    if-ne v2, v7, :cond_10

    :cond_1
    add-int v7, p3, v2

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    move v13, v9

    move-wide v14, v10

    const/4 v12, 0x0

    :goto_1
    const-wide/16 v16, 0xa

    if-ge v3, v7, :cond_5

    .line 237
    aget-char v4, p2, v3

    const/16 v8, 0x2e

    if-ne v4, v8, :cond_3

    add-int/lit8 v12, v12, 0x1

    if-le v12, v5, :cond_2

    goto :goto_3

    :cond_2
    move v13, v3

    move/from16 v18, v6

    goto :goto_2

    :cond_3
    const/16 v8, 0x30

    if-lt v4, v8, :cond_4

    const/16 v8, 0x39

    if-gt v4, v8, :cond_4

    mul-long v14, v14, v16

    add-int/lit8 v4, v4, -0x30

    move/from16 v18, v6

    int-to-long v5, v4

    add-long/2addr v14, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v18

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move/from16 v18, v6

    const-wide/16 v14, -0x1

    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v18, v6

    :goto_4
    cmp-long v3, v14, v10

    if-ltz v3, :cond_10

    const/4 v3, 0x1

    if-gt v12, v3, :cond_10

    if-eq v13, v9, :cond_6

    sub-int v13, v13, p3

    sub-int/2addr v2, v13

    sub-int/2addr v2, v3

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 259
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v4

    if-le v4, v2, :cond_8

    move v5, v2

    move-wide v6, v14

    :goto_6
    if-ge v5, v4, :cond_a

    mul-long v6, v6, v16

    cmp-long v8, v6, v10

    if-gez v8, :cond_7

    move v4, v3

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    if-ge v4, v2, :cond_9

    move v4, v3

    move-wide v6, v14

    goto :goto_7

    :cond_9
    move-wide v6, v14

    :cond_a
    const/4 v4, 0x0

    :goto_7
    if-nez v4, :cond_d

    if-eqz v18, :cond_b

    neg-long v6, v6

    .line 276
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getValidityBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lorg/apache/arrow/vector/BitVectorHelper;->setBit(Lorg/apache/arrow/memory/ArrowBuf;J)V

    .line 278
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getDataBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object v0

    const-wide/16 v1, 0x10

    mul-long/2addr v3, v1

    .line 280
    sget-boolean v1, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->LITTLE_ENDIAN:Z

    if-eqz v1, :cond_c

    .line 283
    invoke-virtual {v0, v3, v4, v6, v7}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    goto :goto_8

    .line 286
    :cond_c
    invoke-virtual {v0, v3, v4, v10, v11}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    .line 287
    invoke-static {v6, v7}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v1

    const-wide/16 v5, 0x8

    add-long/2addr v3, v5

    .line 288
    invoke-virtual {v0, v3, v4, v1, v2}, Lorg/apache/arrow/memory/ArrowBuf;->setLong(JJ)V

    :goto_8
    return-void

    :cond_d
    if-eqz v18, :cond_e

    neg-long v14, v14

    .line 297
    :cond_e
    invoke-static {v14, v15, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-eq v3, v4, :cond_f

    .line 299
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 301
    :cond_f
    invoke-virtual {v0, v1, v2}, Lorg/apache/arrow/vector/DecimalVector;->set(ILjava/math/BigDecimal;)V

    return-void

    .line 306
    :cond_10
    invoke-static/range {p2 .. p4}, Lcom/alibaba/fastjson2/util/TypeUtils;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v2

    .line 307
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    if-eq v3, v4, :cond_11

    .line 308
    invoke-virtual/range {p0 .. p0}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    .line 310
    :cond_11
    invoke-virtual {v0, v1, v2}, Lorg/apache/arrow/vector/DecimalVector;->set(ILjava/math/BigDecimal;)V

    return-void
.end method

.method public static setString(Lorg/apache/arrow/vector/VarCharVector;ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CODER:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_VALUE:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    .line 217
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    .line 220
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/VarCharVector;->set(I[B)V

    return-void

    .line 209
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/arrow/vector/VarCharVector;->setNull(I)V

    return-void
.end method

.method public static setValue(Lorg/apache/arrow/vector/FieldVector;ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_f

    .line 107
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 111
    :cond_0
    instance-of v0, p0, Lorg/apache/arrow/vector/IntVector;

    if-eqz v0, :cond_1

    .line 112
    check-cast p0, Lorg/apache/arrow/vector/IntVector;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/IntVector;->set(II)V

    return-void

    .line 116
    :cond_1
    instance-of v0, p0, Lorg/apache/arrow/vector/BigIntVector;

    if-eqz v0, :cond_2

    .line 117
    check-cast p0, Lorg/apache/arrow/vector/BigIntVector;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/arrow/vector/BigIntVector;->set(IJ)V

    return-void

    .line 121
    :cond_2
    instance-of v0, p0, Lorg/apache/arrow/vector/DecimalVector;

    if-eqz v0, :cond_3

    .line 122
    check-cast p0, Lorg/apache/arrow/vector/DecimalVector;

    .line 123
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->setDecimal(Lorg/apache/arrow/vector/DecimalVector;ILjava/lang/String;)V

    return-void

    .line 127
    :cond_3
    instance-of v0, p0, Lorg/apache/arrow/vector/DateMilliVector;

    if-eqz v0, :cond_4

    .line 128
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 129
    check-cast p0, Lorg/apache/arrow/vector/DateMilliVector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/arrow/vector/DateMilliVector;->set(IJ)V

    return-void

    .line 133
    :cond_4
    instance-of v0, p0, Lorg/apache/arrow/vector/VarCharVector;

    if-eqz v0, :cond_5

    .line 134
    check-cast p0, Lorg/apache/arrow/vector/VarCharVector;

    .line 135
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->setString(Lorg/apache/arrow/vector/VarCharVector;ILjava/lang/String;)V

    return-void

    .line 139
    :cond_5
    instance-of v0, p0, Lorg/apache/arrow/vector/Float8Vector;

    if-eqz v0, :cond_6

    .line 140
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 141
    check-cast p0, Lorg/apache/arrow/vector/Float8Vector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/arrow/vector/Float8Vector;->set(ID)V

    return-void

    .line 145
    :cond_6
    instance-of v0, p0, Lorg/apache/arrow/vector/Float4Vector;

    if-eqz v0, :cond_7

    .line 146
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 147
    check-cast p0, Lorg/apache/arrow/vector/Float4Vector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/Float4Vector;->set(IF)V

    return-void

    .line 151
    :cond_7
    instance-of v0, p0, Lorg/apache/arrow/vector/TinyIntVector;

    if-eqz v0, :cond_8

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 153
    check-cast p0, Lorg/apache/arrow/vector/TinyIntVector;

    int-to-byte p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/TinyIntVector;->set(IB)V

    return-void

    .line 157
    :cond_8
    instance-of v0, p0, Lorg/apache/arrow/vector/SmallIntVector;

    if-eqz v0, :cond_9

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 159
    check-cast p0, Lorg/apache/arrow/vector/SmallIntVector;

    int-to-short p2, p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/SmallIntVector;->set(IS)V

    return-void

    .line 163
    :cond_9
    instance-of v0, p0, Lorg/apache/arrow/vector/TimeStampMilliVector;

    if-eqz v0, :cond_a

    .line 164
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/DateUtils;->parseMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 165
    check-cast p0, Lorg/apache/arrow/vector/TimeStampMilliVector;

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/arrow/vector/TimeStampMilliVector;->set(IJ)V

    return-void

    .line 169
    :cond_a
    instance-of v0, p0, Lorg/apache/arrow/vector/BitVector;

    if-eqz v0, :cond_c

    .line 170
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_b

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 173
    check-cast p0, Lorg/apache/arrow/vector/BitVector;

    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/BitVector;->set(II)V

    :cond_b
    return-void

    .line 178
    :cond_c
    instance-of v0, p0, Lorg/apache/arrow/vector/Decimal256Vector;

    if-eqz v0, :cond_e

    .line 179
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 180
    check-cast p0, Lorg/apache/arrow/vector/Decimal256Vector;

    .line 181
    invoke-virtual {p0}, Lorg/apache/arrow/vector/Decimal256Vector;->getScale()I

    move-result v0

    .line 182
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    if-eq v1, v0, :cond_d

    .line 183
    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->setScale(I)Ljava/math/BigDecimal;

    move-result-object p2

    .line 185
    :cond_d
    invoke-virtual {p0, p1, p2}, Lorg/apache/arrow/vector/Decimal256Vector;->set(ILjava/math/BigDecimal;)V

    return-void

    .line 189
    :cond_e
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TODO "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    :goto_0
    return-void
.end method

.method public static write(Lcom/alibaba/fastjson2/support/csv/CSVWriter;Lorg/apache/arrow/vector/VectorSchemaRoot;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getFieldVectors()Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lorg/apache/arrow/vector/VectorSchemaRoot;->getRowCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_e

    move v3, v1

    .line 28
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeComma()V

    .line 33
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/arrow/vector/FieldVector;

    .line 34
    invoke-interface {v4, v2}, Lorg/apache/arrow/vector/FieldVector;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_2

    .line 38
    :cond_1
    instance-of v5, v4, Lorg/apache/arrow/vector/IntVector;

    if-eqz v5, :cond_2

    .line 39
    check-cast v4, Lorg/apache/arrow/vector/IntVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/IntVector;->get(I)I

    move-result v4

    .line 40
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto/16 :goto_2

    .line 41
    :cond_2
    instance-of v5, v4, Lorg/apache/arrow/vector/BigIntVector;

    if-eqz v5, :cond_3

    .line 42
    check-cast v4, Lorg/apache/arrow/vector/BigIntVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/BigIntVector;->get(I)J

    move-result-wide v4

    .line 43
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt64(J)V

    goto/16 :goto_2

    .line 44
    :cond_3
    instance-of v5, v4, Lorg/apache/arrow/vector/VarCharVector;

    if-eqz v5, :cond_4

    .line 45
    check-cast v4, Lorg/apache/arrow/vector/VarCharVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/VarCharVector;->get(I)[B

    move-result-object v4

    .line 46
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeString([B)V

    goto/16 :goto_2

    .line 47
    :cond_4
    instance-of v5, v4, Lorg/apache/arrow/vector/DecimalVector;

    if-eqz v5, :cond_5

    .line 48
    check-cast v4, Lorg/apache/arrow/vector/DecimalVector;

    .line 49
    invoke-static {p0, v2, v4}, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->writeDecimal(Lcom/alibaba/fastjson2/support/csv/CSVWriter;ILorg/apache/arrow/vector/DecimalVector;)V

    goto :goto_2

    .line 50
    :cond_5
    instance-of v5, v4, Lorg/apache/arrow/vector/DateMilliVector;

    if-eqz v5, :cond_6

    .line 51
    check-cast v4, Lorg/apache/arrow/vector/DateMilliVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/DateMilliVector;->get(I)J

    move-result-wide v4

    .line 52
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDate(J)V

    goto :goto_2

    .line 53
    :cond_6
    instance-of v5, v4, Lorg/apache/arrow/vector/Float8Vector;

    if-eqz v5, :cond_7

    .line 54
    check-cast v4, Lorg/apache/arrow/vector/Float8Vector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/Float8Vector;->get(I)D

    move-result-wide v4

    .line 55
    invoke-virtual {p0, v4, v5}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDouble(D)V

    goto :goto_2

    .line 56
    :cond_7
    instance-of v5, v4, Lorg/apache/arrow/vector/Float4Vector;

    if-eqz v5, :cond_8

    .line 57
    check-cast v4, Lorg/apache/arrow/vector/Float4Vector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/Float4Vector;->get(I)F

    move-result v4

    .line 58
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeFloat(F)V

    goto :goto_2

    .line 59
    :cond_8
    instance-of v5, v4, Lorg/apache/arrow/vector/SmallIntVector;

    if-eqz v5, :cond_9

    .line 60
    check-cast v4, Lorg/apache/arrow/vector/SmallIntVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/SmallIntVector;->get(I)S

    move-result v4

    .line 61
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto :goto_2

    .line 62
    :cond_9
    instance-of v5, v4, Lorg/apache/arrow/vector/TinyIntVector;

    if-eqz v5, :cond_a

    .line 63
    check-cast v4, Lorg/apache/arrow/vector/TinyIntVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/TinyIntVector;->get(I)B

    move-result v4

    int-to-short v4, v4

    .line 64
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto :goto_2

    .line 65
    :cond_a
    instance-of v5, v4, Lorg/apache/arrow/vector/BitVector;

    if-eqz v5, :cond_b

    .line 66
    check-cast v4, Lorg/apache/arrow/vector/BitVector;

    invoke-virtual {v4, v2}, Lorg/apache/arrow/vector/BitVector;->get(I)I

    move-result v4

    .line 67
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeInt32(I)V

    goto :goto_2

    .line 68
    :cond_b
    instance-of v5, v4, Lorg/apache/arrow/vector/Decimal256Vector;

    if-eqz v5, :cond_c

    .line 69
    invoke-interface {v4, v2}, Lorg/apache/arrow/vector/FieldVector;->getObject(I)Ljava/lang/Object;

    move-result-object v4

    .line 70
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeString(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 72
    :cond_c
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TODO : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeLine()V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private static writeDecimal(Lcom/alibaba/fastjson2/support/csv/CSVWriter;ILorg/apache/arrow/vector/DecimalVector;)V
    .locals 4

    .line 85
    invoke-virtual {p2}, Lorg/apache/arrow/vector/DecimalVector;->getPrecision()I

    move-result v0

    .line 87
    invoke-virtual {p2, p1}, Lorg/apache/arrow/vector/DecimalVector;->getObject(I)Ljava/math/BigDecimal;

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    int-to-long v0, p1

    const-wide/16 v2, 0x10

    mul-long/2addr v0, v2

    .line 90
    invoke-virtual {p2}, Lorg/apache/arrow/vector/DecimalVector;->getScale()I

    move-result p1

    .line 92
    invoke-virtual {p2}, Lorg/apache/arrow/vector/DecimalVector;->getDataBuffer()Lorg/apache/arrow/memory/ArrowBuf;

    move-result-object p2

    .line 93
    sget-boolean v2, Lcom/alibaba/fastjson2/support/arrow/ArrowUtils;->LITTLE_ENDIAN:Z

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p2, v0, v1}, Lorg/apache/arrow/memory/ArrowBuf;->getLong(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    .line 96
    invoke-virtual {p2, v0, v1}, Lorg/apache/arrow/memory/ArrowBuf;->getLong(J)J

    move-result-wide v0

    .line 97
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 99
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDecimal(JI)V

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/arrow/vector/DecimalVector;->getObject(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/csv/CSVWriter;->writeDecimal(Ljava/math/BigDecimal;)V

    :goto_1
    return-void
.end method
