.class public final Lcom/alibaba/fastjson2/JSONWriter$Path;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation


# static fields
.field public static final ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;


# instance fields
.field child0:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field child1:Lcom/alibaba/fastjson2/JSONWriter$Path;

.field fullPath:Ljava/lang/String;

.field final index:I

.field final name:Ljava/lang/String;

.field public final parent:Lcom/alibaba/fastjson2/JSONWriter$Path;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1956
    new-instance v0, Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 v1, 0x0

    const-string v2, "$"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/JSONWriter$Path;-><init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->ROOT:Lcom/alibaba/fastjson2/JSONWriter$Path;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;I)V
    .locals 0

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1973
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 p1, 0x0

    .line 1974
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    .line 1975
    iput p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson2/JSONWriter$Path;Ljava/lang/String;)V
    .locals 0

    .line 1966
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1967
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 1968
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    const/4 p1, -0x1

    .line 1969
    iput p1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

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
    check-cast p1, Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 1989
    iget v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    iget v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    iget-object v3, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

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

    new-array v0, v0, [Ljava/lang/Object;

    .line 1994
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    .line 1999
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v3, v2, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    move-object v5, v0

    const/4 v6, 0x0

    :goto_0
    if-eqz v5, :cond_2

    .line 2009
    array-length v7, v3

    if-ne v7, v6, :cond_1

    .line 2010
    array-length v7, v3

    add-int/2addr v7, v2

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/alibaba/fastjson2/JSONWriter$Path;

    .line 2012
    :cond_1
    aput-object v5, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 2008
    iget-object v5, v5, Lcom/alibaba/fastjson2/JSONWriter$Path;->parent:Lcom/alibaba/fastjson2/JSONWriter$Path;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    sub-int/2addr v6, v2

    move v7, v2

    move v5, v6

    const/4 v8, 0x0

    :goto_1
    if-ltz v5, :cond_25

    .line 2019
    aget-object v9, v3, v5

    .line 2020
    iget-object v10, v9, Lcom/alibaba/fastjson2/JSONWriter$Path;->name:Ljava/lang/String;

    const/4 v11, 0x2

    if-nez v10, :cond_4

    .line 2022
    iget v9, v9, Lcom/alibaba/fastjson2/JSONWriter$Path;->index:I

    .line 2023
    invoke-static {v9}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(I)I

    move-result v10

    :goto_2
    add-int v12, v8, v10

    add-int/2addr v12, v11

    .line 2024
    array-length v13, v1

    if-lt v12, v13, :cond_3

    .line 2025
    array-length v12, v1

    array-length v13, v1

    shr-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 2026
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    goto :goto_2

    :cond_3
    add-int/lit8 v11, v8, 0x1

    const/16 v12, 0x5b

    .line 2029
    aput-byte v12, v1, v8

    add-int/2addr v11, v10

    .line 2030
    invoke-static {v9, v11, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->getChars(II[B)V

    add-int/lit8 v8, v11, 0x1

    const/16 v9, 0x5d

    .line 2032
    aput-byte v9, v1, v11

    goto/16 :goto_e

    :cond_4
    add-int/lit8 v9, v8, 0x1

    .line 2034
    array-length v12, v1

    if-lt v9, v12, :cond_5

    .line 2035
    array-length v12, v1

    array-length v13, v1

    shr-int/2addr v13, v2

    add-int/2addr v12, v13

    .line 2036
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_5
    if-eq v5, v6, :cond_6

    const/16 v12, 0x2e

    .line 2040
    aput-byte v12, v1, v8

    move v8, v9

    .line 2043
    :cond_6
    sget v9, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v12, 0x8

    const/16 v14, 0x7f

    const v15, 0xd800

    const/16 v16, 0x5c

    const/16 v4, 0x7e

    const/16 v13, 0x60

    const/16 v17, -0x1

    const/16 v19, 0x3f

    if-ne v9, v12, :cond_15

    .line 2044
    invoke-static {v10}, Lcom/alibaba/fastjson2/util/JDKUtils;->getCharArray(Ljava/lang/String;)[C

    move-result-object v9

    const/4 v12, 0x0

    .line 2045
    :goto_3
    array-length v11, v9

    if-ge v12, v11, :cond_24

    .line 2046
    aget-char v11, v9, v12

    if-eq v11, v13, :cond_13

    if-eq v11, v4, :cond_13

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    packed-switch v11, :pswitch_data_2

    packed-switch v11, :pswitch_data_3

    packed-switch v11, :pswitch_data_4

    if-lt v11, v2, :cond_8

    if-gt v11, v14, :cond_8

    .line 2084
    array-length v14, v1

    if-ne v8, v14, :cond_7

    .line 2085
    array-length v14, v1

    array-length v4, v1

    shr-int/2addr v4, v2

    add-int/2addr v14, v4

    .line 2086
    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_7
    add-int/lit8 v4, v8, 0x1

    int-to-byte v11, v11

    .line 2088
    aput-byte v11, v1, v8

    move v8, v4

    goto/16 :goto_7

    :cond_8
    if-lt v11, v15, :cond_f

    const v4, 0xe000

    if-ge v11, v4, :cond_f

    const v7, 0xdc00

    if-ge v11, v7, :cond_e

    .line 2093
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v5

    const/4 v15, 0x2

    if-ge v14, v15, :cond_9

    move/from16 v4, v17

    goto :goto_4

    :cond_9
    add-int/lit8 v14, v5, 0x1

    .line 2096
    invoke-virtual {v10, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_d

    if-ge v14, v4, :cond_d

    shl-int/lit8 v4, v11, 0xa

    add-int/2addr v4, v14

    const v7, -0x35fdc00

    add-int/2addr v4, v7

    :goto_4
    if-gez v4, :cond_b

    .line 2115
    array-length v4, v1

    if-ne v8, v4, :cond_a

    .line 2116
    array-length v4, v1

    array-length v7, v1

    shr-int/2addr v7, v2

    add-int/2addr v4, v7

    .line 2117
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_a
    add-int/lit8 v4, v8, 0x1

    .line 2119
    aput-byte v19, v1, v8

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v8, 0x3

    .line 2121
    array-length v11, v1

    if-lt v7, v11, :cond_c

    .line 2122
    array-length v11, v1

    array-length v14, v1

    shr-int/2addr v14, v2

    add-int/2addr v11, v14

    .line 2123
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_c
    shr-int/lit8 v11, v4, 0x12

    or-int/lit16 v11, v11, 0xf0

    int-to-byte v11, v11

    .line 2125
    aput-byte v11, v1, v8

    add-int/lit8 v11, v8, 0x1

    shr-int/lit8 v14, v4, 0xc

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 2126
    aput-byte v14, v1, v11

    add-int/lit8 v11, v8, 0x2

    shr-int/lit8 v14, v4, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 2127
    aput-byte v14, v1, v11

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    .line 2128
    aput-byte v4, v1, v7

    add-int/lit8 v4, v8, 0x4

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v8, 0x1

    .line 2102
    aput-byte v19, v1, v8

    goto :goto_5

    :cond_e
    add-int/lit8 v4, v8, 0x1

    .line 2109
    aput-byte v19, v1, v8

    :goto_5
    move v8, v4

    goto :goto_6

    :cond_f
    const/16 v4, 0x7ff

    if-le v11, v4, :cond_11

    add-int/lit8 v4, v8, 0x2

    .line 2133
    array-length v7, v1

    if-lt v4, v7, :cond_10

    .line 2134
    array-length v7, v1

    array-length v14, v1

    shr-int/2addr v14, v2

    add-int/2addr v7, v14

    .line 2135
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_10
    shr-int/lit8 v7, v11, 0xc

    and-int/lit8 v7, v7, 0xf

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    .line 2139
    aput-byte v7, v1, v8

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v14, v11, 0x6

    and-int/lit8 v14, v14, 0x3f

    or-int/lit16 v14, v14, 0x80

    int-to-byte v14, v14

    .line 2140
    aput-byte v14, v1, v7

    and-int/lit8 v7, v11, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2141
    aput-byte v7, v1, v4

    add-int/lit8 v8, v8, 0x3

    goto :goto_6

    :cond_11
    add-int/lit8 v4, v8, 0x1

    .line 2144
    array-length v7, v1

    if-lt v4, v7, :cond_12

    .line 2145
    array-length v7, v1

    array-length v14, v1

    shr-int/2addr v14, v2

    add-int/2addr v7, v14

    .line 2146
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_12
    shr-int/lit8 v7, v11, 0x6

    and-int/lit8 v7, v7, 0x1f

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    .line 2150
    aput-byte v7, v1, v8

    and-int/lit8 v7, v11, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2151
    aput-byte v7, v1, v4

    add-int/lit8 v8, v8, 0x2

    :goto_6
    const/4 v7, 0x0

    goto :goto_7

    :cond_13
    :pswitch_0
    add-int/lit8 v4, v8, 0x1

    .line 2074
    array-length v14, v1

    if-lt v4, v14, :cond_14

    .line 2075
    array-length v14, v1

    array-length v15, v1

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2076
    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 2078
    :cond_14
    aput-byte v16, v1, v8

    int-to-byte v11, v11

    .line 2079
    aput-byte v11, v1, v4

    add-int/lit8 v8, v8, 0x2

    :goto_7
    add-int/2addr v12, v2

    const/16 v4, 0x7e

    const/16 v14, 0x7f

    const v15, 0xd800

    goto/16 :goto_3

    :cond_15
    const/4 v4, 0x0

    .line 2158
    :goto_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_24

    .line 2159
    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v13, :cond_22

    const/16 v11, 0x7e

    if-eq v9, v11, :cond_22

    packed-switch v9, :pswitch_data_5

    packed-switch v9, :pswitch_data_6

    packed-switch v9, :pswitch_data_7

    packed-switch v9, :pswitch_data_8

    packed-switch v9, :pswitch_data_9

    const/16 v12, 0x7f

    if-lt v9, v2, :cond_17

    if-gt v9, v12, :cond_17

    .line 2197
    array-length v14, v1

    if-ne v8, v14, :cond_16

    .line 2198
    array-length v14, v1

    array-length v15, v1

    shr-int/2addr v15, v2

    add-int/2addr v14, v15

    .line 2199
    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_16
    add-int/lit8 v14, v8, 0x1

    int-to-byte v9, v9

    .line 2201
    aput-byte v9, v1, v8

    move v8, v14

    const v14, 0xd800

    const v15, 0xe000

    goto/16 :goto_d

    :cond_17
    const v14, 0xd800

    const v15, 0xe000

    if-lt v9, v14, :cond_1e

    if-ge v9, v15, :cond_1e

    const v7, 0xdc00

    if-ge v9, v7, :cond_1d

    .line 2206
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v11, v18, v5

    const/4 v12, 0x2

    if-ge v11, v12, :cond_18

    move/from16 v9, v17

    goto :goto_9

    :cond_18
    add-int/lit8 v11, v5, 0x1

    .line 2209
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v7, :cond_1c

    if-ge v11, v15, :cond_1c

    shl-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v11

    const v11, -0x35fdc00

    add-int/2addr v9, v11

    :goto_9
    if-gez v9, :cond_1a

    .line 2228
    array-length v9, v1

    if-ne v8, v9, :cond_19

    .line 2229
    array-length v9, v1

    array-length v11, v1

    shr-int/2addr v11, v2

    add-int/2addr v9, v11

    .line 2230
    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_19
    add-int/lit8 v9, v8, 0x1

    .line 2233
    aput-byte v19, v1, v8

    goto :goto_a

    :cond_1a
    add-int/lit8 v11, v8, 0x4

    .line 2235
    array-length v7, v1

    if-lt v11, v7, :cond_1b

    .line 2236
    array-length v7, v1

    array-length v12, v1

    shr-int/2addr v12, v2

    add-int/2addr v7, v12

    .line 2237
    invoke-static {v1, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_1b
    shr-int/lit8 v7, v9, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    .line 2240
    aput-byte v7, v1, v8

    add-int/lit8 v7, v8, 0x1

    shr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2241
    aput-byte v12, v1, v7

    add-int/lit8 v7, v8, 0x2

    shr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2242
    aput-byte v12, v1, v7

    add-int/lit8 v8, v8, 0x3

    and-int/lit8 v7, v9, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    .line 2243
    aput-byte v7, v1, v8

    add-int/lit8 v4, v4, 0x1

    move v9, v11

    :goto_a
    move v8, v9

    goto :goto_c

    :cond_1c
    add-int/lit8 v7, v8, 0x1

    .line 2215
    aput-byte v19, v1, v8

    goto :goto_b

    :cond_1d
    add-int/lit8 v7, v8, 0x1

    .line 2222
    aput-byte v19, v1, v8

    :goto_b
    move v8, v7

    goto :goto_c

    :cond_1e
    const/16 v11, 0x7ff

    if-le v9, v11, :cond_20

    add-int/lit8 v7, v8, 0x2

    .line 2248
    array-length v12, v1

    if-lt v7, v12, :cond_1f

    .line 2249
    array-length v12, v1

    array-length v11, v1

    shr-int/2addr v11, v2

    add-int/2addr v12, v11

    .line 2250
    invoke-static {v1, v12}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_1f
    shr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0xf

    or-int/lit16 v11, v11, 0xe0

    int-to-byte v11, v11

    .line 2254
    aput-byte v11, v1, v8

    add-int/lit8 v11, v8, 0x1

    shr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    or-int/lit16 v12, v12, 0x80

    int-to-byte v12, v12

    .line 2255
    aput-byte v12, v1, v11

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 2256
    aput-byte v9, v1, v7

    add-int/lit8 v8, v8, 0x3

    goto :goto_c

    :cond_20
    add-int/lit8 v7, v8, 0x1

    .line 2259
    array-length v11, v1

    if-lt v7, v11, :cond_21

    .line 2260
    array-length v11, v1

    array-length v12, v1

    shr-int/2addr v12, v2

    add-int/2addr v11, v12

    .line 2261
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    :cond_21
    shr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x1f

    or-int/lit16 v11, v11, 0xc0

    int-to-byte v11, v11

    .line 2265
    aput-byte v11, v1, v8

    and-int/lit8 v9, v9, 0x3f

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    .line 2266
    aput-byte v9, v1, v7

    add-int/lit8 v8, v8, 0x2

    :goto_c
    const/4 v7, 0x0

    goto :goto_d

    :cond_22
    :pswitch_1
    const v11, 0xdc00

    const v14, 0xd800

    const v15, 0xe000

    add-int/lit8 v12, v8, 0x1

    .line 2187
    array-length v11, v1

    if-lt v12, v11, :cond_23

    .line 2188
    array-length v11, v1

    array-length v13, v1

    shr-int/2addr v13, v2

    add-int/2addr v11, v13

    .line 2189
    invoke-static {v1, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 2191
    :cond_23
    aput-byte v16, v1, v8

    int-to-byte v9, v9

    .line 2192
    aput-byte v9, v1, v12

    add-int/lit8 v8, v8, 0x2

    :goto_d
    add-int/2addr v4, v2

    const/16 v13, 0x60

    goto/16 :goto_8

    :cond_24
    :goto_e
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    :cond_25
    if-eqz v7, :cond_29

    .line 2277
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_27

    .line 2279
    array-length v2, v1

    if-ne v8, v2, :cond_26

    goto :goto_f

    .line 2282
    :cond_26
    new-array v2, v8, [B

    const/4 v3, 0x0

    .line 2283
    invoke-static {v1, v3, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 2285
    :goto_f
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    return-object v1

    .line 2288
    :cond_27
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v2, :cond_29

    .line 2289
    new-array v2, v8, [C

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v8, :cond_28

    .line 2291
    aget-byte v3, v1, v4

    int-to-char v3, v3

    aput-char v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 2293
    :cond_28
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    return-object v1

    .line 2297
    :cond_29
    new-instance v2, Ljava/lang/String;

    if-eqz v7, :cond_2a

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    goto :goto_11

    :cond_2a
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    :goto_11
    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v8, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v0, Lcom/alibaba/fastjson2/JSONWriter$Path;->fullPath:Ljava/lang/String;

    return-object v2

    nop

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
