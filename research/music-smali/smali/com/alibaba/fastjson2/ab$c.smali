.class public final Lcom/alibaba/fastjson2/ab$c;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/alibaba/fastjson2/ab$c;


# instance fields
.field public final b:Lcom/alibaba/fastjson2/ab$c;

.field final c:Ljava/lang/String;

.field final d:I

.field e:Ljava/lang/String;

.field f:Lcom/alibaba/fastjson2/ab$c;

.field g:Lcom/alibaba/fastjson2/ab$c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1956
    new-instance v0, Lcom/alibaba/fastjson2/ab$c;

    const/4 v1, 0x0

    const-string v2, "$"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/ab$c;-><init>(Lcom/alibaba/fastjson2/ab$c;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/ab$c;I)V
    .locals 0

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    const/4 p1, 0x0

    .line 1974
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    .line 1975
    iput p2, p0, Lcom/alibaba/fastjson2/ab$c;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/ab$c;Ljava/lang/String;)V
    .locals 0

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    .line 1968
    iput-object p2, p0, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1969
    iput p1, p0, Lcom/alibaba/fastjson2/ab$c;->d:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1984
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1988
    :cond_1
    check-cast p1, Lcom/alibaba/fastjson2/ab$c;

    .line 1989
    iget v2, p0, Lcom/alibaba/fastjson2/ab$c;->d:I

    iget v3, p1, Lcom/alibaba/fastjson2/ab$c;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    iget-object v3, p1, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 1994
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/fastjson2/ab$c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1999
    iget-object v1, v0, Lcom/alibaba/fastjson2/ab$c;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0x10

    .line 2003
    new-array v1, v1, [B

    const/4 v2, 0x4

    .line 2007
    new-array v3, v2, [Lcom/alibaba/fastjson2/ab$c;

    move-object v6, v3

    const/4 v5, 0x0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    .line 2009
    array-length v7, v6

    if-ne v7, v5, :cond_1

    .line 2010
    array-length v7, v6

    add-int/2addr v7, v2

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/alibaba/fastjson2/ab$c;

    .line 2012
    :cond_1
    aput-object v3, v6, v5

    add-int/lit8 v5, v5, 0x1

    .line 2008
    iget-object v3, v3, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    sub-int/2addr v5, v2

    move-object v8, v1

    move v3, v2

    move v1, v5

    const/4 v7, 0x0

    :goto_1
    if-ltz v1, :cond_27

    .line 2019
    aget-object v9, v6, v1

    .line 2020
    iget-object v10, v9, Lcom/alibaba/fastjson2/ab$c;->c:Ljava/lang/String;

    const/4 v11, 0x2

    if-nez v10, :cond_4

    .line 2022
    iget v9, v9, Lcom/alibaba/fastjson2/ab$c;->d:I

    .line 2023
    invoke-static {v9}, Labe;->a(I)I

    move-result v10

    :goto_2
    add-int v12, v7, v10

    add-int/2addr v12, v11

    .line 2024
    array-length v13, v8

    if-lt v12, v13, :cond_3

    .line 2025
    array-length v12, v8

    array-length v13, v8

    shr-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 2026
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v7, 0x1

    const/16 v12, 0x5b

    .line 2029
    aput-byte v12, v8, v7

    add-int/2addr v11, v10

    .line 2030
    invoke-static {v9, v11, v8}, Labe;->a(II[B)V

    add-int/lit8 v7, v11, 0x1

    const/16 v9, 0x5d

    .line 2032
    aput-byte v9, v8, v11

    goto/16 :goto_d

    :cond_4
    add-int/lit8 v9, v7, 0x1

    .line 2034
    array-length v12, v8

    if-lt v9, v12, :cond_5

    .line 2035
    array-length v12, v8

    array-length v13, v8

    shr-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 2036
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_5
    if-eq v1, v5, :cond_6

    const/16 v12, 0x2e

    .line 2040
    aput-byte v12, v8, v7

    move v7, v9

    .line 2043
    :cond_6
    sget v9, Labf;->d:I

    const/16 v12, 0x8

    const v13, 0xd800

    const/16 v14, 0x7e

    const/16 v15, 0x60

    const/16 v16, -0x1

    const v11, 0xe000

    const/16 v17, 0x3f

    if-ne v9, v12, :cond_16

    .line 2044
    invoke-static {v10}, Labf;->a(Ljava/lang/String;)[C

    move-result-object v9

    move v12, v3

    const/4 v3, 0x0

    .line 2045
    :goto_3
    array-length v4, v9

    if-ge v3, v4, :cond_15

    .line 2046
    aget-char v4, v9, v3

    if-eq v4, v15, :cond_13

    if-eq v4, v14, :cond_13

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    if-lt v4, v2, :cond_8

    const/16 v14, 0x7f

    if-gt v4, v14, :cond_8

    .line 2084
    array-length v14, v8

    if-ne v7, v14, :cond_7

    .line 2085
    array-length v14, v8

    array-length v15, v8

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2086
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_7
    add-int/lit8 v14, v7, 0x1

    int-to-byte v4, v4

    .line 2088
    aput-byte v4, v8, v7

    move v7, v14

    goto/16 :goto_7

    :cond_8
    if-lt v4, v13, :cond_f

    if-ge v4, v11, :cond_f

    const v12, 0xdc00

    if-ge v4, v12, :cond_e

    .line 2093
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v1

    const/4 v15, 0x2

    if-ge v14, v15, :cond_9

    move/from16 v4, v16

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v1, 0x1

    .line 2096
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v12, :cond_d

    if-ge v14, v11, :cond_d

    shl-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v14

    const v12, -0x35fdc00

    add-int/2addr v4, v12

    :goto_4
    if-gez v4, :cond_b

    .line 2115
    array-length v4, v8

    if-ne v7, v4, :cond_a

    .line 2116
    array-length v4, v8

    array-length v12, v8

    shr-int/2addr v12, v2

    add-int/2addr v4, v12

    .line 2117
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_a
    add-int/lit8 v4, v7, 0x1

    .line 2119
    aput-byte v17, v8, v7

    goto :goto_5

    :cond_b
    add-int/lit8 v12, v7, 0x3

    .line 2121
    array-length v14, v8

    if-lt v12, v14, :cond_c

    .line 2122
    array-length v14, v8

    array-length v15, v8

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2123
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_c
    shr-int/lit8 v14, v4, 0x12

    or-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    .line 2125
    aput-byte v14, v8, v7

    add-int/lit8 v14, v7, 0x1

    shr-int/lit8 v15, v4, 0xc

    and-int/lit8 v15, v15, 0x3f

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    .line 2126
    aput-byte v15, v8, v14

    add-int/lit8 v14, v7, 0x2

    shr-int/lit8 v15, v4, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    .line 2127
    aput-byte v15, v8, v14

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2128
    aput-byte v4, v8, v12

    add-int/lit8 v4, v7, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v7, 0x1

    .line 2102
    aput-byte v17, v8, v7

    goto :goto_5

    :cond_e
    add-int/lit8 v4, v7, 0x1

    .line 2109
    aput-byte v17, v8, v7

    :goto_5
    move v7, v4

    goto :goto_6

    :cond_f
    const/16 v12, 0x7ff

    if-le v4, v12, :cond_11

    add-int/lit8 v12, v7, 0x2

    .line 2133
    array-length v14, v8

    if-lt v12, v14, :cond_10

    .line 2134
    array-length v14, v8

    array-length v15, v8

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2135
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_10
    shr-int/lit8 v14, v4, 0xc

    and-int/lit8 v14, v14, 0xf

    or-int/lit16 v14, v14, 0xe0

    int-to-byte v14, v14

    .line 2139
    aput-byte v14, v8, v7

    add-int/lit8 v14, v7, 0x1

    shr-int/lit8 v15, v4, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/lit16 v15, v15, 0x80

    int-to-byte v15, v15

    .line 2140
    aput-byte v15, v8, v14

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2141
    aput-byte v4, v8, v12

    add-int/lit8 v7, v7, 0x3

    goto :goto_6

    :cond_11
    add-int/lit8 v12, v7, 0x1

    .line 2144
    array-length v14, v8

    if-lt v12, v14, :cond_12

    .line 2145
    array-length v14, v8

    array-length v15, v8

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2146
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_12
    shr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0x1f

    or-int/lit16 v14, v14, 0xc0

    int-to-byte v14, v14

    .line 2150
    aput-byte v14, v8, v7

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2151
    aput-byte v4, v8, v12

    add-int/lit8 v7, v7, 0x2

    :goto_6
    const/4 v12, 0x0

    goto :goto_7

    :cond_13
    :pswitch_0
    add-int/lit8 v14, v7, 0x1

    .line 2074
    array-length v15, v8

    if-lt v14, v15, :cond_14

    .line 2075
    array-length v15, v8

    array-length v11, v8

    shr-int/2addr v11, v2

    add-int/2addr v15, v11

    .line 2076
    invoke-static {v8, v15}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_14
    const/16 v11, 0x5c

    .line 2078
    aput-byte v11, v8, v7

    int-to-byte v4, v4

    .line 2079
    aput-byte v4, v8, v14

    add-int/lit8 v7, v7, 0x2

    :goto_7
    add-int/2addr v3, v2

    const v11, 0xe000

    const/16 v14, 0x7e

    const/16 v15, 0x60

    goto/16 :goto_3

    :cond_15
    move v3, v12

    goto/16 :goto_d

    :cond_16
    move v4, v3

    const/4 v3, 0x0

    .line 2158
    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v3, v9, :cond_26

    .line 2159
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x60

    if-eq v9, v11, :cond_24

    const/16 v12, 0x7e

    if-eq v9, v12, :cond_24

    packed-switch v9, :pswitch_data_5

    packed-switch v9, :pswitch_data_6

    packed-switch v9, :pswitch_data_7

    packed-switch v9, :pswitch_data_8

    packed-switch v9, :pswitch_data_9

    if-lt v9, v2, :cond_18

    const/16 v14, 0x7f

    if-gt v9, v14, :cond_18

    .line 2197
    array-length v14, v8

    if-ne v7, v14, :cond_17

    .line 2198
    array-length v14, v8

    array-length v15, v8

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2199
    invoke-static {v8, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_17
    add-int/lit8 v14, v7, 0x1

    int-to-byte v9, v9

    .line 2201
    aput-byte v9, v8, v7

    move v7, v14

    const v14, 0xe000

    const v15, 0xdc00

    goto/16 :goto_c

    :cond_18
    if-lt v9, v13, :cond_1f

    const v14, 0xe000

    if-ge v9, v14, :cond_20

    const v15, 0xdc00

    if-ge v9, v15, :cond_1e

    .line 2206
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v11, 0x2

    if-ge v4, v11, :cond_19

    move/from16 v4, v16

    goto :goto_9

    :cond_19
    add-int/lit8 v4, v1, 0x1

    .line 2209
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v15, :cond_1d

    if-ge v4, v14, :cond_1d

    shl-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v4

    const v4, -0x35fdc00

    add-int/2addr v4, v9

    :goto_9
    if-gez v4, :cond_1b

    .line 2228
    array-length v4, v8

    if-ne v7, v4, :cond_1a

    .line 2229
    array-length v4, v8

    array-length v9, v8

    shr-int/2addr v9, v2

    add-int/2addr v4, v9

    .line 2230
    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_1a
    add-int/lit8 v4, v7, 0x1

    .line 2233
    aput-byte v17, v8, v7

    goto :goto_a

    :cond_1b
    add-int/lit8 v9, v7, 0x4

    .line 2235
    array-length v11, v8

    if-lt v9, v11, :cond_1c

    .line 2236
    array-length v11, v8

    array-length v12, v8

    shr-int/2addr v12, v2

    add-int/2addr v11, v12

    .line 2237
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_1c
    shr-int/lit8 v11, v4, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .line 2240
    aput-byte v11, v8, v7

    add-int/lit8 v11, v7, 0x1

    shr-int/lit8 v12, v4, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2241
    aput-byte v12, v8, v11

    add-int/lit8 v11, v7, 0x2

    shr-int/lit8 v12, v4, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2242
    aput-byte v12, v8, v11

    add-int/lit8 v7, v7, 0x3

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2243
    aput-byte v4, v8, v7

    add-int/lit8 v3, v3, 0x1

    move v4, v9

    goto :goto_a

    :cond_1d
    add-int/lit8 v4, v7, 0x1

    .line 2215
    aput-byte v17, v8, v7

    goto :goto_a

    :cond_1e
    add-int/lit8 v4, v7, 0x1

    .line 2222
    aput-byte v17, v8, v7

    :goto_a
    move v7, v4

    goto :goto_b

    :cond_1f
    const v14, 0xe000

    :cond_20
    const v15, 0xdc00

    const/16 v4, 0x7ff

    if-le v9, v4, :cond_22

    add-int/lit8 v4, v7, 0x2

    .line 2248
    array-length v11, v8

    if-lt v4, v11, :cond_21

    .line 2249
    array-length v11, v8

    array-length v12, v8

    shr-int/2addr v12, v2

    add-int/2addr v11, v12

    .line 2250
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_21
    shr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .line 2254
    aput-byte v11, v8, v7

    add-int/lit8 v11, v7, 0x1

    shr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2255
    aput-byte v12, v8, v11

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 2256
    aput-byte v9, v8, v4

    add-int/lit8 v7, v7, 0x3

    goto :goto_b

    :cond_22
    add-int/lit8 v4, v7, 0x1

    .line 2259
    array-length v11, v8

    if-lt v4, v11, :cond_23

    .line 2260
    array-length v11, v8

    array-length v12, v8

    shr-int/2addr v12, v2

    add-int/2addr v11, v12

    .line 2261
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_23
    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .line 2265
    aput-byte v11, v8, v7

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 2266
    aput-byte v9, v8, v4

    add-int/lit8 v7, v7, 0x2

    :goto_b
    const/4 v4, 0x0

    goto :goto_c

    :cond_24
    :pswitch_1
    const v14, 0xe000

    const v15, 0xdc00

    add-int/lit8 v11, v7, 0x1

    .line 2187
    array-length v12, v8

    if-lt v11, v12, :cond_25

    .line 2188
    array-length v12, v8

    array-length v13, v8

    shr-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 2189
    invoke-static {v8, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    :cond_25
    const/16 v12, 0x5c

    .line 2191
    aput-byte v12, v8, v7

    int-to-byte v9, v9

    .line 2192
    aput-byte v9, v8, v11

    add-int/lit8 v7, v7, 0x2

    :goto_c
    add-int/2addr v3, v2

    const v13, 0xd800

    goto/16 :goto_8

    :cond_26
    move v3, v4

    :goto_d
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_27
    if-eqz v3, :cond_2b

    .line 2277
    sget-object v1, Labf;->A:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_29

    .line 2279
    array-length v1, v8

    if-ne v7, v1, :cond_28

    move-object v1, v8

    goto :goto_e

    .line 2282
    :cond_28
    new-array v1, v7, [B

    const/4 v2, 0x0

    .line 2283
    invoke-static {v8, v2, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2285
    :goto_e
    sget-object v2, Labf;->A:Ljava/util/function/BiFunction;

    sget-object v3, Labf;->e:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/fastjson2/ab$c;->e:Ljava/lang/String;

    return-object v1

    .line 2288
    :cond_29
    sget-object v1, Labf;->z:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_2b

    .line 2289
    new-array v1, v7, [C

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v7, :cond_2a

    .line 2291
    aget-byte v3, v8, v2

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2293
    :cond_2a
    sget-object v2, Labf;->z:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/fastjson2/ab$c;->e:Ljava/lang/String;

    return-object v1

    .line 2297
    :cond_2b
    new-instance v1, Ljava/lang/String;

    if-eqz v3, :cond_2c

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_10

    :cond_2c
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_10
    const/4 v3, 0x0

    invoke-direct {v1, v8, v3, v7, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, v0, Lcom/alibaba/fastjson2/ab$c;->e:Ljava/lang/String;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x21
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x25
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x3a
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
