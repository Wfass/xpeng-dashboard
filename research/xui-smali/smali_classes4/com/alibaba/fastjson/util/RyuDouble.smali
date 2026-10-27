.class public final Lcom/alibaba/fastjson/util/RyuDouble;
.super Ljava/lang/Object;
.source "RyuDouble.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 23
    const/16 v0, 0x146

    const/4 v1, 0x4

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    .line 24
    const/16 v2, 0x123

    filled-new-array {v2, v1}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    sput-object v2, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    .line 27
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 28
    .local v2, "mask":Ljava/math/BigInteger;
    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 29
    .local v4, "invMask":Ljava/math/BigInteger;
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_5

    .line 30
    const-wide/16 v7, 0x5

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 31
    .local v7, "pow":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    .line 32
    .local v8, "pow5len":I
    if-nez v6, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    int-to-long v9, v6

    const-wide/32 v11, 0x1624c50

    mul-long/2addr v9, v11

    const-wide/32 v11, 0x989680

    add-long/2addr v9, v11

    const-wide/16 v13, 0x1

    sub-long/2addr v9, v13

    div-long/2addr v9, v11

    long-to-int v9, v9

    .line 33
    .local v9, "expectedPow5Bits":I
    :goto_1
    if-ne v9, v8, :cond_4

    .line 36
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    array-length v10, v10

    if-ge v6, v10, :cond_1

    .line 37
    move v10, v5

    .local v10, "j":I
    :goto_2
    if-ge v10, v1, :cond_1

    .line 38
    sget-object v11, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v11, v11, v6

    add-int/lit8 v12, v8, -0x79

    rsub-int/lit8 v13, v10, 0x3

    mul-int/2addr v13, v3

    add-int/2addr v12, v13

    .line 39
    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 40
    invoke-virtual {v12, v2}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 41
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    aput v12, v11, v10

    .line 37
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 45
    .end local v10    # "j":I
    :cond_1
    sget-object v10, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    array-length v10, v10

    if-ge v6, v10, :cond_3

    .line 47
    add-int/lit8 v10, v8, 0x79

    .line 48
    .restart local v10    # "j":I
    sget-object v11, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 49
    invoke-virtual {v11, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 50
    invoke-virtual {v11, v7}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 51
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 52
    .local v11, "inv":Ljava/math/BigInteger;
    move v12, v5

    .local v12, "k":I
    :goto_3
    if-ge v12, v1, :cond_3

    .line 53
    if-nez v12, :cond_2

    .line 54
    sget-object v13, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v13, v13, v6

    rsub-int/lit8 v14, v12, 0x3

    mul-int/2addr v14, v3

    .line 55
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    .line 56
    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    aput v14, v13, v12

    goto :goto_4

    .line 58
    :cond_2
    sget-object v13, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v13, v13, v6

    rsub-int/lit8 v14, v12, 0x3

    mul-int/2addr v14, v3

    .line 59
    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    .line 60
    invoke-virtual {v14, v4}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 61
    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v14

    aput v14, v13, v12

    .line 52
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 29
    .end local v7    # "pow":Ljava/math/BigInteger;
    .end local v8    # "pow5len":I
    .end local v9    # "expectedPow5Bits":I
    .end local v10    # "j":I
    .end local v11    # "inv":Ljava/math/BigInteger;
    .end local v12    # "k":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 34
    .restart local v7    # "pow":Ljava/math/BigInteger;
    .restart local v8    # "pow5len":I
    .restart local v9    # "expectedPow5Bits":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    .end local v2    # "mask":Ljava/math/BigInteger;
    .end local v4    # "invMask":Ljava/math/BigInteger;
    .end local v6    # "i":I
    .end local v7    # "pow":Ljava/math/BigInteger;
    .end local v8    # "pow5len":I
    .end local v9    # "expectedPow5Bits":I
    :cond_5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(D[CI)I
    .locals 127
    .param p0, "value"    # D
    .param p2, "result"    # [C
    .param p3, "off"    # I

    .line 75
    const-wide v4, 0xfffffffffffffL

    .line 76
    .local v4, "DOUBLE_MANTISSA_MASK":J
    const/16 v6, 0x7ff

    .line 77
    .local v6, "DOUBLE_EXPONENT_MASK":I
    const/16 v7, 0x3ff

    .line 78
    .local v7, "DOUBLE_EXPONENT_BIAS":I
    const-wide/32 v8, 0x6aa784

    .line 79
    .local v8, "LOG10_5_NUMERATOR":J
    const-wide/32 v10, 0x2deefb

    .line 83
    .local v10, "LOG10_2_NUMERATOR":J
    move/from16 v12, p3

    .line 84
    .local v12, "index":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 85
    add-int/lit8 v13, v12, 0x1

    .local v13, "index":I
    const/16 v14, 0x4e

    aput-char v14, p2, v12

    .line 86
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x61

    aput-char v14, p2, v13

    .line 87
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x4e

    aput-char v14, p2, v12

    .line 88
    .end local v12    # "index":I
    sub-int v12, v13, p3

    return v12

    .line 91
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_0
    const-wide/high16 v13, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v13, p0, v13

    if-nez v13, :cond_1

    .line 92
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x49

    aput-char v14, p2, v12

    .line 93
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x6e

    aput-char v14, p2, v13

    .line 94
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x66

    aput-char v14, p2, v12

    .line 95
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x69

    aput-char v14, p2, v13

    .line 96
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x6e

    aput-char v14, p2, v12

    .line 97
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x69

    aput-char v14, p2, v13

    .line 98
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x74

    aput-char v14, p2, v12

    .line 99
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x79

    aput-char v14, p2, v13

    .line 100
    .end local v13    # "index":I
    sub-int v13, v12, p3

    return v13

    .line 103
    :cond_1
    const-wide/high16 v13, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v13, p0, v13

    if-nez v13, :cond_2

    .line 104
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x2d

    aput-char v14, p2, v12

    .line 105
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x49

    aput-char v14, p2, v13

    .line 106
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x6e

    aput-char v14, p2, v12

    .line 107
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x66

    aput-char v14, p2, v13

    .line 108
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x69

    aput-char v14, p2, v12

    .line 109
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x6e

    aput-char v14, p2, v13

    .line 110
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x69

    aput-char v14, p2, v12

    .line 111
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x74

    aput-char v14, p2, v13

    .line 112
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x79

    aput-char v14, p2, v12

    .line 113
    .end local v12    # "index":I
    sub-int v12, v13, p3

    return v12

    .line 116
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v13

    .line 117
    .local v13, "bits":J
    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    const/16 v18, 0x2e

    const/16 v19, 0x30

    if-nez v17, :cond_3

    .line 118
    add-int/lit8 v15, v12, 0x1

    .local v15, "index":I
    aput-char v19, p2, v12

    .line 119
    .end local v12    # "index":I
    add-int/lit8 v12, v15, 0x1

    .restart local v12    # "index":I
    aput-char v18, p2, v15

    .line 120
    .end local v15    # "index":I
    add-int/lit8 v15, v12, 0x1

    .restart local v15    # "index":I
    aput-char v19, p2, v12

    .line 121
    .end local v12    # "index":I
    sub-int v12, v15, p3

    return v12

    .line 123
    .end local v15    # "index":I
    .restart local v12    # "index":I
    :cond_3
    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v17, v13, v20

    if-nez v17, :cond_4

    .line 124
    add-int/lit8 v15, v12, 0x1

    .restart local v15    # "index":I
    const/16 v16, 0x2d

    aput-char v16, p2, v12

    .line 125
    .end local v12    # "index":I
    add-int/lit8 v12, v15, 0x1

    .restart local v12    # "index":I
    aput-char v19, p2, v15

    .line 126
    .end local v15    # "index":I
    add-int/lit8 v15, v12, 0x1

    .restart local v15    # "index":I
    aput-char v18, p2, v12

    .line 127
    .end local v12    # "index":I
    add-int/lit8 v12, v15, 0x1

    .restart local v12    # "index":I
    aput-char v19, p2, v15

    .line 128
    .end local v15    # "index":I
    sub-int v15, v12, p3

    return v15

    .line 131
    :cond_4
    const/16 v17, 0x34

    .line 133
    .local v17, "DOUBLE_MANTISSA_BITS":I
    const/16 v20, 0x34

    ushr-long v20, v13, v20

    const-wide/16 v22, 0x7ff

    and-long v0, v20, v22

    long-to-int v0, v0

    .line 134
    .local v0, "ieeeExponent":I
    const-wide v20, 0xfffffffffffffL

    and-long v20, v13, v20

    .line 137
    .local v20, "ieeeMantissa":J
    if-nez v0, :cond_5

    .line 139
    const/16 v1, -0x432

    .line 140
    .local v1, "e2":I
    move-wide/from16 v22, v20

    .local v22, "m2":J
    goto :goto_0

    .line 143
    .end local v1    # "e2":I
    .end local v22    # "m2":J
    :cond_5
    add-int/lit16 v1, v0, -0x3ff

    add-int/lit8 v1, v1, -0x34

    .line 144
    .restart local v1    # "e2":I
    const-wide/high16 v22, 0x10000000000000L

    or-long v22, v20, v22

    .line 147
    .restart local v22    # "m2":J
    :goto_0
    cmp-long v24, v13, v15

    const/4 v15, 0x1

    if-gez v24, :cond_6

    move/from16 v16, v15

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    .line 150
    .local v16, "sign":Z
    :goto_1
    const-wide/16 v27, 0x1

    and-long v29, v22, v27

    const-wide/16 v24, 0x0

    cmp-long v29, v29, v24

    if-nez v29, :cond_7

    move/from16 v24, v15

    goto :goto_2

    :cond_7
    const/16 v24, 0x0

    .line 151
    .local v24, "even":Z
    :goto_2
    const-wide/16 v29, 0x4

    mul-long v29, v29, v22

    .line 152
    .local v29, "mv":J
    const-wide/16 v31, 0x4

    mul-long v31, v31, v22

    const-wide/16 v33, 0x2

    add-long v31, v31, v33

    .line 153
    .local v31, "mp":J
    const-wide/high16 v33, 0x10000000000000L

    cmp-long v33, v22, v33

    if-nez v33, :cond_9

    if-gt v0, v15, :cond_8

    goto :goto_3

    :cond_8
    const/16 v33, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v33, v15

    :goto_4
    move/from16 v35, v33

    .line 154
    .local v35, "mmShift":I
    const-wide/16 v33, 0x4

    mul-long v33, v33, v22

    sub-long v33, v33, v27

    move-wide/from16 v37, v4

    move/from16 v15, v35

    int-to-long v4, v15

    .end local v4    # "DOUBLE_MANTISSA_MASK":J
    .end local v35    # "mmShift":I
    .local v15, "mmShift":I
    .local v37, "DOUBLE_MANTISSA_MASK":J
    sub-long v33, v33, v4

    .line 155
    .local v33, "mm":J
    add-int/lit8 v1, v1, -0x2

    .line 161
    const/4 v4, 0x0

    .local v4, "dmIsTrailingZeros":Z
    const/4 v5, 0x0

    .line 162
    .local v5, "dvIsTrailingZeros":Z
    const-wide/32 v39, 0x7fffffff

    const-wide/32 v41, 0x989680

    move/from16 v43, v0

    .end local v0    # "ieeeExponent":I
    .local v43, "ieeeExponent":I
    const/16 v35, 0x3

    const/16 v45, 0x2

    const/16 v46, 0x1f

    if-ltz v1, :cond_23

    .line 163
    move/from16 v47, v4

    move/from16 v48, v5

    int-to-long v4, v1

    .end local v4    # "dmIsTrailingZeros":Z
    .end local v5    # "dvIsTrailingZeros":Z
    .local v47, "dmIsTrailingZeros":Z
    .local v48, "dvIsTrailingZeros":Z
    const-wide/32 v49, 0x2deefb

    mul-long v4, v4, v49

    div-long v4, v4, v41

    long-to-int v4, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 166
    .local v4, "q":I
    const/16 v5, 0x7a

    if-nez v4, :cond_a

    move/from16 v51, v1

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    move/from16 v51, v1

    int-to-long v0, v4

    .end local v1    # "e2":I
    .local v51, "e2":I
    const-wide/32 v49, 0x1624c50

    mul-long v0, v0, v49

    add-long v0, v0, v41

    sub-long v0, v0, v27

    div-long v0, v0, v41

    long-to-int v0, v0

    :goto_5
    add-int/2addr v5, v0

    const/4 v0, 0x1

    sub-int/2addr v5, v0

    .line 167
    .local v5, "k":I
    move/from16 v1, v51

    neg-int v0, v1

    .end local v51    # "e2":I
    .restart local v1    # "e2":I
    add-int/2addr v0, v4

    add-int/2addr v0, v5

    .line 169
    .local v0, "i":I
    add-int/lit8 v49, v0, -0x5d

    move/from16 v52, v0

    const/16 v44, 0x15

    add-int/lit8 v0, v49, -0x15

    .line 170
    .local v0, "actualShift":I
    .local v52, "i":I
    if-ltz v0, :cond_22

    .line 174
    sget-object v49, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_INV_SPLIT:[[I

    aget-object v49, v49, v4

    .line 176
    .local v49, "ints":[I
    ushr-long v50, v29, v46

    .line 177
    .local v50, "mHigh":J
    and-long v53, v29, v39

    .line 178
    .local v53, "mLow":J
    move/from16 v55, v5

    const/16 v26, 0x0

    aget v5, v49, v26

    .end local v5    # "k":I
    .local v55, "k":I
    move/from16 v56, v6

    int-to-long v5, v5

    .end local v6    # "DOUBLE_EXPONENT_MASK":I
    .local v56, "DOUBLE_EXPONENT_MASK":I
    mul-long v5, v5, v50

    .line 179
    .local v5, "bits13":J
    move/from16 v57, v7

    aget v7, v49, v26

    .end local v7    # "DOUBLE_EXPONENT_BIAS":I
    .local v57, "DOUBLE_EXPONENT_BIAS":I
    move-wide/from16 v58, v8

    int-to-long v7, v7

    .end local v8    # "LOG10_5_NUMERATOR":J
    .local v58, "LOG10_5_NUMERATOR":J
    mul-long v7, v7, v53

    .line 180
    .local v7, "bits03":J
    move-wide/from16 v60, v10

    const/4 v9, 0x1

    aget v10, v49, v9

    .end local v10    # "LOG10_2_NUMERATOR":J
    .local v60, "LOG10_2_NUMERATOR":J
    int-to-long v10, v10

    mul-long v10, v10, v50

    .line 181
    .local v10, "bits12":J
    move-wide/from16 v62, v13

    aget v13, v49, v9

    .end local v13    # "bits":J
    .local v62, "bits":J
    int-to-long v13, v13

    mul-long v13, v13, v53

    .line 182
    .local v13, "bits02":J
    aget v9, v49, v45

    int-to-long v2, v9

    mul-long v2, v2, v50

    .line 183
    .local v2, "bits11":J
    aget v9, v49, v45

    move/from16 v65, v0

    move/from16 v64, v1

    int-to-long v0, v9

    .end local v0    # "actualShift":I
    .end local v1    # "e2":I
    .local v64, "e2":I
    .local v65, "actualShift":I
    mul-long v0, v0, v53

    .line 184
    .local v0, "bits01":J
    aget v9, v49, v35

    move/from16 v66, v4

    move-wide/from16 v67, v5

    int-to-long v4, v9

    .end local v4    # "q":I
    .end local v5    # "bits13":J
    .local v66, "q":I
    .local v67, "bits13":J
    mul-long v4, v4, v50

    .line 185
    .local v4, "bits10":J
    aget v6, v49, v35

    move-wide/from16 v69, v10

    int-to-long v9, v6

    .end local v10    # "bits12":J
    .local v69, "bits12":J
    mul-long v9, v9, v53

    .line 188
    .local v9, "bits00":J
    ushr-long v71, v9, v46

    add-long v71, v71, v0

    add-long v71, v71, v4

    ushr-long v71, v71, v46

    add-long v71, v71, v13

    add-long v71, v71, v2

    ushr-long v71, v71, v46

    add-long v71, v71, v7

    add-long v71, v71, v69

    const/16 v6, 0x15

    ushr-long v71, v71, v6

    const/16 v6, 0xa

    shl-long v73, v67, v6

    add-long v71, v71, v73

    ushr-long v0, v71, v65

    .line 195
    .end local v2    # "bits11":J
    .end local v4    # "bits10":J
    .end local v7    # "bits03":J
    .end local v9    # "bits00":J
    .end local v13    # "bits02":J
    .end local v50    # "mHigh":J
    .end local v53    # "mLow":J
    .end local v67    # "bits13":J
    .end local v69    # "bits12":J
    .local v0, "dv":J
    ushr-long v2, v31, v46

    .line 196
    .local v2, "mHigh":J
    and-long v4, v31, v39

    .line 197
    .local v4, "mLow":J
    const/4 v6, 0x0

    aget v7, v49, v6

    int-to-long v7, v7

    mul-long/2addr v7, v2

    .line 198
    .local v7, "bits13":J
    aget v9, v49, v6

    int-to-long v9, v9

    mul-long/2addr v9, v4

    .line 199
    .local v9, "bits03":J
    const/4 v6, 0x1

    aget v11, v49, v6

    int-to-long v13, v11

    mul-long/2addr v13, v2

    .line 200
    .local v13, "bits12":J
    aget v11, v49, v6

    move-wide/from16 v75, v0

    int-to-long v0, v11

    .end local v0    # "dv":J
    .local v75, "dv":J
    mul-long/2addr v0, v4

    .line 201
    .local v0, "bits02":J
    aget v6, v49, v45

    move/from16 v77, v12

    int-to-long v11, v6

    .end local v12    # "index":I
    .local v77, "index":I
    mul-long/2addr v11, v2

    .line 202
    .local v11, "bits11":J
    aget v6, v49, v45

    move-wide/from16 v78, v7

    int-to-long v6, v6

    .end local v7    # "bits13":J
    .local v78, "bits13":J
    mul-long/2addr v6, v4

    .line 203
    .local v6, "bits01":J
    aget v8, v49, v35

    move-wide/from16 v80, v13

    int-to-long v13, v8

    .end local v13    # "bits12":J
    .local v80, "bits12":J
    mul-long/2addr v13, v2

    .line 204
    .local v13, "bits10":J
    aget v8, v49, v35

    move-wide/from16 v82, v2

    int-to-long v2, v8

    .end local v2    # "mHigh":J
    .local v82, "mHigh":J
    mul-long/2addr v2, v4

    .line 206
    .local v2, "bits00":J
    ushr-long v50, v2, v46

    add-long v50, v50, v6

    add-long v50, v50, v13

    ushr-long v50, v50, v46

    add-long v50, v50, v0

    add-long v50, v50, v11

    ushr-long v50, v50, v46

    add-long v50, v50, v9

    add-long v50, v50, v80

    const/16 v8, 0x15

    ushr-long v50, v50, v8

    const/16 v8, 0xa

    shl-long v53, v78, v8

    add-long v50, v50, v53

    ushr-long v0, v50, v65

    .line 213
    .end local v2    # "bits00":J
    .end local v4    # "mLow":J
    .end local v6    # "bits01":J
    .end local v9    # "bits03":J
    .end local v11    # "bits11":J
    .end local v13    # "bits10":J
    .end local v78    # "bits13":J
    .end local v80    # "bits12":J
    .end local v82    # "mHigh":J
    .local v0, "dp":J
    ushr-long v2, v33, v46

    .line 214
    .local v2, "mHigh":J
    and-long v4, v33, v39

    .line 215
    .restart local v4    # "mLow":J
    const/4 v6, 0x0

    aget v7, v49, v6

    int-to-long v7, v7

    mul-long/2addr v7, v2

    .line 216
    .restart local v7    # "bits13":J
    aget v9, v49, v6

    int-to-long v9, v9

    mul-long/2addr v9, v4

    .line 217
    .restart local v9    # "bits03":J
    const/4 v6, 0x1

    aget v11, v49, v6

    int-to-long v11, v11

    mul-long/2addr v11, v2

    .line 218
    .local v11, "bits12":J
    aget v13, v49, v6

    int-to-long v13, v13

    mul-long/2addr v13, v4

    .line 219
    .local v13, "bits02":J
    aget v6, v49, v45

    move-wide/from16 v84, v0

    int-to-long v0, v6

    .end local v0    # "dp":J
    .local v84, "dp":J
    mul-long/2addr v0, v2

    .line 220
    .local v0, "bits11":J
    aget v6, v49, v45

    move-wide/from16 v86, v7

    int-to-long v6, v6

    .end local v7    # "bits13":J
    .local v86, "bits13":J
    mul-long/2addr v6, v4

    .line 221
    .restart local v6    # "bits01":J
    aget v8, v49, v35

    move-wide/from16 v88, v11

    int-to-long v11, v8

    .end local v11    # "bits12":J
    .local v88, "bits12":J
    mul-long/2addr v11, v2

    .line 222
    .local v11, "bits10":J
    aget v8, v49, v35

    move-wide/from16 v90, v2

    int-to-long v2, v8

    .end local v2    # "mHigh":J
    .local v90, "mHigh":J
    mul-long/2addr v2, v4

    .line 224
    .local v2, "bits00":J
    ushr-long v39, v2, v46

    add-long v39, v39, v6

    add-long v39, v39, v11

    ushr-long v39, v39, v46

    add-long v39, v39, v13

    add-long v39, v39, v0

    ushr-long v39, v39, v46

    add-long v39, v39, v9

    add-long v39, v39, v88

    const/16 v8, 0x15

    ushr-long v39, v39, v8

    const/16 v35, 0xa

    shl-long v44, v86, v35

    add-long v39, v39, v44

    ushr-long v0, v39, v65

    .line 231
    .end local v2    # "bits00":J
    .end local v4    # "mLow":J
    .end local v6    # "bits01":J
    .end local v9    # "bits03":J
    .end local v11    # "bits10":J
    .end local v13    # "bits02":J
    .end local v86    # "bits13":J
    .end local v88    # "bits12":J
    .end local v90    # "mHigh":J
    .local v0, "dm":J
    move/from16 v2, v66

    .line 233
    .local v2, "e10":I
    move/from16 v3, v66

    if-gt v3, v8, :cond_21

    .line 234
    .end local v66    # "q":I
    .local v3, "q":I
    const-wide/16 v4, 0x5

    rem-long v6, v29, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_12

    .line 237
    move-wide/from16 v6, v29

    .line 238
    .local v6, "v":J
    rem-long v10, v6, v4

    cmp-long v10, v10, v8

    if-eqz v10, :cond_b

    .line 239
    const/4 v4, 0x0

    .end local v6    # "v":J
    .local v4, "pow5Factor_mv":I
    :goto_6
    goto :goto_9

    .line 240
    .end local v4    # "pow5Factor_mv":I
    .restart local v6    # "v":J
    :cond_b
    const-wide/16 v10, 0x19

    rem-long v10, v6, v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_c

    .line 241
    const/4 v4, 0x1

    goto :goto_6

    .line 242
    :cond_c
    const-wide/16 v10, 0x7d

    rem-long v10, v6, v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_d

    .line 243
    const/4 v4, 0x2

    goto :goto_6

    .line 244
    :cond_d
    const-wide/16 v10, 0x271

    rem-long v10, v6, v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_e

    .line 245
    const/4 v4, 0x3

    goto :goto_6

    .line 247
    :cond_e
    const/4 v8, 0x4

    .line 248
    .local v8, "pow5Factor_mv":I
    const-wide/16 v9, 0x271

    div-long/2addr v6, v9

    .line 249
    :goto_7
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_10

    .line 250
    rem-long v11, v6, v4

    cmp-long v11, v11, v9

    if-eqz v11, :cond_f

    .line 251
    goto :goto_8

    .line 253
    :cond_f
    div-long/2addr v6, v4

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 258
    .end local v6    # "v":J
    :cond_10
    :goto_8
    move v4, v8

    .end local v8    # "pow5Factor_mv":I
    .restart local v4    # "pow5Factor_mv":I
    :goto_9
    if-lt v4, v3, :cond_11

    const/4 v5, 0x1

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    .line 259
    .end local v4    # "pow5Factor_mv":I
    .end local v48    # "dvIsTrailingZeros":Z
    .local v5, "dvIsTrailingZeros":Z
    :goto_a
    nop

    .line 315
    move/from16 v4, v47

    goto/16 :goto_15

    .line 259
    .end local v5    # "dvIsTrailingZeros":Z
    .restart local v48    # "dvIsTrailingZeros":Z
    :cond_12
    if-eqz v24, :cond_1a

    .line 262
    move-wide/from16 v6, v33

    .line 263
    .restart local v6    # "v":J
    rem-long v8, v6, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_13

    .line 264
    const/4 v4, 0x0

    .end local v6    # "v":J
    .local v4, "pow5Factor_mm":I
    :goto_b
    goto :goto_e

    .line 265
    .end local v4    # "pow5Factor_mm":I
    .restart local v6    # "v":J
    :cond_13
    const-wide/16 v8, 0x19

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_14

    .line 266
    const/4 v4, 0x1

    goto :goto_b

    .line 267
    :cond_14
    const-wide/16 v8, 0x7d

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_15

    .line 268
    const/4 v4, 0x2

    goto :goto_b

    .line 269
    :cond_15
    const-wide/16 v8, 0x271

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_16

    .line 270
    const/4 v4, 0x3

    goto :goto_b

    .line 272
    :cond_16
    const/4 v8, 0x4

    .line 273
    .local v8, "pow5Factor_mm":I
    const-wide/16 v9, 0x271

    div-long/2addr v6, v9

    .line 274
    :goto_c
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_18

    .line 275
    rem-long v11, v6, v4

    cmp-long v11, v11, v9

    if-eqz v11, :cond_17

    .line 276
    goto :goto_d

    .line 278
    :cond_17
    div-long/2addr v6, v4

    .line 279
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 284
    .end local v6    # "v":J
    :cond_18
    :goto_d
    move v4, v8

    .end local v8    # "pow5Factor_mm":I
    .restart local v4    # "pow5Factor_mm":I
    :goto_e
    if-lt v4, v3, :cond_19

    const/4 v5, 0x1

    goto :goto_f

    :cond_19
    const/4 v5, 0x0

    :goto_f
    move v4, v5

    .line 285
    .end local v47    # "dmIsTrailingZeros":Z
    .local v4, "dmIsTrailingZeros":Z
    goto :goto_14

    .line 288
    .end local v4    # "dmIsTrailingZeros":Z
    .restart local v47    # "dmIsTrailingZeros":Z
    :cond_1a
    move-wide/from16 v6, v31

    .line 289
    .restart local v6    # "v":J
    rem-long v8, v6, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1b

    .line 290
    const/4 v4, 0x0

    .end local v6    # "v":J
    .local v4, "pow5Factor_mp":I
    :goto_10
    goto :goto_13

    .line 291
    .end local v4    # "pow5Factor_mp":I
    .restart local v6    # "v":J
    :cond_1b
    const-wide/16 v8, 0x19

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1c

    .line 292
    const/4 v4, 0x1

    goto :goto_10

    .line 293
    :cond_1c
    const-wide/16 v8, 0x7d

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1d

    .line 294
    const/4 v4, 0x2

    goto :goto_10

    .line 295
    :cond_1d
    const-wide/16 v8, 0x271

    rem-long v8, v6, v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1e

    .line 296
    const/4 v4, 0x3

    goto :goto_10

    .line 298
    :cond_1e
    const/4 v8, 0x4

    .line 299
    .local v8, "pow5Factor_mp":I
    const-wide/16 v9, 0x271

    div-long/2addr v6, v9

    .line 300
    :goto_11
    const-wide/16 v9, 0x0

    cmp-long v11, v6, v9

    if-lez v11, :cond_20

    .line 301
    rem-long v11, v6, v4

    cmp-long v11, v11, v9

    if-eqz v11, :cond_1f

    .line 302
    goto :goto_12

    .line 304
    :cond_1f
    div-long/2addr v6, v4

    .line 305
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 310
    .end local v6    # "v":J
    :cond_20
    :goto_12
    move v4, v8

    .end local v8    # "pow5Factor_mp":I
    .restart local v4    # "pow5Factor_mp":I
    :goto_13
    if-lt v4, v3, :cond_21

    .line 311
    sub-long v3, v84, v27

    .line 315
    .end local v4    # "pow5Factor_mp":I
    .end local v49    # "ints":[I
    .end local v52    # "i":I
    .end local v55    # "k":I
    .end local v65    # "actualShift":I
    .end local v84    # "dp":J
    .local v3, "dp":J
    move-wide/from16 v84, v3

    .end local v3    # "dp":J
    .end local v47    # "dmIsTrailingZeros":Z
    .end local v48    # "dvIsTrailingZeros":Z
    .local v4, "dmIsTrailingZeros":Z
    .restart local v5    # "dvIsTrailingZeros":Z
    .restart local v84    # "dp":J
    :cond_21
    move/from16 v4, v47

    :goto_14
    move/from16 v5, v48

    .line 401
    :goto_15
    move/from16 v47, v4

    move v7, v15

    move/from16 v97, v64

    move-wide/from16 v105, v75

    goto/16 :goto_19

    .line 171
    .end local v2    # "e10":I
    .end local v56    # "DOUBLE_EXPONENT_MASK":I
    .end local v57    # "DOUBLE_EXPONENT_BIAS":I
    .end local v58    # "LOG10_5_NUMERATOR":J
    .end local v60    # "LOG10_2_NUMERATOR":J
    .end local v62    # "bits":J
    .end local v64    # "e2":I
    .end local v75    # "dv":J
    .end local v77    # "index":I
    .end local v84    # "dp":J
    .local v0, "actualShift":I
    .restart local v1    # "e2":I
    .local v4, "q":I
    .local v5, "k":I
    .local v6, "DOUBLE_EXPONENT_MASK":I
    .local v7, "DOUBLE_EXPONENT_BIAS":I
    .local v8, "LOG10_5_NUMERATOR":J
    .local v10, "LOG10_2_NUMERATOR":J
    .restart local v12    # "index":I
    .local v13, "bits":J
    .restart local v47    # "dmIsTrailingZeros":Z
    .restart local v48    # "dvIsTrailingZeros":Z
    .restart local v52    # "i":I
    :cond_22
    move/from16 v65, v0

    move/from16 v64, v1

    move v3, v4

    move/from16 v55, v5

    move/from16 v56, v6

    move/from16 v57, v7

    move-wide/from16 v58, v8

    move-wide/from16 v60, v10

    move/from16 v77, v12

    move-wide/from16 v62, v13

    .end local v0    # "actualShift":I
    .end local v1    # "e2":I
    .end local v4    # "q":I
    .end local v5    # "k":I
    .end local v6    # "DOUBLE_EXPONENT_MASK":I
    .end local v7    # "DOUBLE_EXPONENT_BIAS":I
    .end local v8    # "LOG10_5_NUMERATOR":J
    .end local v10    # "LOG10_2_NUMERATOR":J
    .end local v12    # "index":I
    .end local v13    # "bits":J
    .local v3, "q":I
    .restart local v55    # "k":I
    .restart local v56    # "DOUBLE_EXPONENT_MASK":I
    .restart local v57    # "DOUBLE_EXPONENT_BIAS":I
    .restart local v58    # "LOG10_5_NUMERATOR":J
    .restart local v60    # "LOG10_2_NUMERATOR":J
    .restart local v62    # "bits":J
    .restart local v64    # "e2":I
    .restart local v65    # "actualShift":I
    .restart local v77    # "index":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v65

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v65    # "actualShift":I
    .local v2, "actualShift":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    .end local v2    # "actualShift":I
    .end local v3    # "q":I
    .end local v47    # "dmIsTrailingZeros":Z
    .end local v48    # "dvIsTrailingZeros":Z
    .end local v52    # "i":I
    .end local v55    # "k":I
    .end local v56    # "DOUBLE_EXPONENT_MASK":I
    .end local v57    # "DOUBLE_EXPONENT_BIAS":I
    .end local v58    # "LOG10_5_NUMERATOR":J
    .end local v60    # "LOG10_2_NUMERATOR":J
    .end local v62    # "bits":J
    .end local v64    # "e2":I
    .end local v77    # "index":I
    .restart local v1    # "e2":I
    .local v4, "dmIsTrailingZeros":Z
    .local v5, "dvIsTrailingZeros":Z
    .restart local v6    # "DOUBLE_EXPONENT_MASK":I
    .restart local v7    # "DOUBLE_EXPONENT_BIAS":I
    .restart local v8    # "LOG10_5_NUMERATOR":J
    .restart local v10    # "LOG10_2_NUMERATOR":J
    .restart local v12    # "index":I
    .restart local v13    # "bits":J
    :cond_23
    move/from16 v64, v1

    move/from16 v47, v4

    move/from16 v48, v5

    move/from16 v56, v6

    move/from16 v57, v7

    move-wide/from16 v58, v8

    move-wide/from16 v60, v10

    move/from16 v77, v12

    move-wide/from16 v62, v13

    .end local v1    # "e2":I
    .end local v4    # "dmIsTrailingZeros":Z
    .end local v5    # "dvIsTrailingZeros":Z
    .end local v6    # "DOUBLE_EXPONENT_MASK":I
    .end local v7    # "DOUBLE_EXPONENT_BIAS":I
    .end local v8    # "LOG10_5_NUMERATOR":J
    .end local v10    # "LOG10_2_NUMERATOR":J
    .end local v12    # "index":I
    .end local v13    # "bits":J
    .restart local v47    # "dmIsTrailingZeros":Z
    .restart local v48    # "dvIsTrailingZeros":Z
    .restart local v56    # "DOUBLE_EXPONENT_MASK":I
    .restart local v57    # "DOUBLE_EXPONENT_BIAS":I
    .restart local v58    # "LOG10_5_NUMERATOR":J
    .restart local v60    # "LOG10_2_NUMERATOR":J
    .restart local v62    # "bits":J
    .restart local v64    # "e2":I
    .restart local v77    # "index":I
    neg-int v0, v1

    .end local v64    # "e2":I
    .restart local v1    # "e2":I
    int-to-long v2, v0

    const-wide/32 v4, 0x6aa784

    mul-long/2addr v2, v4

    div-long v2, v2, v41

    long-to-int v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 317
    .local v0, "q":I
    neg-int v2, v1

    sub-int/2addr v2, v0

    .line 318
    .local v2, "i":I
    if-nez v2, :cond_24

    const/4 v3, 0x1

    goto :goto_16

    :cond_24
    int-to-long v3, v2

    const-wide/32 v5, 0x1624c50

    mul-long/2addr v3, v5

    add-long v3, v3, v41

    sub-long v3, v3, v27

    div-long v3, v3, v41

    long-to-int v3, v3

    :goto_16
    add-int/lit8 v3, v3, -0x79

    .line 319
    .local v3, "k":I
    sub-int v4, v0, v3

    .line 321
    .local v4, "j":I
    add-int/lit8 v5, v4, -0x5d

    const/16 v6, 0x15

    sub-int/2addr v5, v6

    .line 322
    .local v5, "actualShift":I
    if-ltz v5, :cond_5e

    .line 325
    sget-object v6, Lcom/alibaba/fastjson/util/RyuDouble;->POW5_SPLIT:[[I

    aget-object v6, v6, v2

    .line 327
    .local v6, "ints":[I
    ushr-long v7, v29, v46

    .line 328
    .local v7, "mHigh":J
    and-long v9, v29, v39

    .line 329
    .local v9, "mLow":J
    const/4 v11, 0x0

    aget v12, v6, v11

    int-to-long v12, v12

    mul-long/2addr v12, v7

    .line 330
    .local v12, "bits13":J
    aget v14, v6, v11

    move/from16 v92, v2

    move/from16 v93, v3

    int-to-long v2, v14

    .end local v2    # "i":I
    .end local v3    # "k":I
    .local v92, "i":I
    .local v93, "k":I
    mul-long/2addr v2, v9

    .line 331
    .local v2, "bits03":J
    const/4 v11, 0x1

    aget v14, v6, v11

    move-wide/from16 v94, v12

    int-to-long v11, v14

    .end local v12    # "bits13":J
    .local v94, "bits13":J
    mul-long/2addr v11, v7

    .line 332
    .local v11, "bits12":J
    const/4 v13, 0x1

    aget v14, v6, v13

    int-to-long v13, v14

    mul-long/2addr v13, v9

    .line 333
    .local v13, "bits02":J
    move/from16 v96, v4

    aget v4, v6, v45

    .end local v4    # "j":I
    .local v96, "j":I
    move/from16 v98, v0

    move/from16 v97, v1

    int-to-long v0, v4

    .end local v0    # "q":I
    .end local v1    # "e2":I
    .local v97, "e2":I
    .local v98, "q":I
    mul-long/2addr v0, v7

    .line 334
    .local v0, "bits11":J
    aget v4, v6, v45

    move/from16 v99, v5

    int-to-long v4, v4

    .end local v5    # "actualShift":I
    .local v99, "actualShift":I
    mul-long/2addr v4, v9

    .line 335
    .local v4, "bits01":J
    move/from16 v100, v15

    aget v15, v6, v35

    .end local v15    # "mmShift":I
    .local v100, "mmShift":I
    move-wide/from16 v101, v11

    int-to-long v11, v15

    .end local v11    # "bits12":J
    .local v101, "bits12":J
    mul-long/2addr v11, v7

    .line 336
    .local v11, "bits10":J
    aget v15, v6, v35

    move-wide/from16 v103, v7

    int-to-long v7, v15

    .end local v7    # "mHigh":J
    .local v103, "mHigh":J
    mul-long/2addr v7, v9

    .line 338
    .local v7, "bits00":J
    ushr-long v49, v7, v46

    add-long v49, v49, v4

    add-long v49, v49, v11

    ushr-long v49, v49, v46

    add-long v49, v49, v13

    add-long v49, v49, v0

    ushr-long v49, v49, v46

    add-long v49, v49, v2

    add-long v49, v49, v101

    const/16 v15, 0x15

    ushr-long v49, v49, v15

    const/16 v15, 0xa

    shl-long v52, v94, v15

    add-long v49, v49, v52

    ushr-long v0, v49, v99

    .line 345
    .end local v2    # "bits03":J
    .end local v4    # "bits01":J
    .end local v7    # "bits00":J
    .end local v9    # "mLow":J
    .end local v11    # "bits10":J
    .end local v13    # "bits02":J
    .end local v94    # "bits13":J
    .end local v101    # "bits12":J
    .end local v103    # "mHigh":J
    .local v0, "dv":J
    ushr-long v2, v31, v46

    .line 346
    .local v2, "mHigh":J
    and-long v4, v31, v39

    .line 347
    .local v4, "mLow":J
    const/4 v7, 0x0

    aget v8, v6, v7

    int-to-long v8, v8

    mul-long/2addr v8, v2

    .line 348
    .local v8, "bits13":J
    aget v10, v6, v7

    int-to-long v10, v10

    mul-long/2addr v10, v4

    .line 349
    .local v10, "bits03":J
    const/4 v7, 0x1

    aget v12, v6, v7

    int-to-long v12, v12

    mul-long/2addr v12, v2

    .line 350
    .local v12, "bits12":J
    aget v14, v6, v7

    int-to-long v14, v14

    mul-long/2addr v14, v4

    .line 351
    .local v14, "bits02":J
    aget v7, v6, v45

    move-wide/from16 v105, v0

    int-to-long v0, v7

    .end local v0    # "dv":J
    .local v105, "dv":J
    mul-long/2addr v0, v2

    .line 352
    .local v0, "bits11":J
    aget v7, v6, v45

    move-wide/from16 v107, v8

    int-to-long v7, v7

    .end local v8    # "bits13":J
    .local v107, "bits13":J
    mul-long/2addr v7, v4

    .line 353
    .local v7, "bits01":J
    aget v9, v6, v35

    move-wide/from16 v109, v12

    int-to-long v12, v9

    .end local v12    # "bits12":J
    .local v109, "bits12":J
    mul-long/2addr v12, v2

    .line 354
    .local v12, "bits10":J
    aget v9, v6, v35

    move-wide/from16 v111, v2

    int-to-long v2, v9

    .end local v2    # "mHigh":J
    .local v111, "mHigh":J
    mul-long/2addr v2, v4

    .line 355
    .local v2, "bits00":J
    ushr-long v49, v2, v46

    add-long v49, v49, v7

    add-long v49, v49, v12

    ushr-long v49, v49, v46

    add-long v49, v49, v14

    add-long v49, v49, v0

    ushr-long v49, v49, v46

    add-long v49, v49, v10

    add-long v49, v49, v109

    const/16 v9, 0x15

    ushr-long v49, v49, v9

    const/16 v9, 0xa

    shl-long v52, v107, v9

    add-long v49, v49, v52

    ushr-long v84, v49, v99

    .line 362
    .end local v0    # "bits11":J
    .end local v2    # "bits00":J
    .end local v4    # "mLow":J
    .end local v7    # "bits01":J
    .end local v10    # "bits03":J
    .end local v12    # "bits10":J
    .end local v14    # "bits02":J
    .end local v107    # "bits13":J
    .end local v109    # "bits12":J
    .end local v111    # "mHigh":J
    .restart local v84    # "dp":J
    ushr-long v0, v33, v46

    .line 363
    .local v0, "mHigh":J
    and-long v2, v33, v39

    .line 364
    .local v2, "mLow":J
    const/4 v4, 0x0

    aget v5, v6, v4

    int-to-long v7, v5

    mul-long/2addr v7, v0

    .line 365
    .local v7, "bits13":J
    aget v5, v6, v4

    int-to-long v9, v5

    mul-long/2addr v9, v2

    .line 366
    .local v9, "bits03":J
    const/4 v5, 0x1

    aget v11, v6, v5

    int-to-long v11, v11

    mul-long/2addr v11, v0

    .line 367
    .local v11, "bits12":J
    aget v13, v6, v5

    int-to-long v13, v13

    mul-long/2addr v13, v2

    .line 368
    .restart local v13    # "bits02":J
    aget v5, v6, v45

    int-to-long v4, v5

    mul-long/2addr v4, v0

    .line 369
    .local v4, "bits11":J
    aget v15, v6, v45

    move-wide/from16 v114, v7

    int-to-long v7, v15

    .end local v7    # "bits13":J
    .local v114, "bits13":J
    mul-long/2addr v7, v2

    .line 370
    .local v7, "bits01":J
    aget v15, v6, v35

    move-wide/from16 v116, v11

    int-to-long v11, v15

    .end local v11    # "bits12":J
    .local v116, "bits12":J
    mul-long/2addr v11, v0

    .line 371
    .local v11, "bits10":J
    aget v15, v6, v35

    move-wide/from16 v118, v0

    int-to-long v0, v15

    .end local v0    # "mHigh":J
    .local v118, "mHigh":J
    mul-long/2addr v0, v2

    .line 372
    .local v0, "bits00":J
    ushr-long v39, v0, v46

    add-long v39, v39, v7

    add-long v39, v39, v11

    ushr-long v39, v39, v46

    add-long v39, v39, v13

    add-long v39, v39, v4

    ushr-long v39, v39, v46

    add-long v39, v39, v9

    add-long v39, v39, v116

    const/16 v15, 0x15

    ushr-long v39, v39, v15

    const/16 v15, 0xa

    shl-long v44, v114, v15

    add-long v39, v39, v44

    ushr-long v0, v39, v99

    .line 379
    .end local v2    # "mLow":J
    .end local v4    # "bits11":J
    .end local v7    # "bits01":J
    .end local v9    # "bits03":J
    .end local v11    # "bits10":J
    .end local v13    # "bits02":J
    .end local v114    # "bits13":J
    .end local v116    # "bits12":J
    .end local v118    # "mHigh":J
    .local v0, "dm":J
    add-int v2, v98, v97

    .line 380
    .local v2, "e10":I
    move/from16 v3, v98

    const/4 v4, 0x1

    if-gt v3, v4, :cond_27

    .line 381
    .end local v98    # "q":I
    .local v3, "q":I
    const/4 v5, 0x1

    .line 382
    .end local v48    # "dvIsTrailingZeros":Z
    .local v5, "dvIsTrailingZeros":Z
    if-eqz v24, :cond_26

    .line 383
    move/from16 v7, v100

    if-ne v7, v4, :cond_25

    .end local v100    # "mmShift":I
    .local v7, "mmShift":I
    const/4 v4, 0x1

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    .line 401
    .end local v47    # "dmIsTrailingZeros":Z
    .local v4, "dmIsTrailingZeros":Z
    :goto_17
    move/from16 v47, v4

    goto :goto_19

    .line 385
    .end local v4    # "dmIsTrailingZeros":Z
    .end local v7    # "mmShift":I
    .restart local v47    # "dmIsTrailingZeros":Z
    .restart local v100    # "mmShift":I
    :cond_26
    move/from16 v7, v100

    .end local v100    # "mmShift":I
    .restart local v7    # "mmShift":I
    sub-long v84, v84, v27

    goto :goto_19

    .line 387
    .end local v5    # "dvIsTrailingZeros":Z
    .end local v7    # "mmShift":I
    .restart local v48    # "dvIsTrailingZeros":Z
    .restart local v100    # "mmShift":I
    :cond_27
    move/from16 v7, v100

    .end local v100    # "mmShift":I
    .restart local v7    # "mmShift":I
    const/16 v4, 0x3f

    if-ge v3, v4, :cond_29

    .line 388
    add-int/lit8 v4, v3, -0x1

    shl-long v4, v27, v4

    sub-long v4, v4, v27

    and-long v4, v29, v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_18

    :cond_28
    const/4 v4, 0x0

    :goto_18
    move v5, v4

    .end local v3    # "q":I
    .end local v6    # "ints":[I
    .end local v48    # "dvIsTrailingZeros":Z
    .end local v92    # "i":I
    .end local v93    # "k":I
    .end local v96    # "j":I
    .end local v99    # "actualShift":I
    .restart local v5    # "dvIsTrailingZeros":Z
    goto :goto_19

    .line 401
    .end local v5    # "dvIsTrailingZeros":Z
    .restart local v48    # "dvIsTrailingZeros":Z
    :cond_29
    move/from16 v5, v48

    .end local v48    # "dvIsTrailingZeros":Z
    .restart local v5    # "dvIsTrailingZeros":Z
    :goto_19
    const-wide v3, 0xde0b6b3a7640000L

    cmp-long v3, v84, v3

    const-wide/16 v8, 0xa

    if-ltz v3, :cond_2a

    .line 402
    const/16 v15, 0x13

    .local v15, "vplength":I
    :goto_1a
    goto/16 :goto_1b

    .line 403
    .end local v15    # "vplength":I
    :cond_2a
    const-wide v3, 0x16345785d8a0000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_2b

    .line 404
    const/16 v15, 0x12

    goto :goto_1a

    .line 405
    :cond_2b
    const-wide v3, 0x2386f26fc10000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_2c

    .line 406
    const/16 v15, 0x11

    goto :goto_1a

    .line 407
    :cond_2c
    const-wide v3, 0x38d7ea4c68000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_2d

    .line 408
    const/16 v15, 0x10

    goto :goto_1a

    .line 409
    :cond_2d
    const-wide v3, 0x5af3107a4000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_2e

    .line 410
    const/16 v15, 0xf

    goto :goto_1a

    .line 411
    :cond_2e
    const-wide v3, 0x9184e72a000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_2f

    .line 412
    const/16 v15, 0xe

    goto :goto_1a

    .line 413
    :cond_2f
    const-wide v3, 0xe8d4a51000L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_30

    .line 414
    const/16 v15, 0xd

    goto :goto_1a

    .line 415
    :cond_30
    const-wide v3, 0x174876e800L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_31

    .line 416
    const/16 v15, 0xc

    goto :goto_1a

    .line 417
    :cond_31
    const-wide v3, 0x2540be400L

    cmp-long v3, v84, v3

    if-ltz v3, :cond_32

    .line 418
    const/16 v15, 0xb

    goto :goto_1a

    .line 419
    :cond_32
    const-wide/32 v3, 0x3b9aca00

    cmp-long v3, v84, v3

    if-ltz v3, :cond_33

    .line 420
    const/16 v15, 0xa

    goto :goto_1a

    .line 421
    :cond_33
    const-wide/32 v3, 0x5f5e100

    cmp-long v3, v84, v3

    if-ltz v3, :cond_34

    .line 422
    const/16 v15, 0x9

    goto :goto_1a

    .line 423
    :cond_34
    cmp-long v3, v84, v41

    if-ltz v3, :cond_35

    .line 424
    const/16 v15, 0x8

    goto :goto_1a

    .line 425
    :cond_35
    const-wide/32 v3, 0xf4240

    cmp-long v3, v84, v3

    if-ltz v3, :cond_36

    .line 426
    const/4 v15, 0x7

    goto/16 :goto_1a

    .line 427
    :cond_36
    const-wide/32 v3, 0x186a0

    cmp-long v3, v84, v3

    if-ltz v3, :cond_37

    .line 428
    const/4 v15, 0x6

    goto/16 :goto_1a

    .line 429
    :cond_37
    const-wide/16 v3, 0x2710

    cmp-long v3, v84, v3

    if-ltz v3, :cond_38

    .line 430
    const/4 v15, 0x5

    goto/16 :goto_1a

    .line 431
    :cond_38
    const-wide/16 v3, 0x3e8

    cmp-long v3, v84, v3

    if-ltz v3, :cond_39

    .line 432
    const/4 v15, 0x4

    goto/16 :goto_1a

    .line 433
    :cond_39
    const-wide/16 v3, 0x64

    cmp-long v3, v84, v3

    if-ltz v3, :cond_3a

    .line 434
    const/4 v15, 0x3

    goto/16 :goto_1a

    .line 435
    :cond_3a
    cmp-long v3, v84, v8

    if-ltz v3, :cond_3b

    .line 436
    const/4 v15, 0x2

    goto/16 :goto_1a

    .line 438
    :cond_3b
    const/4 v15, 0x1

    .restart local v15    # "vplength":I
    :goto_1b
    move v3, v15

    .line 441
    .end local v15    # "vplength":I
    .local v3, "vplength":I
    add-int v4, v2, v3

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .line 444
    .local v4, "exp":I
    const/4 v6, -0x3

    if-lt v4, v6, :cond_3d

    const/4 v6, 0x7

    if-lt v4, v6, :cond_3c

    goto :goto_1c

    :cond_3c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_3d
    :goto_1c
    const/4 v6, 0x1

    .line 446
    .local v6, "scientificNotation":Z
    :goto_1d
    const/4 v10, 0x0

    .line 448
    .local v10, "removed":I
    const/4 v11, 0x0

    .line 450
    .local v11, "lastRemovedDigit":I
    if-nez v47, :cond_43

    if-eqz v5, :cond_3e

    goto :goto_22

    .line 485
    :cond_3e
    :goto_1e
    div-long v12, v84, v8

    div-long v14, v0, v8

    cmp-long v12, v12, v14

    if-lez v12, :cond_40

    .line 486
    const-wide/16 v12, 0x64

    cmp-long v12, v84, v12

    if-gez v12, :cond_3f

    if-eqz v6, :cond_3f

    .line 488
    goto :goto_1f

    .line 490
    :cond_3f
    rem-long v12, v105, v8

    long-to-int v11, v12

    .line 491
    div-long v84, v84, v8

    .line 492
    div-long v105, v105, v8

    .line 493
    div-long/2addr v0, v8

    .line 494
    add-int/lit8 v10, v10, 0x1

    goto :goto_1e

    .line 496
    :cond_40
    :goto_1f
    cmp-long v12, v105, v0

    if-eqz v12, :cond_42

    const/4 v12, 0x5

    if-lt v11, v12, :cond_41

    goto :goto_20

    :cond_41
    const/4 v12, 0x0

    goto :goto_21

    :cond_42
    :goto_20
    const/4 v12, 0x1

    :goto_21
    int-to-long v12, v12

    add-long v12, v105, v12

    goto/16 :goto_2a

    .line 451
    :cond_43
    :goto_22
    div-long v12, v84, v8

    div-long v14, v0, v8

    cmp-long v12, v12, v14

    if-lez v12, :cond_47

    .line 452
    const-wide/16 v12, 0x64

    cmp-long v12, v84, v12

    if-gez v12, :cond_44

    if-eqz v6, :cond_44

    .line 454
    goto :goto_25

    .line 456
    :cond_44
    rem-long v12, v0, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_45

    const/4 v12, 0x1

    goto :goto_23

    :cond_45
    const/4 v12, 0x0

    :goto_23
    and-int v47, v47, v12

    .line 457
    if-nez v11, :cond_46

    const/4 v12, 0x1

    goto :goto_24

    :cond_46
    const/4 v12, 0x0

    :goto_24
    and-int/2addr v5, v12

    .line 458
    rem-long v12, v105, v8

    long-to-int v11, v12

    .line 459
    div-long v84, v84, v8

    .line 460
    div-long v105, v105, v8

    .line 461
    div-long/2addr v0, v8

    .line 462
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    .line 464
    :cond_47
    :goto_25
    if-eqz v47, :cond_4a

    if-eqz v24, :cond_4a

    .line 465
    :goto_26
    rem-long v12, v0, v8

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_4a

    .line 466
    const-wide/16 v12, 0x64

    cmp-long v12, v84, v12

    if-gez v12, :cond_48

    if-eqz v6, :cond_48

    .line 468
    goto :goto_28

    .line 470
    :cond_48
    if-nez v11, :cond_49

    const/4 v12, 0x1

    goto :goto_27

    :cond_49
    const/4 v12, 0x0

    :goto_27
    and-int/2addr v5, v12

    .line 471
    rem-long v12, v105, v8

    long-to-int v11, v12

    .line 472
    div-long v84, v84, v8

    .line 473
    div-long v105, v105, v8

    .line 474
    div-long/2addr v0, v8

    .line 475
    add-int/lit8 v10, v10, 0x1

    goto :goto_26

    .line 478
    :cond_4a
    :goto_28
    if-eqz v5, :cond_4b

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4b

    const-wide/16 v12, 0x2

    rem-long v12, v105, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_4b

    .line 480
    const/4 v11, 0x4

    .line 482
    :cond_4b
    cmp-long v12, v105, v0

    if-nez v12, :cond_4c

    if-eqz v47, :cond_4d

    if-eqz v24, :cond_4d

    :cond_4c
    const/4 v12, 0x5

    if-lt v11, v12, :cond_4e

    :cond_4d
    const/4 v12, 0x1

    goto :goto_29

    :cond_4e
    const/4 v12, 0x0

    :goto_29
    int-to-long v12, v12

    add-long v12, v105, v12

    .line 496
    .local v12, "output":J
    :goto_2a
    nop

    .line 498
    sub-int v14, v3, v10

    .line 502
    .local v14, "olength":I
    if-eqz v16, :cond_4f

    .line 503
    add-int/lit8 v15, v77, 0x1

    .local v15, "index":I
    const/16 v25, 0x2d

    aput-char v25, p2, v77

    .end local v77    # "index":I
    goto :goto_2b

    .line 507
    .end local v15    # "index":I
    .restart local v77    # "index":I
    :cond_4f
    move/from16 v15, v77

    .end local v77    # "index":I
    .restart local v15    # "index":I
    :goto_2b
    if-eqz v6, :cond_55

    .line 509
    const/16 v113, 0x0

    .local v113, "i":I
    :goto_2c
    move/from16 v120, v113

    .end local v113    # "i":I
    .local v120, "i":I
    add-int/lit8 v8, v14, -0x1

    move/from16 v9, v120

    if-ge v9, v8, :cond_50

    .line 510
    .end local v120    # "i":I
    .local v9, "i":I
    move-wide/from16 v121, v0

    const-wide/16 v26, 0xa

    rem-long v0, v12, v26

    .end local v0    # "dm":J
    .local v121, "dm":J
    long-to-int v0, v0

    .line 511
    .local v0, "c":I
    div-long v12, v12, v26

    .line 512
    add-int v1, v15, v14

    sub-int/2addr v1, v9

    add-int v8, v19, v0

    int-to-char v8, v8

    aput-char v8, p2, v1

    .line 509
    .end local v0    # "c":I
    add-int/lit8 v113, v9, 0x1

    .end local v9    # "i":I
    .restart local v113    # "i":I
    move-wide/from16 v0, v121

    const-wide/16 v8, 0xa

    goto :goto_2c

    .line 514
    .end local v113    # "i":I
    .end local v121    # "dm":J
    .local v0, "dm":J
    :cond_50
    move-wide/from16 v121, v0

    .end local v0    # "dm":J
    .restart local v121    # "dm":J
    const-wide/16 v0, 0x30

    const-wide/16 v8, 0xa

    rem-long v8, v12, v8

    add-long/2addr v0, v8

    long-to-int v0, v0

    int-to-char v0, v0

    aput-char v0, p2, v15

    .line 515
    add-int/lit8 v0, v15, 0x1

    aput-char v18, p2, v0

    .line 516
    add-int/lit8 v0, v14, 0x1

    add-int/2addr v15, v0

    .line 517
    const/4 v0, 0x1

    if-ne v14, v0, :cond_51

    .line 518
    add-int/lit8 v0, v15, 0x1

    .local v0, "index":I
    aput-char v19, p2, v15

    .line 522
    .end local v15    # "index":I
    move v15, v0

    .end local v0    # "index":I
    .restart local v15    # "index":I
    :cond_51
    add-int/lit8 v0, v15, 0x1

    .restart local v0    # "index":I
    const/16 v1, 0x45

    aput-char v1, p2, v15

    .line 523
    .end local v15    # "index":I
    if-gez v4, :cond_52

    .line 524
    add-int/lit8 v1, v0, 0x1

    .local v1, "index":I
    const/16 v8, 0x2d

    aput-char v8, p2, v0

    .line 525
    .end local v0    # "index":I
    neg-int v4, v4

    .line 527
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_52
    const/16 v1, 0x64

    if-lt v4, v1, :cond_53

    .line 528
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "index":I
    div-int/lit8 v8, v4, 0x64

    add-int v8, v19, v8

    int-to-char v8, v8

    aput-char v8, p2, v0

    .line 529
    .end local v0    # "index":I
    rem-int/lit8 v4, v4, 0x64

    .line 530
    add-int/lit8 v0, v1, 0x1

    .restart local v0    # "index":I
    div-int/lit8 v8, v4, 0xa

    add-int v8, v19, v8

    int-to-char v8, v8

    aput-char v8, p2, v1

    .end local v1    # "index":I
    goto :goto_2d

    .line 531
    :cond_53
    const/16 v1, 0xa

    if-lt v4, v1, :cond_54

    .line 532
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "index":I
    div-int/lit8 v8, v4, 0xa

    add-int v8, v19, v8

    int-to-char v8, v8

    aput-char v8, p2, v0

    .line 534
    .end local v0    # "index":I
    move v0, v1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_54
    :goto_2d
    add-int/lit8 v1, v0, 0x1

    .restart local v1    # "index":I
    rem-int/lit8 v8, v4, 0xa

    add-int v8, v19, v8

    int-to-char v8, v8

    aput-char v8, p2, v0

    .line 535
    .end local v0    # "index":I
    sub-int v8, v1, p3

    return v8

    .line 538
    .end local v1    # "index":I
    .end local v121    # "dm":J
    .local v0, "dm":J
    .restart local v15    # "index":I
    :cond_55
    move-wide/from16 v121, v0

    .end local v0    # "dm":J
    .restart local v121    # "dm":J
    if-gez v4, :cond_58

    .line 540
    add-int/lit8 v1, v15, 0x1

    .restart local v1    # "index":I
    aput-char v19, p2, v15

    .line 541
    .end local v15    # "index":I
    add-int/lit8 v8, v1, 0x1

    .local v8, "index":I
    aput-char v18, p2, v1

    .line 542
    .end local v1    # "index":I
    const/4 v1, -0x1

    .local v1, "i":I
    :goto_2e
    if-le v1, v4, :cond_56

    .line 543
    add-int/lit8 v9, v8, 0x1

    .local v9, "index":I
    aput-char v19, p2, v8

    .line 542
    .end local v8    # "index":I
    add-int/lit8 v1, v1, -0x1

    move v8, v9

    goto :goto_2e

    .line 545
    .end local v1    # "i":I
    .end local v9    # "index":I
    .restart local v8    # "index":I
    :cond_56
    move v1, v8

    .line 546
    .local v1, "current":I
    const/16 v113, 0x0

    .restart local v113    # "i":I
    :goto_2f
    move/from16 v9, v113

    .end local v113    # "i":I
    .local v9, "i":I
    if-ge v9, v14, :cond_57

    .line 547
    add-int v15, v1, v14

    sub-int/2addr v15, v9

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    const-wide/16 v18, 0x30

    const-wide/16 v26, 0xa

    rem-long v39, v12, v26

    move/from16 v124, v1

    move/from16 v123, v2

    add-long v1, v18, v39

    .end local v1    # "current":I
    .end local v2    # "e10":I
    .local v123, "e10":I
    .local v124, "current":I
    long-to-int v1, v1

    int-to-char v1, v1

    aput-char v1, p2, v15

    .line 548
    div-long v12, v12, v26

    .line 549
    add-int/lit8 v8, v8, 0x1

    .line 546
    add-int/lit8 v113, v9, 0x1

    .end local v9    # "i":I
    .restart local v113    # "i":I
    move/from16 v2, v123

    move/from16 v1, v124

    goto :goto_2f

    .line 551
    .end local v113    # "i":I
    .end local v123    # "e10":I
    .end local v124    # "current":I
    .restart local v2    # "e10":I
    :cond_57
    move/from16 v123, v2

    .line 576
    .end local v2    # "e10":I
    .end local v10    # "removed":I
    .restart local v123    # "e10":I
    .local v125, "removed":I
    :goto_30
    move/from16 v125, v10

    goto/16 :goto_34

    .line 551
    .end local v8    # "index":I
    .end local v123    # "e10":I
    .end local v125    # "removed":I
    .restart local v2    # "e10":I
    .restart local v10    # "removed":I
    .restart local v15    # "index":I
    :cond_58
    move/from16 v123, v2

    .end local v2    # "e10":I
    .restart local v123    # "e10":I
    add-int/lit8 v1, v4, 0x1

    if-lt v1, v14, :cond_5b

    .line 553
    const/16 v113, 0x0

    .restart local v113    # "i":I
    :goto_31
    move/from16 v1, v113

    .end local v113    # "i":I
    .local v1, "i":I
    if-ge v1, v14, :cond_59

    .line 554
    add-int v2, v15, v14

    sub-int/2addr v2, v1

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    const-wide/16 v8, 0x30

    const-wide/16 v26, 0xa

    rem-long v39, v12, v26

    add-long v8, v8, v39

    long-to-int v8, v8

    int-to-char v8, v8

    aput-char v8, p2, v2

    .line 555
    div-long v12, v12, v26

    .line 553
    add-int/lit8 v113, v1, 0x1

    .end local v1    # "i":I
    .restart local v113    # "i":I
    goto :goto_31

    .line 557
    .end local v113    # "i":I
    :cond_59
    add-int/2addr v15, v14

    .line 558
    move v1, v14

    .restart local v1    # "i":I
    :goto_32
    add-int/lit8 v2, v4, 0x1

    if-ge v1, v2, :cond_5a

    .line 559
    add-int/lit8 v2, v15, 0x1

    .local v2, "index":I
    aput-char v19, p2, v15

    .line 558
    .end local v15    # "index":I
    add-int/lit8 v1, v1, 0x1

    move v15, v2

    goto :goto_32

    .line 561
    .end local v1    # "i":I
    .end local v2    # "index":I
    .restart local v15    # "index":I
    :cond_5a
    add-int/lit8 v1, v15, 0x1

    .local v1, "index":I
    aput-char v18, p2, v15

    .line 562
    .end local v15    # "index":I
    add-int/lit8 v8, v1, 0x1

    .restart local v8    # "index":I
    aput-char v19, p2, v1

    .end local v1    # "index":I
    goto :goto_30

    .line 565
    .end local v8    # "index":I
    .restart local v15    # "index":I
    :cond_5b
    add-int/lit8 v1, v15, 0x1

    .line 566
    .local v1, "current":I
    const/16 v113, 0x0

    .restart local v113    # "i":I
    :goto_33
    move/from16 v2, v113

    .end local v113    # "i":I
    .local v2, "i":I
    if-ge v2, v14, :cond_5d

    .line 567
    sub-int v8, v14, v2

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ne v8, v4, :cond_5c

    .line 568
    add-int v8, v1, v14

    sub-int/2addr v8, v2

    sub-int/2addr v8, v9

    aput-char v18, p2, v8

    .line 569
    add-int/lit8 v1, v1, -0x1

    .line 571
    :cond_5c
    add-int v8, v1, v14

    sub-int/2addr v8, v2

    sub-int/2addr v8, v9

    const-wide/16 v26, 0x30

    const-wide/16 v35, 0xa

    rem-long v39, v12, v35

    move/from16 v125, v10

    add-long v9, v26, v39

    .end local v10    # "removed":I
    .restart local v125    # "removed":I
    long-to-int v9, v9

    int-to-char v9, v9

    aput-char v9, p2, v8

    .line 572
    div-long v12, v12, v35

    .line 566
    add-int/lit8 v113, v2, 0x1

    .end local v2    # "i":I
    .restart local v113    # "i":I
    move/from16 v10, v125

    goto :goto_33

    .line 574
    .end local v113    # "i":I
    .end local v125    # "removed":I
    .restart local v10    # "removed":I
    :cond_5d
    move/from16 v125, v10

    .end local v10    # "removed":I
    .restart local v125    # "removed":I
    add-int/lit8 v2, v14, 0x1

    add-int v8, v15, v2

    .line 576
    .end local v1    # "current":I
    .end local v15    # "index":I
    .restart local v8    # "index":I
    :goto_34
    sub-int v1, v8, p3

    return v1

    .line 323
    .end local v6    # "scientificNotation":Z
    .end local v7    # "mmShift":I
    .end local v8    # "index":I
    .end local v11    # "lastRemovedDigit":I
    .end local v12    # "output":J
    .end local v14    # "olength":I
    .end local v84    # "dp":J
    .end local v97    # "e2":I
    .end local v105    # "dv":J
    .end local v121    # "dm":J
    .end local v123    # "e10":I
    .end local v125    # "removed":I
    .local v0, "q":I
    .local v1, "e2":I
    .restart local v2    # "i":I
    .local v3, "k":I
    .local v4, "j":I
    .local v5, "actualShift":I
    .local v15, "mmShift":I
    .restart local v48    # "dvIsTrailingZeros":Z
    .restart local v77    # "index":I
    :cond_5e
    move/from16 v97, v1

    move/from16 v92, v2

    move/from16 v93, v3

    move/from16 v96, v4

    move/from16 v99, v5

    move v7, v15

    move v3, v0

    .end local v0    # "q":I
    .end local v1    # "e2":I
    .end local v2    # "i":I
    .end local v4    # "j":I
    .end local v5    # "actualShift":I
    .end local v15    # "mmShift":I
    .local v3, "q":I
    .restart local v7    # "mmShift":I
    .restart local v92    # "i":I
    .restart local v93    # "k":I
    .restart local v96    # "j":I
    .restart local v97    # "e2":I
    .restart local v99    # "actualShift":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v99    # "actualShift":I
    .restart local v5    # "actualShift":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # D

    .line 69
    const/16 v0, 0x18

    new-array v0, v0, [C

    .line 70
    .local v0, "result":[C
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson/util/RyuDouble;->toString(D[CI)I

    move-result v2

    .line 71
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
