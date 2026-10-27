.class public final Lcom/alibaba/fastjson/util/RyuFloat;
.super Ljava/lang/Object;
.source "RyuFloat.java"


# static fields
.field private static final POW5_INV_SPLIT:[[I

.field private static final POW5_SPLIT:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 21
    const/16 v0, 0x2f

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v10, 0x8

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v11, 0x9

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v12, 0xa

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v13, 0xb

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v14, 0xc

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v15, 0xd

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v16, 0xe

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v17, 0xf

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v17, 0x10

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v17, 0x11

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v17, 0x12

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v17, 0x13

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v17, 0x14

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v17, 0x15

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v17, 0x16

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v17, 0x17

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v17, 0x18

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v17, 0x19

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v17, 0x1a

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v17, 0x1b

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v17, 0x1c

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v17, 0x1d

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v17, 0x1e

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const/16 v17, 0x1f

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const/16 v17, 0x20

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const/16 v17, 0x21

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const/16 v17, 0x22

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const/16 v17, 0x23

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/16 v17, 0x24

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const/16 v17, 0x25

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const/16 v17, 0x26

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const/16 v17, 0x27

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const/16 v17, 0x28

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const/16 v17, 0x29

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/16 v17, 0x2a

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const/16 v17, 0x2b

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const/16 v17, 0x2c

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const/16 v17, 0x2d

    aput-object v2, v0, v17

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/16 v17, 0x2e

    aput-object v2, v0, v17

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    .line 71
    const/16 v0, 0x1f

    new-array v0, v0, [[I

    new-array v2, v1, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v5

    new-array v2, v1, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v6

    new-array v2, v1, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v7

    new-array v2, v1, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v8

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v9

    new-array v2, v1, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v10

    new-array v2, v1, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v11

    new-array v2, v1, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v12

    new-array v2, v1, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v13

    new-array v2, v1, [I

    fill-array-data v2, :array_3b

    aput-object v2, v0, v14

    new-array v2, v1, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v15

    new-array v2, v1, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v16

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3f

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_40

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_41

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_43

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_44

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_45

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_46

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_47

    const/16 v3, 0x18

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_48

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_49

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4b

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4c

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_4d

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x20000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x28000000
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x32000000
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3e800000    # 0.25f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x27100000
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x30d40000
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x3d090000
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x2625a000
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x2faf0800
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x3b9aca00
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x2540be40
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x2e90edd0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3a352944
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x246139ca
        0x40000000    # 2.0f
    .end array-data

    :array_e
    .array-data 4
        0x2d79883d
        0x10000000
    .end array-data

    :array_f
    .array-data 4
        0x38d7ea4c
        0x34000000
    .end array-data

    :array_10
    .array-data 4
        0x2386f26f
        0x60800000
    .end array-data

    :array_11
    .array-data 4
        0x2c68af0b
        0x58a00000
    .end array-data

    :array_12
    .array-data 4
        0x3782dace
        0x4ec80000    # 1.6777216E9f
    .end array-data

    :array_13
    .array-data 4
        0x22b1c8c1
        0x113d0000
    .end array-data

    :array_14
    .array-data 4
        0x2b5e3af1
        0x358c4000
    .end array-data

    :array_15
    .array-data 4
        0x3635c9ad
        0x62ef5000
    .end array-data

    :array_16
    .array-data 4
        0x21e19e0c
        0x4dd59200    # 4.478894E8f
    .end array-data

    :array_17
    .array-data 4
        0x2a5a058f
        0x614af680    # 2.3400028E20f
    .end array-data

    :array_18
    .array-data 4
        0x34f086f3
        0x599db420
    .end array-data

    :array_19
    .array-data 4
        0x21165458
        0x28029094    # 7.2478E-15f
    .end array-data

    :array_1a
    .array-data 4
        0x295be96e
        0x320334b9
    .end array-data

    :array_1b
    .array-data 4
        0x33b2e3c9
        0x7e8401e7
    .end array-data

    :array_1c
    .array-data 4
        0x204fce5e
        0x1f128130
    .end array-data

    :array_1d
    .array-data 4
        0x2863c1f5
        0x66d7217c
    .end array-data

    :array_1e
    .array-data 4
        0x327cb273
        0x208ce9db
    .end array-data

    :array_1f
    .array-data 4
        0x3f1bdf10
        0x8b02452
    .end array-data

    :array_20
    .array-data 4
        0x27716b6a
        0x56e16b3
    .end array-data

    :array_21
    .array-data 4
        0x314dc644
        0x46c99c60    # 25806.188f
    .end array-data

    :array_22
    .array-data 4
        0x3da137d5
        0x587c0378
    .end array-data

    :array_23
    .array-data 4
        0x2684c2e5
        0x474d822b
    .end array-data

    :array_24
    .array-data 4
        0x3025f39e
        0x7920e2b6
    .end array-data

    :array_25
    .array-data 4
        0x3c2f7086
        0x57691b64
    .end array-data

    :array_26
    .array-data 4
        0x259da654
        0x16a1b11e
    .end array-data

    :array_27
    .array-data 4
        0x2f050fe9
        0x1c4a1d66
    .end array-data

    :array_28
    .array-data 4
        0x3ac653e3
        0x435ca4bf
    .end array-data

    :array_29
    .array-data 4
        0x24bbf46e
        0x1a19e6f7
    .end array-data

    :array_2a
    .array-data 4
        0x2deaf189
        0x60a060b5
    .end array-data

    :array_2b
    .array-data 4
        0x3965adec
        0x18c878e3
    .end array-data

    :array_2c
    .array-data 4
        0x23df8cb3
        0x4f7d4b8d
    .end array-data

    :array_2d
    .array-data 4
        0x2cd76fe0
        0x435c9e71
    .end array-data

    :array_2e
    .array-data 4
        0x380d4bd8
        0x5433c60d
    .end array-data

    :array_2f
    .array-data 4
        0x10000000
        0x1
    .end array-data

    :array_30
    .array-data 4
        0xccccccc
        0x66666667
    .end array-data

    :array_31
    .array-data 4
        0xa3d70a3
        0x6b851eb9
    .end array-data

    :array_32
    .array-data 4
        0x83126e9
        0x3c6a7efa
    .end array-data

    :array_33
    .array-data 4
        0xd1b7175
        0x4710cb2a
    .end array-data

    :array_34
    .array-data 4
        0xa7c5ac4
        0x38da3c22
    .end array-data

    :array_35
    .array-data 4
        0x8637bd0
        0x2d7b634e
    .end array-data

    :array_36
    .array-data 4
        0xd6bf94d
        0x2f2bd216
    .end array-data

    :array_37
    .array-data 4
        0xabcc771
        0xc230e78
    .end array-data

    :array_38
    .array-data 4
        0x89705f4
        0x9b5a52d
    .end array-data

    :array_39
    .array-data 4
        0xdbe6fec
        0x75ef6eae
    .end array-data

    :array_3a
    .array-data 4
        0xafebff0
        0x5e592558
    .end array-data

    :array_3b
    .array-data 4
        0x8cbccc0
        0x4b7a8447    # 1.6417863E7f
    .end array-data

    :array_3c
    .array-data 4
        0xe12e134
        0x125da071
    .end array-data

    :array_3d
    .array-data 4
        0xb424dc3
        0x284ae6c1
    .end array-data

    :array_3e
    .array-data 4
        0x901d7cf
        0x39d58567
    .end array-data

    :array_3f
    .array-data 4
        0xe69594b
        0x76226f0b
    .end array-data

    :array_40
    .array-data 4
        0xb877aa3
        0x11b525a3
    .end array-data

    :array_41
    .array-data 4
        0x9392ee8
        0x7490eae9
    .end array-data

    :array_42
    .array-data 4
        0xec1e4a7
        0x6db4ab0e
    .end array-data

    :array_43
    .array-data 4
        0xbce5086
        0x249088d8
    .end array-data

    :array_44
    .array-data 4
        0x971da05
        0x3a6d3e0
    .end array-data

    :array_45
    .array-data 4
        0xf1c9008
        0x5d7b966
    .end array-data

    :array_46
    .array-data 4
        0xc16d9a0
        0x4ac9452
    .end array-data

    :array_47
    .array-data 4
        0x9abe14c
        0x6a23a9db
    .end array-data

    :array_48
    .array-data 4
        0xf79687a
        0x769f762b
    .end array-data

    :array_49
    .array-data 4
        0xc612062
        0x2bb2c4ef
    .end array-data

    :array_4a
    .array-data 4
        0x9e74d1b
        0x3c8f03f3
    .end array-data

    :array_4b
    .array-data 4
        0xfd87b5f
        0x14180651
    .end array-data

    :array_4c
    .array-data 4
        0xcad2f7f
        0x29acd1da
    .end array-data

    :array_4d
    .array-data 4
        0xa2425ff
        0x3af0a7e2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(F[CI)I
    .locals 79
    .param p0, "value"    # F
    .param p1, "result"    # [C
    .param p2, "off"    # I

    .line 112
    const v3, 0x7fffff

    .line 113
    .local v3, "FLOAT_MANTISSA_MASK":I
    const/16 v4, 0xff

    .line 114
    .local v4, "FLOAT_EXPONENT_MASK":I
    const/16 v5, 0x7f

    .line 115
    .local v5, "FLOAT_EXPONENT_BIAS":I
    const-wide/32 v6, 0x2deefb

    .line 116
    .local v6, "LOG10_2_NUMERATOR":J
    const-wide/32 v8, 0x989680

    .line 117
    .local v8, "LOG10_5_DENOMINATOR":J
    const-wide/32 v10, 0x6aa784

    .line 122
    .local v10, "LOG10_5_NUMERATOR":J
    move/from16 v12, p2

    .line 123
    .local v12, "index":I
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 124
    add-int/lit8 v13, v12, 0x1

    .local v13, "index":I
    const/16 v14, 0x4e

    aput-char v14, p1, v12

    .line 125
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x61

    aput-char v14, p1, v13

    .line 126
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x4e

    aput-char v14, p1, v12

    .line 127
    .end local v12    # "index":I
    sub-int v12, v13, p2

    return v12

    .line 130
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_0
    const/high16 v13, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v13, p0, v13

    const/16 v14, 0x69

    const/16 v15, 0x6e

    if-nez v13, :cond_1

    .line 131
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v16, 0x49

    aput-char v16, p1, v12

    .line 132
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    aput-char v15, p1, v13

    .line 133
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v16, 0x66

    aput-char v16, p1, v12

    .line 134
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    aput-char v14, p1, v13

    .line 135
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    aput-char v15, p1, v12

    .line 136
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    aput-char v14, p1, v13

    .line 137
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x74

    aput-char v14, p1, v12

    .line 138
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x79

    aput-char v14, p1, v13

    .line 139
    .end local v13    # "index":I
    sub-int v13, v12, p2

    return v13

    .line 142
    :cond_1
    const/high16 v13, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v13, p0, v13

    const/16 v16, 0x2d

    if-nez v13, :cond_2

    .line 143
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    aput-char v16, p1, v12

    .line 144
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v16, 0x49

    aput-char v16, p1, v13

    .line 145
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    aput-char v15, p1, v12

    .line 146
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v16, 0x66

    aput-char v16, p1, v13

    .line 147
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    aput-char v14, p1, v12

    .line 148
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    aput-char v15, p1, v13

    .line 149
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    aput-char v14, p1, v12

    .line 150
    .end local v12    # "index":I
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "index":I
    const/16 v14, 0x74

    aput-char v14, p1, v13

    .line 151
    .end local v13    # "index":I
    add-int/lit8 v13, v12, 0x1

    .restart local v13    # "index":I
    const/16 v14, 0x79

    aput-char v14, p1, v12

    .line 152
    .end local v12    # "index":I
    sub-int v12, v13, p2

    return v12

    .line 155
    .end local v13    # "index":I
    .restart local v12    # "index":I
    :cond_2
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v13

    .line 156
    .local v13, "bits":I
    const/16 v14, 0x2e

    const/16 v15, 0x30

    if-nez v13, :cond_3

    .line 157
    add-int/lit8 v16, v12, 0x1

    .local v16, "index":I
    aput-char v15, p1, v12

    .line 158
    .end local v12    # "index":I
    add-int/lit8 v12, v16, 0x1

    .restart local v12    # "index":I
    aput-char v14, p1, v16

    .line 159
    .end local v16    # "index":I
    add-int/lit8 v14, v12, 0x1

    .local v14, "index":I
    aput-char v15, p1, v12

    .line 160
    .end local v12    # "index":I
    sub-int v12, v14, p2

    return v12

    .line 162
    .end local v14    # "index":I
    .restart local v12    # "index":I
    :cond_3
    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_4

    .line 163
    add-int/lit8 v14, v12, 0x1

    .restart local v14    # "index":I
    aput-char v16, p1, v12

    .line 164
    .end local v12    # "index":I
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "index":I
    aput-char v15, p1, v14

    .line 165
    .end local v14    # "index":I
    add-int/lit8 v14, v12, 0x1

    .restart local v14    # "index":I
    const/16 v16, 0x2e

    aput-char v16, p1, v12

    .line 166
    .end local v12    # "index":I
    add-int/lit8 v12, v14, 0x1

    .restart local v12    # "index":I
    aput-char v15, p1, v14

    .line 167
    .end local v14    # "index":I
    sub-int v14, v12, p2

    return v14

    .line 171
    :cond_4
    shr-int/lit8 v14, v13, 0x17

    and-int/lit16 v14, v14, 0xff

    .line 172
    .local v14, "ieeeExponent":I
    const v18, 0x7fffff

    and-int v18, v13, v18

    .line 176
    .local v18, "ieeeMantissa":I
    if-nez v14, :cond_5

    .line 177
    const/16 v19, -0x95

    .line 178
    .local v19, "e2":I
    move/from16 v20, v18

    .local v20, "m2":I
    goto :goto_0

    .line 180
    .end local v19    # "e2":I
    .end local v20    # "m2":I
    :cond_5
    add-int/lit8 v19, v14, -0x7f

    add-int/lit8 v19, v19, -0x17

    .line 181
    .restart local v19    # "e2":I
    const/high16 v20, 0x800000

    or-int v20, v18, v20

    .restart local v20    # "m2":I
    :goto_0
    move/from16 v21, v20

    .line 184
    .end local v20    # "m2":I
    .local v21, "m2":I
    const/16 v20, 0x0

    if-gez v13, :cond_6

    const/16 v22, 0x1

    goto :goto_1

    :cond_6
    move/from16 v22, v20

    .line 187
    .local v22, "sign":Z
    :goto_1
    move/from16 v15, v21

    and-int/lit8 v21, v15, 0x1

    .end local v21    # "m2":I
    .local v15, "m2":I
    if-nez v21, :cond_7

    const/16 v21, 0x1

    goto :goto_2

    :cond_7
    move/from16 v21, v20

    .line 188
    .local v21, "even":Z
    :goto_2
    const/16 v24, 0x4

    mul-int v0, v24, v15

    .line 189
    .local v0, "mv":I
    mul-int v24, v24, v15

    const/16 v25, 0x2

    move/from16 v26, v3

    add-int/lit8 v3, v24, 0x2

    .line 190
    .local v3, "mp":I
    .local v26, "FLOAT_MANTISSA_MASK":I
    const/16 v24, 0x4

    mul-int v24, v24, v15

    move/from16 v27, v4

    move/from16 v28, v5

    int-to-long v4, v15

    .end local v4    # "FLOAT_EXPONENT_MASK":I
    .end local v5    # "FLOAT_EXPONENT_BIAS":I
    .local v27, "FLOAT_EXPONENT_MASK":I
    .local v28, "FLOAT_EXPONENT_BIAS":I
    const-wide/32 v29, 0x800000

    cmp-long v4, v4, v29

    if-nez v4, :cond_9

    const/4 v4, 0x1

    if-gt v14, v4, :cond_8

    goto :goto_3

    :cond_8
    const/16 v25, 0x1

    nop

    :cond_9
    :goto_3
    sub-int v4, v24, v25

    .line 191
    .local v4, "mm":I
    add-int/lit8 v5, v19, -0x2

    .line 198
    .end local v19    # "e2":I
    .local v5, "e2":I
    const/16 v19, 0x0

    .line 199
    .local v19, "lastRemovedDigit":I
    const-wide/16 v29, 0x1

    const-wide/32 v31, 0x1624c50

    const-wide/32 v33, 0x989680

    const/16 v24, 0x1f

    move-wide/from16 v35, v6

    .end local v6    # "LOG10_2_NUMERATOR":J
    .local v35, "LOG10_2_NUMERATOR":J
    if-ltz v5, :cond_16

    .line 201
    int-to-long v6, v5

    const-wide/32 v37, 0x2deefb

    mul-long v6, v6, v37

    div-long v6, v6, v33

    long-to-int v6, v6

    .line 202
    .local v6, "q":I
    if-nez v6, :cond_a

    move-wide/from16 v39, v8

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    move-wide/from16 v39, v8

    int-to-long v7, v6

    .end local v8    # "LOG10_5_DENOMINATOR":J
    .local v39, "LOG10_5_DENOMINATOR":J
    mul-long v7, v7, v31

    add-long v7, v7, v33

    sub-long v7, v7, v29

    div-long v7, v7, v33

    long-to-int v7, v7

    :goto_4
    const/16 v8, 0x3b

    add-int/2addr v7, v8

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 203
    .local v7, "k":I
    neg-int v8, v5

    add-int/2addr v8, v6

    add-int/2addr v8, v7

    .line 204
    .local v8, "i":I
    sget-object v9, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v9, v9, v6

    aget v9, v9, v20

    move-wide/from16 v41, v10

    int-to-long v9, v9

    .line 205
    .end local v10    # "LOG10_5_NUMERATOR":J
    .local v9, "pis0":J
    .local v41, "LOG10_5_NUMERATOR":J
    sget-object v11, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v11, v11, v6

    const/16 v23, 0x1

    aget v11, v11, v23

    move/from16 v43, v13

    move/from16 v44, v14

    int-to-long v13, v11

    .line 206
    .end local v14    # "ieeeExponent":I
    .local v13, "pis1":J
    .local v43, "bits":I
    .local v44, "ieeeExponent":I
    int-to-long v1, v0

    mul-long/2addr v1, v9

    move/from16 v45, v12

    int-to-long v11, v0

    .end local v12    # "index":I
    .local v45, "index":I
    mul-long/2addr v11, v13

    shr-long v11, v11, v24

    add-long/2addr v1, v11

    add-int/lit8 v11, v8, -0x1f

    shr-long/2addr v1, v11

    long-to-int v1, v1

    .line 207
    .local v1, "dv":I
    int-to-long v11, v3

    mul-long/2addr v11, v9

    move/from16 v46, v1

    int-to-long v1, v3

    .end local v1    # "dv":I
    .local v46, "dv":I
    mul-long/2addr v1, v13

    shr-long v1, v1, v24

    add-long/2addr v11, v1

    add-int/lit8 v1, v8, -0x1f

    shr-long v1, v11, v1

    long-to-int v1, v1

    .line 208
    .local v1, "dp":I
    int-to-long v11, v4

    mul-long/2addr v11, v9

    move-wide/from16 v47, v9

    int-to-long v9, v4

    .end local v9    # "pis0":J
    .local v47, "pis0":J
    mul-long/2addr v9, v13

    shr-long v9, v9, v24

    add-long/2addr v11, v9

    add-int/lit8 v2, v8, -0x1f

    shr-long v9, v11, v2

    long-to-int v2, v9

    .line 209
    .local v2, "dm":I
    if-eqz v6, :cond_c

    add-int/lit8 v9, v1, -0x1

    const/16 v10, 0xa

    div-int/2addr v9, v10

    div-int/lit8 v10, v2, 0xa

    if-gt v9, v10, :cond_c

    .line 213
    add-int/lit8 v9, v6, -0x1

    .line 214
    .local v9, "e":I
    const/16 v10, 0x3b

    if-nez v9, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    int-to-long v11, v9

    mul-long v11, v11, v31

    add-long v11, v11, v33

    sub-long v11, v11, v29

    div-long v11, v11, v33

    long-to-int v11, v11

    :goto_5
    add-int/2addr v10, v11

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    .line 215
    .local v10, "l":I
    add-int/lit8 v12, v6, -0x1

    .local v12, "qx":I
    move/from16 v49, v1

    neg-int v1, v5

    .end local v1    # "dp":I
    .local v49, "dp":I
    add-int/2addr v1, v6

    sub-int/2addr v1, v11

    add-int/2addr v1, v10

    .line 216
    .local v1, "ii":I
    move/from16 v50, v7

    move/from16 v51, v8

    int-to-long v7, v0

    .end local v7    # "k":I
    .end local v8    # "i":I
    .local v50, "k":I
    .local v51, "i":I
    sget-object v11, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v11, v11, v12

    aget v11, v11, v20

    move/from16 v52, v9

    move/from16 v53, v10

    int-to-long v9, v11

    .end local v9    # "e":I
    .end local v10    # "l":I
    .local v52, "e":I
    .local v53, "l":I
    mul-long/2addr v7, v9

    int-to-long v9, v0

    sget-object v11, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_INV_SPLIT:[[I

    aget-object v11, v11, v12

    const/16 v23, 0x1

    aget v11, v11, v23

    move/from16 v54, v12

    int-to-long v11, v11

    .end local v12    # "qx":I
    .local v54, "qx":I
    mul-long/2addr v9, v11

    shr-long v9, v9, v24

    add-long/2addr v7, v9

    add-int/lit8 v9, v1, -0x1f

    shr-long/2addr v7, v9

    .line 217
    .local v7, "mulPow5InvDivPow2":J
    const-wide/16 v9, 0xa

    rem-long v9, v7, v9

    long-to-int v1, v9

    .end local v7    # "mulPow5InvDivPow2":J
    .end local v19    # "lastRemovedDigit":I
    .end local v52    # "e":I
    .end local v53    # "l":I
    .end local v54    # "qx":I
    .local v1, "lastRemovedDigit":I
    goto :goto_6

    .line 219
    .end local v49    # "dp":I
    .end local v50    # "k":I
    .end local v51    # "i":I
    .local v1, "dp":I
    .local v7, "k":I
    .restart local v8    # "i":I
    .restart local v19    # "lastRemovedDigit":I
    :cond_c
    move/from16 v49, v1

    move/from16 v50, v7

    move/from16 v51, v8

    .end local v1    # "dp":I
    .end local v7    # "k":I
    .end local v8    # "i":I
    .restart local v49    # "dp":I
    .restart local v50    # "k":I
    .restart local v51    # "i":I
    move/from16 v1, v19

    .end local v19    # "lastRemovedDigit":I
    .local v1, "lastRemovedDigit":I
    :goto_6
    move v7, v6

    .line 221
    .local v7, "e10":I
    const/4 v8, 0x0

    .line 223
    .local v8, "pow5Factor_mp":I
    move v9, v8

    move v8, v3

    .line 224
    .local v8, "v":I
    .local v9, "pow5Factor_mp":I
    :goto_7
    if-lez v8, :cond_e

    .line 225
    rem-int/lit8 v10, v8, 0x5

    if-eqz v10, :cond_d

    .line 226
    goto :goto_8

    .line 228
    :cond_d
    div-int/lit8 v8, v8, 0x5

    .line 229
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 233
    .end local v8    # "v":I
    :cond_e
    :goto_8
    const/4 v8, 0x0

    .line 235
    .local v8, "pow5Factor_mv":I
    move v10, v8

    move v8, v0

    .line 236
    .local v8, "v":I
    .local v10, "pow5Factor_mv":I
    :goto_9
    if-lez v8, :cond_10

    .line 237
    rem-int/lit8 v11, v8, 0x5

    if-eqz v11, :cond_f

    .line 238
    goto :goto_a

    .line 240
    :cond_f
    div-int/lit8 v8, v8, 0x5

    .line 241
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 245
    .end local v8    # "v":I
    :cond_10
    :goto_a
    const/4 v8, 0x0

    .line 247
    .local v8, "pow5Factor_mm":I
    move v11, v8

    move v8, v4

    .line 248
    .local v8, "v":I
    .local v11, "pow5Factor_mm":I
    :goto_b
    if-lez v8, :cond_12

    .line 249
    rem-int/lit8 v12, v8, 0x5

    if-eqz v12, :cond_11

    .line 250
    goto :goto_c

    .line 252
    :cond_11
    div-int/lit8 v8, v8, 0x5

    .line 253
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 257
    .end local v8    # "v":I
    :cond_12
    :goto_c
    if-lt v9, v6, :cond_13

    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    move/from16 v8, v20

    .line 258
    .local v8, "dpIsTrailingZeros":Z
    :goto_d
    if-lt v10, v6, :cond_14

    const/4 v12, 0x1

    goto :goto_e

    :cond_14
    move/from16 v12, v20

    .line 259
    .local v12, "dvIsTrailingZeros":Z
    :goto_e
    if-lt v11, v6, :cond_15

    const/16 v19, 0x1

    goto :goto_f

    :cond_15
    move/from16 v19, v20

    .end local v6    # "q":I
    .end local v9    # "pow5Factor_mp":I
    .end local v10    # "pow5Factor_mv":I
    .end local v11    # "pow5Factor_mm":I
    .end local v13    # "pis1":J
    .end local v47    # "pis0":J
    .end local v50    # "k":I
    .end local v51    # "i":I
    :goto_f
    move/from16 v6, v19

    .line 260
    .local v6, "dmIsTrailingZeros":Z
    nop

    .line 285
    move/from16 v60, v3

    move/from16 v57, v46

    move v3, v1

    move/from16 v1, v49

    goto/16 :goto_17

    .line 262
    .end local v1    # "lastRemovedDigit":I
    .end local v2    # "dm":I
    .end local v6    # "dmIsTrailingZeros":Z
    .end local v7    # "e10":I
    .end local v39    # "LOG10_5_DENOMINATOR":J
    .end local v41    # "LOG10_5_NUMERATOR":J
    .end local v43    # "bits":I
    .end local v44    # "ieeeExponent":I
    .end local v45    # "index":I
    .end local v46    # "dv":I
    .end local v49    # "dp":I
    .local v8, "LOG10_5_DENOMINATOR":J
    .local v10, "LOG10_5_NUMERATOR":J
    .local v12, "index":I
    .local v13, "bits":I
    .restart local v14    # "ieeeExponent":I
    .restart local v19    # "lastRemovedDigit":I
    :cond_16
    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    move/from16 v45, v12

    move/from16 v43, v13

    move/from16 v44, v14

    .end local v8    # "LOG10_5_DENOMINATOR":J
    .end local v10    # "LOG10_5_NUMERATOR":J
    .end local v12    # "index":I
    .end local v13    # "bits":I
    .end local v14    # "ieeeExponent":I
    .restart local v39    # "LOG10_5_DENOMINATOR":J
    .restart local v41    # "LOG10_5_NUMERATOR":J
    .restart local v43    # "bits":I
    .restart local v44    # "ieeeExponent":I
    .restart local v45    # "index":I
    neg-int v1, v5

    int-to-long v1, v1

    const-wide/32 v6, 0x6aa784

    mul-long/2addr v1, v6

    div-long v1, v1, v33

    long-to-int v1, v1

    .line 263
    .local v1, "q":I
    neg-int v2, v5

    sub-int/2addr v2, v1

    .line 264
    .local v2, "i":I
    if-nez v2, :cond_17

    const/4 v6, 0x1

    goto :goto_10

    :cond_17
    int-to-long v6, v2

    mul-long v6, v6, v31

    add-long v6, v6, v33

    sub-long v6, v6, v29

    div-long v6, v6, v33

    long-to-int v6, v6

    :goto_10
    add-int/lit8 v6, v6, -0x3d

    .line 265
    .local v6, "k":I
    sub-int v7, v1, v6

    .line 267
    .local v7, "j":I
    sget-object v8, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v8, v8, v2

    aget v8, v8, v20

    int-to-long v8, v8

    .line 268
    .local v8, "ps0":J
    sget-object v10, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v10, v10, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-long v10, v10

    .line 269
    .local v10, "ps1":J
    add-int/lit8 v12, v7, -0x1f

    .line 270
    .local v12, "j31":I
    int-to-long v13, v0

    mul-long/2addr v13, v8

    move/from16 v55, v6

    move/from16 v56, v7

    int-to-long v6, v0

    .end local v6    # "k":I
    .end local v7    # "j":I
    .local v55, "k":I
    .local v56, "j":I
    mul-long/2addr v6, v10

    shr-long v6, v6, v24

    add-long/2addr v13, v6

    shr-long v6, v13, v12

    long-to-int v6, v6

    .line 271
    .local v6, "dv":I
    int-to-long v13, v3

    mul-long/2addr v13, v8

    move/from16 v57, v6

    int-to-long v6, v3

    .end local v6    # "dv":I
    .local v57, "dv":I
    mul-long/2addr v6, v10

    shr-long v6, v6, v24

    add-long/2addr v13, v6

    shr-long v6, v13, v12

    long-to-int v6, v6

    .line 272
    .local v6, "dp":I
    int-to-long v13, v4

    mul-long/2addr v13, v8

    move-wide/from16 v58, v8

    int-to-long v7, v4

    .end local v8    # "ps0":J
    .local v58, "ps0":J
    mul-long/2addr v7, v10

    shr-long v7, v7, v24

    add-long/2addr v13, v7

    shr-long v7, v13, v12

    long-to-int v7, v7

    .line 274
    .local v7, "dm":I
    if-eqz v1, :cond_19

    add-int/lit8 v8, v6, -0x1

    const/16 v9, 0xa

    div-int/2addr v8, v9

    div-int/lit8 v9, v7, 0xa

    if-gt v8, v9, :cond_19

    .line 275
    add-int/lit8 v8, v2, 0x1

    .line 276
    .local v8, "e":I
    add-int/lit8 v9, v1, -0x1

    if-nez v8, :cond_18

    const/4 v13, 0x1

    goto :goto_11

    :cond_18
    int-to-long v13, v8

    mul-long v13, v13, v31

    add-long v13, v13, v33

    sub-long v13, v13, v29

    div-long v13, v13, v33

    long-to-int v13, v13

    :goto_11
    add-int/lit8 v13, v13, -0x3d

    sub-int/2addr v9, v13

    .line 277
    .end local v56    # "j":I
    .local v9, "j":I
    add-int/lit8 v13, v2, 0x1

    .line 278
    .local v13, "ix":I
    move/from16 v61, v2

    move/from16 v60, v3

    int-to-long v2, v0

    .end local v2    # "i":I
    .end local v3    # "mp":I
    .local v60, "mp":I
    .local v61, "i":I
    sget-object v14, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v14, v14, v13

    aget v14, v14, v20

    move/from16 v62, v6

    move/from16 v63, v7

    int-to-long v6, v14

    .end local v6    # "dp":I
    .end local v7    # "dm":I
    .local v62, "dp":I
    .local v63, "dm":I
    mul-long/2addr v2, v6

    int-to-long v6, v0

    sget-object v14, Lcom/alibaba/fastjson/util/RyuFloat;->POW5_SPLIT:[[I

    aget-object v14, v14, v13

    const/16 v23, 0x1

    aget v14, v14, v23

    move-wide/from16 v64, v10

    int-to-long v10, v14

    .end local v10    # "ps1":J
    .local v64, "ps1":J
    mul-long/2addr v6, v10

    shr-long v6, v6, v24

    add-long/2addr v2, v6

    add-int/lit8 v6, v9, -0x1f

    shr-long/2addr v2, v6

    .line 279
    .local v2, "mulPow5divPow2":J
    const-wide/16 v6, 0xa

    rem-long v6, v2, v6

    long-to-int v2, v6

    .line 281
    .end local v8    # "e":I
    .end local v13    # "ix":I
    .end local v19    # "lastRemovedDigit":I
    .local v2, "lastRemovedDigit":I
    move/from16 v56, v9

    goto :goto_12

    .end local v9    # "j":I
    .end local v60    # "mp":I
    .end local v61    # "i":I
    .end local v62    # "dp":I
    .end local v63    # "dm":I
    .end local v64    # "ps1":J
    .local v2, "i":I
    .restart local v3    # "mp":I
    .restart local v6    # "dp":I
    .restart local v7    # "dm":I
    .restart local v10    # "ps1":J
    .restart local v19    # "lastRemovedDigit":I
    .restart local v56    # "j":I
    :cond_19
    move/from16 v61, v2

    move/from16 v60, v3

    move/from16 v62, v6

    move/from16 v63, v7

    move-wide/from16 v64, v10

    .end local v2    # "i":I
    .end local v3    # "mp":I
    .end local v6    # "dp":I
    .end local v7    # "dm":I
    .end local v10    # "ps1":J
    .restart local v60    # "mp":I
    .restart local v61    # "i":I
    .restart local v62    # "dp":I
    .restart local v63    # "dm":I
    .restart local v64    # "ps1":J
    move/from16 v2, v19

    .end local v19    # "lastRemovedDigit":I
    .local v2, "lastRemovedDigit":I
    :goto_12
    add-int v7, v1, v5

    .line 283
    .local v7, "e10":I
    const/4 v3, 0x1

    if-lt v3, v1, :cond_1a

    const/4 v3, 0x1

    goto :goto_13

    :cond_1a
    move/from16 v3, v20

    :goto_13
    move v8, v3

    .line 284
    .local v8, "dpIsTrailingZeros":Z
    const/16 v3, 0x17

    if-ge v1, v3, :cond_1b

    add-int/lit8 v3, v1, -0x1

    const/4 v6, 0x1

    shl-int v3, v6, v3

    sub-int/2addr v3, v6

    and-int/2addr v3, v0

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_14

    :cond_1b
    move/from16 v3, v20

    .line 285
    .local v3, "dvIsTrailingZeros":Z
    :goto_14
    rem-int/lit8 v6, v4, 0x2

    const/4 v9, 0x1

    if-ne v6, v9, :cond_1c

    move/from16 v6, v20

    goto :goto_15

    :cond_1c
    const/4 v6, 0x1

    :goto_15
    if-lt v6, v1, :cond_1d

    const/4 v6, 0x1

    goto :goto_16

    :cond_1d
    move/from16 v6, v20

    .end local v1    # "q":I
    .end local v12    # "j31":I
    .end local v55    # "k":I
    .end local v56    # "j":I
    .end local v58    # "ps0":J
    .end local v61    # "i":I
    .end local v64    # "ps1":J
    :goto_16
    move v12, v3

    move/from16 v1, v62

    move v3, v2

    move/from16 v2, v63

    .line 297
    .end local v62    # "dp":I
    .end local v63    # "dm":I
    .local v1, "dp":I
    .local v2, "dm":I
    .local v3, "lastRemovedDigit":I
    .local v6, "dmIsTrailingZeros":Z
    .local v12, "dvIsTrailingZeros":Z
    :goto_17
    const/16 v9, 0xa

    .line 298
    .local v9, "dplength":I
    const v10, 0x3b9aca00

    .line 299
    .local v10, "factor":I
    :goto_18
    if-lez v9, :cond_1f

    .line 300
    if-lt v1, v10, :cond_1e

    .line 301
    goto :goto_19

    .line 303
    :cond_1e
    div-int/lit8 v10, v10, 0xa

    .line 299
    add-int/lit8 v9, v9, -0x1

    goto :goto_18

    .line 305
    :cond_1f
    :goto_19
    add-int v11, v7, v9

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    .line 308
    .local v11, "exp":I
    const/4 v13, -0x3

    if-lt v11, v13, :cond_21

    const/4 v13, 0x7

    if-lt v11, v13, :cond_20

    goto :goto_1a

    :cond_20
    move/from16 v13, v20

    goto :goto_1b

    :cond_21
    :goto_1a
    const/4 v13, 0x1

    .line 310
    .local v13, "scientificNotation":Z
    :goto_1b
    const/4 v14, 0x0

    .line 311
    .local v14, "removed":I
    if-eqz v8, :cond_22

    if-nez v21, :cond_22

    .line 312
    add-int/lit8 v1, v1, -0x1

    .line 315
    :cond_22
    :goto_1c
    move/from16 v66, v0

    div-int/lit8 v0, v1, 0xa

    .end local v0    # "mv":I
    .local v66, "mv":I
    move/from16 v67, v3

    div-int/lit8 v3, v2, 0xa

    .end local v3    # "lastRemovedDigit":I
    .local v67, "lastRemovedDigit":I
    if-le v0, v3, :cond_25

    .line 316
    const/16 v0, 0x64

    if-ge v1, v0, :cond_23

    if-eqz v13, :cond_23

    .line 318
    goto :goto_1e

    .line 320
    :cond_23
    rem-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_24

    const/4 v0, 0x1

    goto :goto_1d

    :cond_24
    move/from16 v0, v20

    :goto_1d
    and-int/2addr v6, v0

    .line 321
    div-int/lit8 v1, v1, 0xa

    .line 322
    rem-int/lit8 v3, v57, 0xa

    .line 323
    .end local v67    # "lastRemovedDigit":I
    .restart local v3    # "lastRemovedDigit":I
    div-int/lit8 v57, v57, 0xa

    .line 324
    div-int/lit8 v2, v2, 0xa

    .line 325
    add-int/lit8 v14, v14, 0x1

    .line 315
    move/from16 v0, v66

    goto :goto_1c

    .line 327
    .end local v3    # "lastRemovedDigit":I
    .restart local v67    # "lastRemovedDigit":I
    :cond_25
    :goto_1e
    if-eqz v6, :cond_28

    if-eqz v21, :cond_28

    .line 328
    move/from16 v3, v67

    .end local v67    # "lastRemovedDigit":I
    .restart local v3    # "lastRemovedDigit":I
    :goto_1f
    rem-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_27

    .line 329
    const/16 v0, 0x64

    if-ge v1, v0, :cond_26

    if-eqz v13, :cond_26

    .line 331
    goto :goto_20

    .line 333
    :cond_26
    div-int/lit8 v1, v1, 0xa

    .line 334
    rem-int/lit8 v3, v57, 0xa

    .line 335
    div-int/lit8 v57, v57, 0xa

    .line 336
    div-int/lit8 v2, v2, 0xa

    .line 337
    add-int/lit8 v14, v14, 0x1

    goto :goto_1f

    .line 341
    :cond_27
    :goto_20
    move/from16 v0, v57

    goto :goto_21

    .end local v3    # "lastRemovedDigit":I
    .restart local v67    # "lastRemovedDigit":I
    :cond_28
    move/from16 v0, v57

    move/from16 v3, v67

    .end local v57    # "dv":I
    .end local v67    # "lastRemovedDigit":I
    .local v0, "dv":I
    .restart local v3    # "lastRemovedDigit":I
    :goto_21
    move/from16 v68, v1

    const/4 v1, 0x5

    .end local v1    # "dp":I
    .local v68, "dp":I
    if-eqz v12, :cond_29

    if-ne v3, v1, :cond_29

    rem-int/lit8 v19, v0, 0x2

    if-nez v19, :cond_29

    .line 343
    const/4 v3, 0x4

    .line 345
    :cond_29
    if-ne v0, v2, :cond_2a

    if-eqz v6, :cond_2b

    if-eqz v21, :cond_2b

    :cond_2a
    if-lt v3, v1, :cond_2c

    :cond_2b
    const/4 v1, 0x1

    goto :goto_22

    :cond_2c
    move/from16 v1, v20

    :goto_22
    add-int/2addr v1, v0

    .line 347
    .local v1, "output":I
    move/from16 v69, v0

    sub-int v0, v9, v14

    .line 351
    .local v0, "olength":I
    .local v69, "dv":I
    if-eqz v22, :cond_2d

    .line 352
    add-int/lit8 v19, v45, 0x1

    .local v19, "index":I
    aput-char v16, p1, v45

    .line 355
    .end local v45    # "index":I
    move/from16 v45, v19

    .end local v19    # "index":I
    .restart local v45    # "index":I
    :cond_2d
    if-eqz v13, :cond_32

    .line 357
    nop

    .local v20, "i":I
    :goto_23
    move/from16 v70, v20

    .end local v20    # "i":I
    .local v70, "i":I
    move/from16 v71, v2

    add-int/lit8 v2, v0, -0x1

    .end local v2    # "dm":I
    .local v71, "dm":I
    move/from16 v72, v3

    move/from16 v3, v70

    if-ge v3, v2, :cond_2e

    .line 358
    .end local v70    # "i":I
    .local v3, "i":I
    .local v72, "lastRemovedDigit":I
    rem-int/lit8 v2, v1, 0xa

    .line 359
    .local v2, "c":I
    div-int/lit8 v1, v1, 0xa

    .line 360
    add-int v19, v45, v0

    sub-int v19, v19, v3

    move/from16 v73, v1

    const/16 v20, 0x30

    add-int v1, v20, v2

    .end local v1    # "output":I
    .local v73, "output":I
    int-to-char v1, v1

    aput-char v1, p1, v19

    .line 357
    .end local v2    # "c":I
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .local v1, "i":I
    move/from16 v20, v1

    move/from16 v2, v71

    move/from16 v3, v72

    move/from16 v1, v73

    goto :goto_23

    .line 362
    .end local v73    # "output":I
    .local v1, "output":I
    :cond_2e
    const/16 v20, 0x30

    rem-int/lit8 v2, v1, 0xa

    add-int v2, v20, v2

    int-to-char v2, v2

    aput-char v2, p1, v45

    .line 363
    add-int/lit8 v2, v45, 0x1

    const/16 v3, 0x2e

    aput-char v3, p1, v2

    .line 364
    add-int/lit8 v2, v0, 0x1

    add-int v45, v45, v2

    .line 365
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2f

    .line 366
    add-int/lit8 v2, v45, 0x1

    .local v2, "index":I
    const/16 v3, 0x30

    aput-char v3, p1, v45

    .end local v45    # "index":I
    goto :goto_24

    .line 370
    .end local v2    # "index":I
    .restart local v45    # "index":I
    :cond_2f
    move/from16 v2, v45

    .end local v45    # "index":I
    .restart local v2    # "index":I
    :goto_24
    add-int/lit8 v3, v2, 0x1

    .local v3, "index":I
    const/16 v17, 0x45

    aput-char v17, p1, v2

    .line 371
    .end local v2    # "index":I
    if-gez v11, :cond_30

    .line 372
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "index":I
    aput-char v16, p1, v3

    .line 373
    .end local v3    # "index":I
    neg-int v11, v11

    goto :goto_25

    .line 375
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_30
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_25
    const/16 v3, 0xa

    if-lt v11, v3, :cond_31

    .line 376
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "index":I
    div-int/lit8 v16, v11, 0xa

    move/from16 v74, v1

    const/16 v19, 0x30

    add-int v1, v19, v16

    .end local v1    # "output":I
    .local v74, "output":I
    int-to-char v1, v1

    aput-char v1, p1, v2

    .line 378
    .end local v2    # "index":I
    move v2, v3

    goto :goto_26

    .end local v3    # "index":I
    .end local v74    # "output":I
    .restart local v1    # "output":I
    .restart local v2    # "index":I
    :cond_31
    move/from16 v74, v1

    const/16 v19, 0x30

    .end local v1    # "output":I
    .restart local v74    # "output":I
    :goto_26
    add-int/lit8 v1, v2, 0x1

    .local v1, "index":I
    rem-int/lit8 v3, v11, 0xa

    add-int v3, v19, v3

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 420
    .end local v2    # "index":I
    move v3, v1

    move/from16 v76, v4

    move/from16 v1, v74

    goto/16 :goto_2d

    .line 381
    .end local v71    # "dm":I
    .end local v72    # "lastRemovedDigit":I
    .end local v74    # "output":I
    .local v1, "output":I
    .local v2, "dm":I
    .local v3, "lastRemovedDigit":I
    .restart local v45    # "index":I
    :cond_32
    move/from16 v71, v2

    move/from16 v72, v3

    const/16 v19, 0x30

    .end local v2    # "dm":I
    .end local v3    # "lastRemovedDigit":I
    .restart local v71    # "dm":I
    .restart local v72    # "lastRemovedDigit":I
    if-gez v11, :cond_35

    .line 383
    add-int/lit8 v2, v45, 0x1

    .local v2, "index":I
    aput-char v19, p1, v45

    .line 384
    .end local v45    # "index":I
    add-int/lit8 v3, v2, 0x1

    .local v3, "index":I
    const/16 v16, 0x2e

    aput-char v16, p1, v2

    .line 385
    .end local v2    # "index":I
    const/4 v2, -0x1

    .local v2, "i":I
    :goto_27
    if-le v2, v11, :cond_33

    .line 386
    add-int/lit8 v16, v3, 0x1

    .restart local v16    # "index":I
    const/16 v17, 0x30

    aput-char v17, p1, v3

    .line 385
    .end local v3    # "index":I
    add-int/lit8 v2, v2, -0x1

    move/from16 v3, v16

    goto :goto_27

    .line 388
    .end local v2    # "i":I
    .end local v16    # "index":I
    .restart local v3    # "index":I
    :cond_33
    move v2, v3

    .line 389
    .local v2, "current":I
    nop

    .restart local v20    # "i":I
    :goto_28
    move/from16 v75, v20

    .end local v20    # "i":I
    .local v75, "i":I
    move/from16 v76, v4

    move/from16 v4, v75

    if-ge v4, v0, :cond_34

    .line 390
    .end local v75    # "i":I
    .local v4, "i":I
    .local v76, "mm":I
    add-int v16, v2, v0

    sub-int v16, v16, v4

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    rem-int/lit8 v17, v1, 0xa

    move/from16 v77, v2

    const/16 v19, 0x30

    add-int v2, v19, v17

    .end local v2    # "current":I
    .local v77, "current":I
    int-to-char v2, v2

    aput-char v2, p1, v16

    .line 391
    div-int/lit8 v1, v1, 0xa

    .line 392
    add-int/lit8 v3, v3, 0x1

    .line 389
    add-int/lit8 v20, v4, 0x1

    .end local v4    # "i":I
    .restart local v20    # "i":I
    move/from16 v4, v76

    move/from16 v2, v77

    goto :goto_28

    .line 394
    .end local v20    # "i":I
    .end local v77    # "current":I
    :cond_34
    goto/16 :goto_2d

    .end local v3    # "index":I
    .end local v76    # "mm":I
    .local v4, "mm":I
    .restart local v45    # "index":I
    :cond_35
    move/from16 v76, v4

    .end local v4    # "mm":I
    .restart local v76    # "mm":I
    add-int/lit8 v2, v11, 0x1

    if-lt v2, v0, :cond_38

    .line 396
    nop

    .restart local v20    # "i":I
    :goto_29
    move/from16 v2, v20

    .end local v20    # "i":I
    .local v2, "i":I
    if-ge v2, v0, :cond_36

    .line 397
    add-int v3, v45, v0

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    rem-int/lit8 v4, v1, 0xa

    const/16 v16, 0x30

    add-int v4, v16, v4

    int-to-char v4, v4

    aput-char v4, p1, v3

    .line 398
    div-int/lit8 v1, v1, 0xa

    .line 396
    add-int/lit8 v20, v2, 0x1

    .end local v2    # "i":I
    .restart local v20    # "i":I
    goto :goto_29

    .line 400
    .end local v20    # "i":I
    :cond_36
    add-int v45, v45, v0

    .line 401
    move v2, v0

    .restart local v2    # "i":I
    :goto_2a
    add-int/lit8 v3, v11, 0x1

    if-ge v2, v3, :cond_37

    .line 402
    add-int/lit8 v3, v45, 0x1

    .restart local v3    # "index":I
    const/16 v4, 0x30

    aput-char v4, p1, v45

    .line 401
    .end local v45    # "index":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v45, v3

    goto :goto_2a

    .line 404
    .end local v2    # "i":I
    .end local v3    # "index":I
    .restart local v45    # "index":I
    :cond_37
    add-int/lit8 v2, v45, 0x1

    .local v2, "index":I
    const/16 v3, 0x2e

    aput-char v3, p1, v45

    .line 405
    .end local v45    # "index":I
    add-int/lit8 v3, v2, 0x1

    .restart local v3    # "index":I
    const/16 v4, 0x30

    aput-char v4, p1, v2

    .end local v2    # "index":I
    goto :goto_2d

    .line 408
    .end local v3    # "index":I
    .restart local v45    # "index":I
    :cond_38
    add-int/lit8 v2, v45, 0x1

    .line 409
    .local v2, "current":I
    nop

    .restart local v20    # "i":I
    :goto_2b
    move/from16 v3, v20

    .end local v20    # "i":I
    .local v3, "i":I
    if-ge v3, v0, :cond_3a

    .line 410
    sub-int v4, v0, v3

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v11, :cond_39

    .line 411
    add-int v4, v2, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    const/16 v17, 0x2e

    aput-char v17, p1, v4

    .line 412
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 414
    :cond_39
    const/16 v17, 0x2e

    :goto_2c
    add-int v4, v2, v0

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v19, v1, 0xa

    move/from16 v78, v2

    const/16 v20, 0x30

    add-int v2, v20, v19

    .end local v2    # "current":I
    .local v78, "current":I
    int-to-char v2, v2

    aput-char v2, p1, v4

    .line 415
    div-int/lit8 v1, v1, 0xa

    .line 409
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .local v2, "i":I
    move/from16 v20, v2

    move/from16 v2, v78

    goto :goto_2b

    .line 417
    .end local v78    # "current":I
    .local v2, "current":I
    :cond_3a
    add-int/lit8 v3, v0, 0x1

    add-int v2, v45, v3

    .line 420
    .end local v45    # "index":I
    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_2d
    sub-int v4, v3, p2

    return v4
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 4
    .param p0, "value"    # F

    .line 106
    const/16 v0, 0xf

    new-array v0, v0, [C

    .line 107
    .local v0, "result":[C
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/RyuFloat;->toString(F[CI)I

    move-result v2

    .line 108
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method
