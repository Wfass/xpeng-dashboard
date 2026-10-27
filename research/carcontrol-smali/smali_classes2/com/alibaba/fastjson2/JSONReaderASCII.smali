.class Lcom/alibaba/fastjson2/JSONReaderASCII;
.super Lcom/alibaba/fastjson2/JSONReaderUTF8;
.source "JSONReaderASCII.java"


# instance fields
.field final str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/fastjson2/JSONReaderUTF8;-><init>(Lcom/alibaba/fastjson2/JSONReader$Context;Ljava/lang/String;[BII)V

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameAscii:Z

    return-void
.end method

.method public static getInt([BI)I
    .locals 5

    .line 642
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static getLong([BI)J
    .locals 5

    .line 649
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final getFieldName()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 964
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    sub-int/2addr v1, v2

    .line 965
    iget-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    if-nez v2, :cond_1

    .line 966
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 967
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 969
    :cond_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4, v1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v2

    .line 973
    :cond_1
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    const/16 v2, 0x78

    const/16 v3, 0x75

    const/16 v4, 0x40

    const/16 v5, 0x2b

    const/16 v6, 0x2a

    const/16 v8, 0x22

    const/16 v9, 0x5c

    const/16 v10, 0xff

    if-eqz v1, :cond_9

    .line 974
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    new-array v1, v1, [B

    .line 976
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/4 v12, 0x0

    .line 978
    :goto_0
    iget v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    if-ge v11, v13, :cond_8

    .line 979
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v13, v13, v11

    if-ne v13, v9, :cond_6

    .line 982
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v13, v13, v11

    if-eq v13, v8, :cond_7

    const/16 v15, 0x3a

    if-eq v13, v15, :cond_7

    if-eq v13, v4, :cond_7

    if-eq v13, v9, :cond_7

    if-eq v13, v3, :cond_4

    if-eq v13, v2, :cond_3

    if-eq v13, v6, :cond_7

    if-eq v13, v5, :cond_7

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    .line 1022
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v13

    :cond_2
    int-to-byte v13, v13

    goto :goto_2

    .line 998
    :cond_3
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v13, v13, v11

    .line 999
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v15, v15, v11

    .line 1000
    invoke-static {v13, v15}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v13

    if-le v13, v10, :cond_2

    goto :goto_1

    .line 985
    :cond_4
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v13, v13, v11

    .line 986
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v15, v15, v11

    .line 987
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v7, v7, v11

    .line 988
    iget-object v14, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v11, v11, 0x1

    aget-byte v14, v14, v11

    .line 989
    invoke-static {v13, v15, v7, v14}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v7

    if-le v7, v10, :cond_5

    :goto_1
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    int-to-byte v13, v7

    goto :goto_2

    :cond_6
    if-ne v13, v8, :cond_7

    goto :goto_3

    .line 1028
    :cond_7
    :goto_2
    :pswitch_0
    aput-byte v13, v1, v12

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 1033
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1037
    :cond_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    new-array v1, v1, [C

    .line 1039
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v16, 0x0

    .line 1040
    :goto_4
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    if-ge v7, v11, :cond_e

    .line 1041
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v11, v11, v7

    and-int/2addr v11, v10

    int-to-char v11, v11

    if-ne v11, v9, :cond_c

    .line 1044
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v11, v11, v7

    int-to-char v11, v11

    if-eq v11, v6, :cond_d

    if-eq v11, v5, :cond_d

    if-eq v11, v4, :cond_d

    if-eq v11, v3, :cond_b

    if-eq v11, v2, :cond_a

    packed-switch v11, :pswitch_data_2

    packed-switch v11, :pswitch_data_3

    .line 1071
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v11

    goto :goto_5

    .line 1055
    :cond_a
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v11, v11, v7

    .line 1056
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v12, v12, v7

    .line 1057
    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v11

    goto :goto_5

    .line 1047
    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v11, v11, v7

    .line 1048
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v12, v12, v7

    .line 1049
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v13, v13, v7

    .line 1050
    iget-object v14, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v7, v7, 0x1

    aget-byte v14, v14, v7

    .line 1051
    invoke-static {v11, v12, v13, v14}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v11

    goto :goto_5

    :cond_c
    if-ne v11, v8, :cond_d

    goto :goto_6

    .line 1077
    :cond_d
    :goto_5
    :pswitch_1
    aput-char v11, v1, v16

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1081
    :cond_e
    :goto_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getNameHashCodeLCase()J
    .locals 16

    move-object/from16 v0, p0

    .line 829
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    .line 831
    :goto_0
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v8, 0x5a

    const/16 v9, 0x27

    const/16 v10, 0x41

    const/16 v11, 0x2d

    const/16 v12, 0x5f

    const/16 v13, 0x78

    const/16 v14, 0x75

    const/16 v15, 0x5c

    const/16 v2, 0x22

    const/16 v3, 0x20

    if-ge v1, v7, :cond_9

    .line 832
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v7, v7, v1

    if-ne v7, v15, :cond_2

    .line 835
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v7, v1

    if-eq v7, v14, :cond_1

    if-eq v7, v13, :cond_0

    .line 854
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v7

    goto :goto_1

    .line 846
    :cond_0
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v7, v1

    .line 847
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v13, v13, v1

    .line 848
    invoke-static {v7, v13}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v7

    goto :goto_1

    .line 838
    :cond_1
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v7, v1

    .line 839
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v13, v13, v1

    .line 840
    iget-object v14, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v14, v14, v1

    .line 841
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v15, v15, v1

    .line 842
    invoke-static {v7, v13, v14, v15}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v7

    goto :goto_1

    :cond_2
    if-ne v7, v2, :cond_3

    goto/16 :goto_6

    :cond_3
    :goto_1
    const/16 v13, 0xff

    if-gt v7, v13, :cond_8

    if-ltz v7, :cond_8

    const/16 v13, 0x8

    if-ge v4, v13, :cond_8

    if-nez v4, :cond_4

    if-nez v7, :cond_4

    goto/16 :goto_5

    :cond_4
    if-eq v7, v12, :cond_5

    if-eq v7, v11, :cond_5

    if-ne v7, v3, :cond_6

    .line 868
    :cond_5
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v12, v1, 0x1

    aget-byte v11, v11, v12

    if-eq v11, v2, :cond_6

    if-eq v11, v9, :cond_6

    if-eq v11, v7, :cond_6

    goto :goto_4

    :cond_6
    if-lt v7, v10, :cond_7

    if-gt v7, v8, :cond_7

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    :cond_7
    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    int-to-byte v2, v7

    int-to-long v2, v2

    const/16 v7, 0x38

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffffL

    goto :goto_2

    :pswitch_1
    int-to-byte v2, v7

    int-to-long v2, v2

    const/16 v7, 0x30

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffffL

    goto :goto_2

    :pswitch_2
    int-to-byte v2, v7

    int-to-long v2, v2

    const/16 v7, 0x28

    shl-long/2addr v2, v7

    const-wide v7, 0xffffffffffL

    goto :goto_2

    :pswitch_3
    int-to-byte v2, v7

    int-to-long v7, v2

    shl-long v2, v7, v3

    const-wide v7, 0xffffffffL

    goto :goto_2

    :pswitch_4
    int-to-byte v2, v7

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide/32 v7, 0xffffff

    goto :goto_2

    :pswitch_5
    int-to-byte v2, v7

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v7, 0xffff

    goto :goto_2

    :pswitch_6
    int-to-byte v2, v7

    shl-int/2addr v2, v13

    int-to-long v2, v2

    const-wide/16 v7, 0xff

    :goto_2
    and-long/2addr v5, v7

    add-long/2addr v5, v2

    goto :goto_3

    :pswitch_7
    int-to-byte v2, v7

    int-to-long v5, v2

    :goto_3
    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 863
    :cond_8
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const-wide/16 v5, 0x0

    :cond_9
    :goto_6
    const-wide/16 v13, 0x0

    cmp-long v4, v5, v13

    if-eqz v4, :cond_a

    return-wide v5

    :cond_a
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 914
    :goto_7
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ge v1, v6, :cond_13

    .line 915
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v6, v6, v1

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_d

    .line 918
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v6, v1

    const/16 v13, 0x75

    if-eq v6, v13, :cond_c

    const/16 v14, 0x78

    if-eq v6, v14, :cond_b

    .line 937
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v6

    goto :goto_8

    .line 929
    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v6, v1

    .line 930
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v15, v15, v1

    .line 931
    invoke-static {v6, v15}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v6

    goto :goto_8

    :cond_c
    const/16 v14, 0x78

    .line 921
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v6, v6, v1

    .line 922
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v15, v15, v1

    .line 923
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v7, v7, v1

    .line 924
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v13, v13, v1

    .line 925
    invoke-static {v6, v15, v7, v13}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v6

    goto :goto_8

    :cond_d
    const/16 v14, 0x78

    if-ne v6, v2, :cond_e

    goto :goto_9

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-eq v6, v12, :cond_f

    if-eq v6, v11, :cond_f

    if-ne v6, v3, :cond_10

    .line 946
    :cond_f
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v7, v7, v1

    if-eq v7, v2, :cond_10

    if-eq v7, v9, :cond_10

    if-eq v7, v6, :cond_10

    goto :goto_7

    :cond_10
    if-lt v6, v10, :cond_11

    if-gt v6, v8, :cond_11

    add-int/lit8 v6, v6, 0x20

    int-to-char v6, v6

    :cond_11
    if-gez v6, :cond_12

    and-int/lit16 v6, v6, 0xff

    :cond_12
    int-to-long v6, v6

    xor-long/2addr v4, v6

    const-wide v6, 0x100000001b3L

    mul-long/2addr v4, v6

    goto :goto_7

    :cond_13
    :goto_9
    return-wide v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()V
    .locals 8

    .line 25
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 26
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v2, 0x1a

    if-lt v0, v1, :cond_0

    .line 27
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return-void

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    .line 32
    aget-byte v3, v1, v0

    :goto_0
    if-eqz v3, :cond_3

    const/16 v4, 0x20

    if-gt v3, v4, :cond_1

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v3

    const-wide v6, 0x100003700L

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    and-int/lit16 v0, v3, 0xff

    int-to-char v0, v0

    .line 43
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 45
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 46
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v0, v3, :cond_4

    .line 36
    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 37
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return-void

    .line 40
    :cond_4
    aget-byte v3, v1, v0

    goto :goto_0
.end method

.method public final nextIfArrayEnd()Z
    .locals 15

    .line 251
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 260
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 261
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 262
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v3

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 268
    aget-byte v0, v2, v0

    :goto_0
    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 279
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    add-int/lit8 v0, v4, 0x1

    .line 280
    aget-byte v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 282
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_4

    .line 283
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 284
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 287
    aget-byte v4, v2, v4

    goto :goto_1

    :cond_5
    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 291
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 292
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 294
    :goto_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v2

    if-ge v0, v4, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v1, :cond_6

    .line 295
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_2

    :cond_6
    return v3

    .line 270
    :cond_7
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_8

    .line 271
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 272
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_8
    add-int/lit8 v0, v4, 0x1

    .line 275
    aget-byte v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto :goto_0

    .line 253
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final nextIfArrayStart()Z
    .locals 10

    .line 217
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 223
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 224
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v3

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 230
    aget-byte v0, v1, v0

    :goto_0
    if-eqz v0, :cond_4

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 240
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 241
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 243
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v1

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_1

    :cond_3
    return v3

    .line 232
    :cond_4
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_5

    .line 233
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 234
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    .line 237
    aget-byte v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_0
.end method

.method public final nextIfComma()Z
    .locals 9

    .line 135
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    .line 136
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 137
    iget-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v2, 0x1

    .line 141
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    .line 143
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v4, 0x1a

    if-lt v1, v3, :cond_1

    .line 144
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 145
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v2

    .line 149
    :cond_1
    aget-byte v3, v0, v1

    :goto_0
    if-eqz v3, :cond_4

    const/16 v5, 0x20

    if-gt v3, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v3

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr v1, v2

    .line 160
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    and-int/lit16 v1, v3, 0xff

    int-to-char v1, v1

    .line 161
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 163
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v0

    if-ge v1, v4, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v1, v0, v1

    if-ne v1, v3, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 152
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v1, v3, :cond_5

    .line 153
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 154
    iput-char v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v2

    .line 157
    :cond_5
    aget-byte v3, v0, v1

    goto :goto_0
.end method

.method public final nextIfMatch(C)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 172
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    .line 173
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 174
    iget-char v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v5, 0x1a

    :goto_0
    const-wide/16 v6, 0x0

    const-wide v8, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v12, 0x20

    if-gt v4, v12, :cond_1

    shl-long v13, v10, v4

    and-long/2addr v13, v8

    cmp-long v13, v13, v6

    if-eqz v13, :cond_1

    .line 176
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v3, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 179
    aget-byte v3, v2, v3

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    if-eq v4, v1, :cond_2

    return v13

    :cond_2
    const/16 v4, 0x2c

    const/4 v14, 0x1

    if-ne v1, v4, :cond_3

    move v13, v14

    .line 186
    :cond_3
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    .line 188
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v3, v1, :cond_4

    .line 189
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 190
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v14

    .line 194
    :cond_4
    aget-byte v1, v2, v3

    :goto_1
    if-eqz v1, :cond_7

    if-gt v1, v12, :cond_5

    shl-long v15, v10, v1

    and-long/2addr v15, v8

    cmp-long v4, v15, v6

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v3, v14

    .line 205
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    .line 206
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 208
    :goto_2
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_6

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v2

    if-ge v1, v4, :cond_6

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v1, v2, v1

    if-ne v1, v3, :cond_6

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_2

    :cond_6
    return v14

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 197
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v3, v1, :cond_8

    .line 198
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 199
    iput-char v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v14

    .line 202
    :cond_8
    aget-byte v1, v2, v3

    goto :goto_1
.end method

.method public final nextIfNullOrEmptyString()Z
    .locals 17

    move-object/from16 v0, p0

    .line 302
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 303
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    .line 304
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 305
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x6e

    if-ne v1, v7, :cond_0

    add-int/lit8 v7, v3, 0x2

    if-ge v7, v2, :cond_0

    .line 306
    aget-byte v8, v4, v3

    const/16 v9, 0x75

    if-ne v8, v9, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v4, v8

    const/16 v9, 0x6c

    if-ne v8, v9, :cond_0

    aget-byte v7, v4, v7

    if-ne v7, v9, :cond_0

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    const/16 v7, 0x22

    if-eq v1, v7, :cond_1

    const/16 v7, 0x27

    if-ne v1, v7, :cond_b

    :cond_1
    if-ge v3, v2, :cond_b

    .line 313
    aget-byte v7, v4, v3

    if-ne v7, v1, :cond_b

    add-int/2addr v3, v6

    :goto_0
    const/16 v1, 0x1a

    if-ne v3, v2, :cond_2

    move v7, v1

    goto :goto_1

    .line 319
    :cond_2
    aget-byte v7, v4, v3

    goto :goto_2

    :goto_1
    const-wide/16 v8, 0x0

    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    const/16 v14, 0x20

    if-gt v7, v14, :cond_4

    shl-long v15, v12, v7

    and-long/2addr v15, v10

    cmp-long v15, v15, v8

    if-eqz v15, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_3

    .line 324
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 325
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v6

    .line 328
    :cond_3
    aget-byte v7, v4, v3

    :goto_2
    int-to-char v7, v7

    goto :goto_1

    :cond_4
    const/16 v15, 0x2c

    if-ne v7, v15, :cond_5

    move v5, v6

    .line 331
    :cond_5
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    if-eqz v5, :cond_7

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_6

    move v7, v1

    goto :goto_3

    .line 336
    :cond_6
    aget-byte v5, v4, v3

    int-to-char v7, v5

    :cond_7
    :goto_3
    if-lt v3, v2, :cond_8

    .line 341
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 342
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v6

    :cond_8
    :goto_4
    if-gt v7, v14, :cond_a

    shl-long v15, v12, v7

    and-long/2addr v15, v10

    cmp-long v5, v15, v8

    if-eqz v5, :cond_a

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_9

    .line 349
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v6

    .line 352
    :cond_9
    aget-byte v5, v4, v3

    int-to-char v7, v5

    goto :goto_4

    :cond_a
    add-int/2addr v3, v6

    .line 354
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 355
    iput-char v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v6

    :cond_b
    return v5
.end method

.method public final nextIfObjectEnd()Z
    .locals 15

    .line 84
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_9

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_9

    const/16 v2, 0x7d

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 94
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 95
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v3

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 101
    aget-byte v0, v2, v0

    :goto_0
    if-eqz v0, :cond_7

    const-wide/16 v5, 0x0

    const-wide v7, 0x100003700L

    const-wide/16 v9, 0x1

    const/16 v11, 0x20

    if-gt v0, v11, :cond_2

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_2

    goto :goto_3

    :cond_2
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_5

    .line 112
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    add-int/lit8 v0, v4, 0x1

    .line 113
    aget-byte v4, v2, v4

    :goto_1
    move v14, v4

    move v4, v0

    move v0, v14

    if-eqz v0, :cond_3

    if-gt v0, v11, :cond_5

    shl-long v12, v9, v0

    and-long/2addr v12, v7

    cmp-long v12, v12, v5

    if-eqz v12, :cond_5

    .line 115
    :cond_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_4

    .line 116
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 117
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    .line 120
    aget-byte v4, v2, v4

    goto :goto_1

    :cond_5
    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 124
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 125
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 127
    :goto_2
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v2

    if-ge v0, v4, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v2, v0

    if-ne v0, v1, :cond_6

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_2

    :cond_6
    return v3

    .line 103
    :cond_7
    :goto_3
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_8

    .line 104
    iput-char v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 105
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_8
    add-int/lit8 v0, v4, 0x1

    .line 108
    aget-byte v4, v2, v4

    move v14, v4

    move v4, v0

    move v0, v14

    goto :goto_0

    .line 86
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal syntax: `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final nextIfObjectStart()Z
    .locals 10

    .line 51
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 57
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v2, 0x1a

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    .line 58
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return v3

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v0, 0x1

    .line 64
    aget-byte v0, v1, v0

    :goto_0
    if-eqz v0, :cond_4

    const/16 v5, 0x20

    if-gt v0, v5, :cond_2

    const-wide/16 v5, 0x1

    shl-long/2addr v5, v0

    const-wide v7, 0x100003700L

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    .line 74
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 75
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 77
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    array-length v4, v1

    if-ge v0, v4, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->skipComment()V

    goto :goto_1

    :cond_3
    return v3

    .line 66
    :cond_4
    :goto_2
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-lt v4, v0, :cond_5

    .line 67
    iput-char v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 68
    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return v3

    :cond_5
    add-int/lit8 v0, v4, 0x1

    .line 71
    aget-byte v4, v1, v4

    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_0
.end method

.method public final readFieldName()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    .line 1086
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x27

    if-eq v1, v2, :cond_1

    .line 1087
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderASCII;->isFirstIdentifier(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readFieldNameUnquote()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 1094
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/4 v2, 0x0

    .line 1096
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 1097
    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    move v4, v2

    .line 1098
    :goto_0
    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-ge v3, v5, :cond_a

    .line 1099
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v5, v5, v3

    const/16 v8, 0x5c

    if-ne v5, v8, :cond_4

    .line 1101
    iput-boolean v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 1102
    iget-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v3

    const/16 v6, 0x75

    if-eq v5, v6, :cond_3

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x4

    :goto_1
    add-int/2addr v3, v7

    goto/16 :goto_4

    :cond_4
    if-ne v5, v1, :cond_9

    .line 1121
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 1122
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v3, v3, 0x1

    .line 1124
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v3

    :goto_2
    if-gt v1, v6, :cond_5

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v8, 0x100003700L

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 1128
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v3

    goto :goto_2

    :cond_5
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_8

    add-int/2addr v3, v7

    .line 1135
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ge v3, v1, :cond_7

    .line 1140
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v3

    :goto_3
    if-gt v1, v6, :cond_6

    const-wide/16 v4, 0x1

    shl-long/2addr v4, v1

    const-wide v8, 0x100003700L

    and-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 1144
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v3

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v3, 0x1

    .line 1147
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    int-to-char v1, v1

    .line 1148
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    goto :goto_5

    :cond_7
    const/16 v1, 0x1a

    .line 1136
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 1137
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1131
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1155
    :cond_a
    :goto_5
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    if-lt v1, v4, :cond_13

    .line 1159
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    if-nez v1, :cond_12

    .line 1161
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    sub-int/2addr v1, v3

    const/16 v5, 0x38

    const/16 v8, 0x30

    const/16 v9, 0x28

    const/16 v10, 0x18

    const-wide/16 v13, 0xff

    packed-switch v1, :pswitch_data_0

    const-wide/16 v2, -0x1

    const-wide/16 v4, -0x1

    :goto_6
    const-wide/16 v16, -0x1

    goto/16 :goto_b

    .line 1333
    :pswitch_0
    iget-object v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v2, v2, 0x7

    aget-byte v2, v15, v2

    int-to-long v3, v2

    shl-long v2, v3, v5

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v15, v15, 0x6

    aget-byte v4, v4, v15

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x5

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v9

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x4

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v6

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x3

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v10

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x10

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v11, v7

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x8

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 1342
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xf

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0xe

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xd

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xc

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xb

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xa

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x9

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1314
    :pswitch_1
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v8

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x5

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v9

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x4

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v6

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x3

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v10

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x10

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v11, v7

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x8

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 1322
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xe

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0xd

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xc

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xb

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xa

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x9

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v10, 0x8

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1296
    :pswitch_2
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v9

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x4

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v6

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x3

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    shl-long/2addr v11, v10

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x10

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v11, v7

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    const/16 v4, 0x8

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v11

    int-to-long v11, v4

    and-long/2addr v11, v13

    add-long/2addr v2, v11

    .line 1303
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xd

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0xc

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xb

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0xa

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x9

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v10, 0x8

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1279
    :pswitch_3
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v6

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x3

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long/2addr v11, v10

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x2

    aget-byte v4, v4, v11

    int-to-long v11, v4

    const/16 v4, 0x10

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v11, v7

    aget-byte v4, v4, v11

    int-to-long v11, v4

    const/16 v4, 0x8

    shl-long/2addr v11, v4

    add-long/2addr v2, v11

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v11

    int-to-long v11, v4

    add-long/2addr v2, v11

    .line 1285
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xc

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0xb

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xa

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x9

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v11, 0x8

    add-int/2addr v9, v11

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1263
    :pswitch_4
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    shl-int/2addr v2, v10

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v4, v7

    aget-byte v3, v3, v4

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 1268
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xb

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0xa

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x9

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v11, 0x8

    add-int/2addr v9, v11

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1248
    :pswitch_5
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v4, v7

    aget-byte v3, v3, v4

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 1252
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0xa

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0x9

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v12, 0x8

    add-int/2addr v11, v12

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x7

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x3

    aget-byte v8, v8, v9

    goto/16 :goto_7

    .line 1234
    :pswitch_6
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v3, v7

    aget-byte v2, v2, v3

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 1237
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x9

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v18, 0x8

    add-int/lit8 v12, v12, 0x8

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x7

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x6

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    goto :goto_7

    .line 1222
    :pswitch_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v2, v2, v3

    int-to-long v2, v2

    .line 1223
    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const/16 v12, 0x8

    add-int/2addr v11, v12

    aget-byte v4, v4, v11

    int-to-long v11, v4

    shl-long v4, v11, v5

    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v12, v12, 0x7

    aget-byte v11, v11, v12

    int-to-long v11, v11

    and-long/2addr v11, v13

    shl-long/2addr v11, v8

    add-long/2addr v4, v11

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v11, v11, 0x6

    aget-byte v8, v8, v11

    int-to-long v11, v8

    and-long/2addr v11, v13

    shl-long v8, v11, v9

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x5

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v6

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x4

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x3

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    int-to-long v8, v8

    and-long/2addr v8, v13

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    add-long/2addr v4, v8

    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v9, v7

    aget-byte v8, v8, v9

    :goto_7
    int-to-long v8, v8

    and-long/2addr v8, v13

    add-long/2addr v4, v8

    move-wide/from16 v16, v4

    move-wide v4, v2

    const-wide/16 v2, -0x1

    goto/16 :goto_b

    .line 1211
    :pswitch_8
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v5

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x6

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v5, v7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v5

    goto/16 :goto_8

    .line 1201
    :pswitch_9
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v8

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x5

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v9

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v5, v7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v5

    goto/16 :goto_8

    .line 1192
    :pswitch_a
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v9

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v5, v7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v5

    goto :goto_8

    .line 1184
    :pswitch_b
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v6

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    shl-long/2addr v4, v10

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x10

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v5, v7

    aget-byte v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v13

    const/16 v8, 0x8

    shl-long/2addr v4, v8

    add-long/2addr v2, v4

    iget-object v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v4, v4, v5

    :goto_8
    int-to-long v4, v4

    and-long/2addr v4, v13

    add-long/2addr v2, v4

    goto :goto_a

    .line 1177
    :pswitch_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    shl-int/2addr v2, v10

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v4, v7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v3, v3, v4

    goto :goto_9

    .line 1171
    :pswitch_d
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x10

    shl-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v4, v7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v3, v3, v4

    :goto_9
    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-long v2, v2

    :goto_a
    move-wide v4, v2

    const-wide/16 v2, -0x1

    goto/16 :goto_6

    .line 1166
    :pswitch_e
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v1, v1, v2

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v3, v7

    aget-byte v2, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(BB)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1164
    :pswitch_f
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toString(B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :goto_b
    cmp-long v8, v4, v2

    if-eqz v8, :cond_12

    cmp-long v2, v16, v2

    if-eqz v2, :cond_e

    xor-long v2, v4, v16

    ushr-long v8, v2, v6

    xor-long/2addr v2, v8

    long-to-int v2, v2

    .line 1359
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    array-length v3, v3

    sub-int/2addr v3, v7

    and-int v8, v2, v3

    .line 1360
    sget-object v2, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    aget-object v2, v2, v8

    if-nez v2, :cond_d

    .line 1362
    new-array v2, v1, [C

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_b

    .line 1364
    iget-object v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v7, v3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-char v6, v6

    aput-char v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1368
    :cond_b
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_c

    .line 1369
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d

    .line 1371
    :cond_c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    .line 1374
    :goto_d
    sget-object v9, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE2:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    new-instance v10, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;

    move-object v2, v10

    move-object v3, v1

    move-wide/from16 v6, v16

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;-><init>(Ljava/lang/String;JJ)V

    aput-object v10, v9, v8

    return-object v1

    .line 1376
    :cond_d
    iget-wide v6, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    cmp-long v1, v6, v4

    if-nez v1, :cond_12

    iget-wide v3, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    cmp-long v1, v3, v16

    if-nez v1, :cond_12

    .line 1377
    iget-object v1, v2, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    return-object v1

    :cond_e
    ushr-long v2, v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    .line 1380
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    array-length v3, v3

    sub-int/2addr v3, v7

    and-int/2addr v2, v3

    .line 1381
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    aget-object v3, v3, v2

    if-nez v3, :cond_11

    .line 1383
    new-array v3, v1, [C

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v1, :cond_f

    .line 1385
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/2addr v8, v6

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1389
    :cond_f
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_10

    .line 1390
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK8:Ljava/util/function/BiFunction;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v6}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f

    .line 1392
    :cond_10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([C)V

    .line 1395
    :goto_f
    sget-object v3, Lcom/alibaba/fastjson2/JSONFactory;->NAME_CACHE:[Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    new-instance v6, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;

    invoke-direct {v6, v1, v4, v5}, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;-><init>(Ljava/lang/String;J)V

    aput-object v6, v3, v2

    return-object v1

    .line 1397
    :cond_11
    iget-wide v1, v3, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->value:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_12

    .line 1398
    iget-object v1, v3, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->name:Ljava/lang/String;

    return-object v1

    .line 1404
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getFieldName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1156
    :cond_13
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final readFieldNameHashCode()J
    .locals 23

    move-object/from16 v0, p0

    .line 361
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    .line 362
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const-wide/16 v3, 0x0

    const/16 v5, 0x22

    if-eq v2, v5, :cond_4

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v5, 0x27

    if-eq v2, v5, :cond_4

    .line 363
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v1, v5

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONReaderASCII;->isFirstIdentifier(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readFieldNameHashCodeUnquote()J

    move-result-wide v1

    return-wide v1

    .line 366
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 371
    :cond_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    if-lez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getFieldName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal fieldName input "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", previous fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 374
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fieldName input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderASCII;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    const-wide/16 v1, -0x1

    return-wide v1

    .line 380
    :cond_4
    iget-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/4 v5, 0x0

    .line 382
    iput-object v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->stringValue:Ljava/lang/String;

    const/4 v5, 0x0

    .line 383
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 384
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    add-int/lit8 v7, v6, 0x9

    .line 387
    iget v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v12, 0x20

    const/16 v13, 0xff

    const/16 v14, 0x8

    const-wide/16 v15, 0xff

    const/4 v5, 0x1

    const/16 v3, 0x5c

    if-ge v7, v8, :cond_d

    .line 390
    aget-byte v4, v1, v6

    if-ne v4, v2, :cond_5

    goto/16 :goto_3

    :cond_5
    add-int/lit8 v8, v6, 0x1

    .line 392
    aget-byte v9, v1, v8

    if-ne v9, v2, :cond_6

    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    int-to-long v10, v4

    .line 394
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 395
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x2

    move-wide v4, v10

    goto/16 :goto_4

    :cond_6
    add-int/lit8 v8, v6, 0x2

    .line 397
    aget-byte v10, v1, v8

    if-ne v10, v2, :cond_7

    if-eqz v9, :cond_7

    if-eq v4, v3, :cond_7

    if-eq v9, v3, :cond_7

    shl-int/lit8 v7, v9, 0x8

    and-int/2addr v4, v13

    add-int/2addr v7, v4

    int-to-long v9, v7

    const/4 v4, 0x2

    .line 402
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 403
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x3

    :goto_2
    move-wide v4, v9

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v8, v6, 0x3

    .line 405
    aget-byte v11, v1, v8

    if-ne v11, v2, :cond_8

    if-eqz v10, :cond_8

    if-eq v4, v3, :cond_8

    if-eq v9, v3, :cond_8

    if-eq v10, v3, :cond_8

    const/16 v18, 0x10

    shl-int/lit8 v7, v10, 0x10

    and-int/2addr v9, v13

    shl-int/2addr v9, v14

    add-int/2addr v7, v9

    and-int/2addr v4, v13

    add-int/2addr v7, v4

    int-to-long v9, v7

    const/4 v4, 0x3

    .line 412
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 413
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x4

    goto :goto_2

    :cond_8
    add-int/lit8 v8, v6, 0x4

    .line 415
    aget-byte v5, v1, v8

    if-ne v5, v2, :cond_9

    if-eqz v11, :cond_9

    if-eq v4, v3, :cond_9

    if-eq v9, v3, :cond_9

    if-eq v10, v3, :cond_9

    if-eq v11, v3, :cond_9

    const/16 v17, 0x18

    shl-int/lit8 v5, v11, 0x18

    and-int/lit16 v7, v10, 0xff

    const/16 v10, 0x10

    shl-int/2addr v7, v10

    add-int/2addr v5, v7

    and-int/lit16 v7, v9, 0xff

    shl-int/2addr v7, v14

    add-int/2addr v5, v7

    and-int/2addr v4, v13

    add-int/2addr v5, v4

    int-to-long v4, v5

    const/4 v7, 0x4

    .line 423
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 424
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x5

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v8, v6, 0x5

    .line 426
    aget-byte v13, v1, v8

    if-ne v13, v2, :cond_a

    if-eqz v5, :cond_a

    if-eq v4, v3, :cond_a

    if-eq v9, v3, :cond_a

    if-eq v10, v3, :cond_a

    if-eq v11, v3, :cond_a

    if-eq v5, v3, :cond_a

    move/from16 v19, v4

    int-to-long v3, v5

    shl-long/2addr v3, v12

    int-to-long v12, v11

    and-long v11, v12, v15

    const/16 v5, 0x18

    shl-long/2addr v11, v5

    add-long/2addr v3, v11

    int-to-long v10, v10

    and-long/2addr v10, v15

    const/16 v5, 0x10

    shl-long/2addr v10, v5

    add-long/2addr v3, v10

    int-to-long v9, v9

    and-long/2addr v9, v15

    shl-long/2addr v9, v14

    add-long/2addr v3, v9

    move/from16 v12, v19

    int-to-long v9, v12

    and-long/2addr v9, v15

    add-long/2addr v3, v9

    const/4 v5, 0x5

    .line 435
    iput v5, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 436
    iput v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x6

    move-wide v4, v3

    goto/16 :goto_4

    :cond_a
    move v12, v4

    add-int/lit8 v3, v6, 0x6

    .line 438
    aget-byte v4, v1, v3

    if-ne v4, v2, :cond_b

    if-eqz v13, :cond_b

    const/16 v8, 0x5c

    if-eq v12, v8, :cond_b

    if-eq v9, v8, :cond_b

    if-eq v10, v8, :cond_b

    if-eq v11, v8, :cond_b

    if-eq v5, v8, :cond_b

    if-eq v13, v8, :cond_b

    int-to-long v7, v13

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    int-to-long v4, v5

    and-long/2addr v4, v15

    const/16 v13, 0x20

    shl-long/2addr v4, v13

    add-long/2addr v7, v4

    int-to-long v4, v11

    and-long/2addr v4, v15

    const/16 v11, 0x18

    shl-long/2addr v4, v11

    add-long/2addr v7, v4

    int-to-long v4, v10

    and-long/2addr v4, v15

    const/16 v10, 0x10

    shl-long/2addr v4, v10

    add-long/2addr v7, v4

    int-to-long v4, v9

    and-long/2addr v4, v15

    shl-long/2addr v4, v14

    add-long/2addr v7, v4

    int-to-long v4, v12

    and-long/2addr v4, v15

    add-long/2addr v4, v7

    const/4 v7, 0x6

    .line 448
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 449
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x7

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v3, v6, 0x7

    .line 451
    aget-byte v8, v1, v3

    if-ne v8, v2, :cond_c

    if-eqz v4, :cond_c

    const/16 v14, 0x5c

    if-eq v12, v14, :cond_c

    if-eq v9, v14, :cond_c

    if-eq v10, v14, :cond_c

    if-eq v11, v14, :cond_c

    if-eq v5, v14, :cond_c

    if-eq v13, v14, :cond_c

    if-eq v4, v14, :cond_c

    int-to-long v7, v4

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    int-to-long v13, v13

    and-long/2addr v13, v15

    const/16 v4, 0x28

    shl-long/2addr v13, v4

    add-long/2addr v7, v13

    int-to-long v4, v5

    and-long/2addr v4, v15

    const/16 v13, 0x20

    shl-long/2addr v4, v13

    add-long/2addr v7, v4

    int-to-long v4, v11

    and-long/2addr v4, v15

    const/16 v11, 0x18

    shl-long/2addr v4, v11

    add-long/2addr v7, v4

    int-to-long v4, v10

    and-long/2addr v4, v15

    const/16 v10, 0x10

    shl-long/2addr v4, v10

    add-long/2addr v7, v4

    int-to-long v4, v9

    and-long/2addr v4, v15

    const/16 v9, 0x8

    shl-long/2addr v4, v9

    add-long/2addr v7, v4

    int-to-long v4, v12

    and-long/2addr v4, v15

    add-long/2addr v4, v7

    const/4 v7, 0x7

    .line 462
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 463
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x8

    goto :goto_4

    :cond_c
    add-int/lit8 v3, v6, 0x8

    .line 465
    aget-byte v14, v1, v3

    if-ne v14, v2, :cond_d

    if-eqz v8, :cond_d

    const/16 v14, 0x5c

    if-eq v12, v14, :cond_d

    if-eq v9, v14, :cond_d

    if-eq v10, v14, :cond_d

    if-eq v11, v14, :cond_d

    if-eq v5, v14, :cond_d

    if-eq v13, v14, :cond_d

    if-eq v4, v14, :cond_d

    if-eq v8, v14, :cond_d

    .line 468
    invoke-static {v1, v6}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getLong([BI)J

    move-result-wide v4

    const/16 v6, 0x8

    .line 469
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 470
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    move v6, v7

    goto :goto_4

    :cond_d
    :goto_3
    const-wide/16 v4, 0x0

    :goto_4
    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    const/16 v7, 0x78

    const/16 v8, 0x75

    if-nez v3, :cond_15

    const/4 v3, 0x0

    .line 476
    :goto_5
    iget v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ge v6, v9, :cond_15

    .line 477
    aget-byte v9, v1, v6

    if-ne v9, v2, :cond_f

    if-nez v3, :cond_e

    .line 481
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    goto/16 :goto_e

    .line 485
    :cond_e
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 486
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_e

    :cond_f
    const/16 v10, 0x5c

    if-ne v9, v10, :cond_12

    const/4 v10, 0x1

    .line 492
    iput-boolean v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    add-int/lit8 v9, v6, 0x1

    .line 493
    aget-byte v10, v1, v9

    if-eq v10, v8, :cond_11

    if-eq v10, v7, :cond_10

    .line 514
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v6

    const/16 v10, 0xff

    move/from16 v22, v9

    move v9, v6

    move/from16 v6, v22

    goto :goto_7

    :cond_10
    add-int/lit8 v9, v6, 0x2

    .line 505
    aget-byte v9, v1, v9

    add-int/lit8 v6, v6, 0x3

    .line 506
    aget-byte v10, v1, v6

    .line 507
    invoke-static {v9, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v9

    goto :goto_6

    :cond_11
    add-int/lit8 v9, v6, 0x2

    .line 496
    aget-byte v9, v1, v9

    add-int/lit8 v10, v6, 0x3

    .line 497
    aget-byte v10, v1, v10

    add-int/lit8 v11, v6, 0x4

    .line 498
    aget-byte v11, v1, v11

    add-int/lit8 v6, v6, 0x5

    .line 499
    aget-byte v12, v1, v6

    .line 500
    invoke-static {v9, v10, v11, v12}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v9

    :cond_12
    :goto_6
    const/16 v10, 0xff

    :goto_7
    if-gt v9, v10, :cond_14

    const/16 v11, 0x8

    if-ge v3, v11, :cond_14

    if-nez v3, :cond_13

    if-nez v9, :cond_13

    goto/16 :goto_d

    :cond_13
    packed-switch v3, :pswitch_data_0

    const/16 v13, 0x28

    :goto_8
    const/4 v9, 0x1

    goto :goto_c

    :pswitch_0
    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v9, 0x38

    shl-long/2addr v11, v9

    const-wide v13, 0xffffffffffffffL

    goto :goto_9

    :pswitch_1
    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v9, 0x30

    shl-long/2addr v11, v9

    const-wide v13, 0xffffffffffffL

    :goto_9
    and-long/2addr v4, v13

    add-long/2addr v4, v11

    const/4 v9, 0x1

    const/16 v13, 0x28

    goto :goto_c

    :pswitch_2
    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v13, 0x28

    shl-long/2addr v11, v13

    const-wide v20, 0xffffffffffL

    goto :goto_a

    :pswitch_3
    const/16 v13, 0x28

    int-to-byte v9, v9

    int-to-long v11, v9

    const/16 v9, 0x20

    shl-long/2addr v11, v9

    const-wide v20, 0xffffffffL

    goto :goto_a

    :pswitch_4
    const/16 v13, 0x28

    int-to-byte v9, v9

    const/16 v11, 0x18

    shl-int/2addr v9, v11

    int-to-long v10, v9

    const-wide/32 v20, 0xffffff

    and-long v4, v4, v20

    goto :goto_b

    :pswitch_5
    const/16 v13, 0x28

    int-to-byte v9, v9

    const/16 v10, 0x10

    shl-int/2addr v9, v10

    int-to-long v11, v9

    const-wide/32 v20, 0xffff

    :goto_a
    and-long v4, v4, v20

    add-long/2addr v4, v11

    goto :goto_8

    :pswitch_6
    const/16 v10, 0x10

    const/16 v13, 0x28

    int-to-byte v9, v9

    const/16 v11, 0x8

    shl-int/2addr v9, v11

    int-to-long v10, v9

    and-long/2addr v4, v15

    :goto_b
    add-long/2addr v4, v10

    goto :goto_8

    :pswitch_7
    const/16 v13, 0x28

    int-to-byte v4, v9

    int-to-long v4, v4

    goto :goto_8

    :goto_c
    add-int/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 522
    :cond_14
    :goto_d
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const-wide/16 v4, 0x0

    :cond_15
    :goto_e
    const-wide/16 v9, 0x0

    cmp-long v3, v4, v9

    if-eqz v3, :cond_16

    goto :goto_11

    :cond_16
    const-wide v3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v4, v3

    const/4 v3, 0x0

    .line 563
    :goto_f
    aget-byte v9, v1, v6

    const-wide v10, 0x100000001b3L

    const/16 v12, 0x5c

    if-ne v9, v12, :cond_19

    const/4 v13, 0x1

    .line 565
    iput-boolean v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    add-int/lit8 v6, v6, 0x1

    .line 566
    aget-byte v9, v1, v6

    if-eq v9, v8, :cond_18

    if-eq v9, v7, :cond_17

    .line 585
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v9

    const/4 v13, 0x1

    goto :goto_10

    :cond_17
    add-int/lit8 v6, v6, 0x1

    .line 577
    aget-byte v9, v1, v6

    const/4 v13, 0x1

    add-int/2addr v6, v13

    .line 578
    aget-byte v14, v1, v6

    .line 579
    invoke-static {v9, v14}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v9

    goto :goto_10

    :cond_18
    const/4 v13, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 569
    aget-byte v9, v1, v6

    add-int/2addr v6, v13

    .line 570
    aget-byte v14, v1, v6

    add-int/2addr v6, v13

    .line 571
    aget-byte v15, v1, v6

    add-int/2addr v6, v13

    .line 572
    aget-byte v7, v1, v6

    .line 573
    invoke-static {v9, v14, v15, v7}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v9

    :goto_10
    add-int/2addr v6, v13

    int-to-long v14, v9

    xor-long/2addr v4, v14

    mul-long/2addr v4, v10

    const/16 v13, 0x20

    const-wide/16 v14, 0x0

    goto/16 :goto_15

    :cond_19
    const/4 v13, 0x1

    if-ne v9, v2, :cond_1f

    .line 595
    iput v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 596
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/2addr v6, v13

    .line 608
    :goto_11
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const-wide/16 v7, 0x1

    const/16 v3, 0x1a

    if-ge v6, v2, :cond_1a

    .line 609
    aget-byte v2, v1, v6

    :goto_12
    const/16 v9, 0x20

    if-gt v2, v9, :cond_1b

    shl-long v9, v7, v2

    const-wide v11, 0x100003700L

    and-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_1b

    add-int/lit8 v6, v6, 0x1

    .line 613
    aget-byte v2, v1, v6

    goto :goto_12

    :cond_1a
    move v2, v3

    :cond_1b
    const/16 v9, 0x3a

    if-ne v2, v9, :cond_1e

    const/4 v9, 0x1

    add-int/2addr v6, v9

    .line 624
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ne v6, v2, :cond_1c

    goto :goto_13

    .line 627
    :cond_1c
    aget-byte v3, v1, v6

    :goto_13
    const/16 v13, 0x20

    :goto_14
    if-gt v3, v13, :cond_1d

    shl-long v9, v7, v3

    const-wide v11, 0x100003700L

    and-long/2addr v9, v11

    const-wide/16 v14, 0x0

    cmp-long v2, v9, v14

    if-eqz v2, :cond_1d

    add-int/lit8 v6, v6, 0x1

    .line 632
    aget-byte v3, v1, v6

    goto :goto_14

    :cond_1d
    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 635
    iput v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    int-to-char v1, v3

    .line 636
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return-wide v4

    .line 620
    :cond_1e
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expect \':\', but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderASCII;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    move v7, v13

    const/16 v13, 0x20

    const-wide/16 v14, 0x0

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v9, v9, 0xff

    int-to-long v7, v9

    xor-long/2addr v4, v7

    mul-long/2addr v4, v10

    :goto_15
    add-int/lit8 v3, v3, 0x1

    const/16 v7, 0x78

    const/16 v8, 0x75

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1507
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x74

    const/16 v3, 0x6e

    const/16 v4, 0x66

    const/16 v5, 0x22

    if-eq v1, v5, :cond_7

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v6, 0x27

    if-ne v1, v6, :cond_0

    goto :goto_1

    .line 1696
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_3

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 1727
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal input : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderASCII;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1702
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readObject()Ljava/util/Map;

    move-result-object v1

    .line 1701
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderASCII;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1723
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readNull()V

    const/4 v1, 0x0

    return-object v1

    .line 1720
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readBoolValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->boolValue:Z

    .line 1721
    iget-boolean v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->boolValue:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_4
    const-string v1, "false"

    :goto_0
    return-object v1

    .line 1699
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readArray()Ljava/util/List;

    move-result-object v1

    .line 1698
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONReaderASCII;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1715
    :cond_6
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->readNumber0()V

    .line 1716
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->getNumber()Ljava/lang/Number;

    move-result-object v1

    .line 1717
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1508
    :cond_7
    :goto_1
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    int-to-byte v1, v1

    .line 1511
    iget v6, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 1523
    iget v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    sub-int/2addr v7, v6

    and-int/lit8 v7, v7, -0x4

    add-int/2addr v7, v6

    move v9, v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/16 v14, 0x5c

    const/4 v15, 0x1

    if-ge v9, v7, :cond_b

    .line 1525
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v11, v11, v9

    .line 1526
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v13, v9, 0x1

    aget-byte v12, v12, v13

    .line 1527
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v16, v9, 0x2

    aget-byte v13, v13, v16

    .line 1528
    iget-object v8, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v17, v9, 0x3

    aget-byte v8, v8, v17

    if-eq v11, v14, :cond_b

    if-eq v12, v14, :cond_b

    if-eq v13, v14, :cond_b

    if-ne v8, v14, :cond_8

    goto :goto_4

    :cond_8
    if-eq v11, v1, :cond_a

    if-eq v12, v1, :cond_a

    if-eq v13, v1, :cond_a

    if-ne v8, v1, :cond_9

    goto :goto_3

    :cond_9
    add-int/lit8 v9, v9, 0x4

    add-int/lit8 v10, v10, 0x4

    goto :goto_2

    :cond_a
    :goto_3
    move v7, v15

    goto :goto_5

    :cond_b
    :goto_4
    const/4 v7, 0x0

    :goto_5
    const/16 v8, 0x78

    const/16 v2, 0x75

    if-eqz v7, :cond_f

    if-ne v11, v1, :cond_c

    goto :goto_6

    :cond_c
    if-ne v12, v1, :cond_d

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_d
    if-ne v13, v1, :cond_e

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v10, v10, 0x2

    goto :goto_6

    :cond_e
    add-int/lit8 v9, v9, 0x3

    add-int/lit8 v10, v10, 0x3

    :goto_6
    const/4 v7, 0x0

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    .line 1556
    :goto_7
    iget v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ge v9, v11, :cond_29

    .line 1560
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v11, v11, v9

    if-ne v11, v14, :cond_12

    .line 1563
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v9, v9, 0x1

    aget-byte v7, v7, v9

    if-eq v7, v2, :cond_11

    if-eq v7, v8, :cond_10

    goto :goto_8

    :cond_10
    add-int/lit8 v9, v9, 0x2

    goto :goto_8

    :cond_11
    add-int/lit8 v9, v9, 0x4

    :goto_8
    add-int/2addr v9, v15

    move v7, v15

    const/4 v2, 0x0

    const/16 v11, 0x74

    goto/16 :goto_12

    :cond_12
    if-ne v11, v1, :cond_28

    :goto_9
    if-eqz v7, :cond_1d

    .line 1592
    new-array v7, v10, [C

    const/4 v9, 0x0

    .line 1595
    :goto_a
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    int-to-char v10, v10

    if-ne v10, v14, :cond_1b

    .line 1597
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v6

    int-to-char v10, v10

    if-eq v10, v5, :cond_1a

    if-eq v10, v14, :cond_1a

    const/16 v11, 0x62

    if-eq v10, v11, :cond_19

    if-eq v10, v4, :cond_18

    if-eq v10, v3, :cond_17

    const/16 v11, 0x72

    if-eq v10, v11, :cond_16

    if-eq v10, v8, :cond_15

    const/16 v11, 0x74

    if-eq v10, v11, :cond_14

    if-eq v10, v2, :cond_13

    .line 1632
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v10

    goto :goto_b

    .line 1600
    :cond_13
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v10, v10, v6

    int-to-char v10, v10

    .line 1601
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v6, v15

    aget-byte v12, v12, v6

    int-to-char v12, v12

    .line 1602
    iget-object v13, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v6, v15

    aget-byte v13, v13, v6

    int-to-char v13, v13

    .line 1603
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v6, v15

    aget-byte v2, v2, v6

    int-to-char v2, v2

    .line 1604
    invoke-static {v10, v12, v13, v2}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v10

    goto :goto_b

    :cond_14
    const/16 v10, 0x9

    goto :goto_b

    :cond_15
    const/16 v11, 0x74

    .line 1608
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v2, v2, v6

    int-to-char v2, v2

    .line 1609
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v6, v15

    aget-byte v10, v10, v6

    int-to-char v10, v10

    .line 1610
    invoke-static {v2, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v10

    goto :goto_b

    :cond_16
    const/16 v11, 0x74

    const/16 v10, 0xd

    goto :goto_b

    :cond_17
    const/16 v11, 0x74

    const/16 v10, 0xa

    goto :goto_b

    :cond_18
    const/16 v11, 0x74

    const/16 v10, 0xc

    goto :goto_b

    :cond_19
    const/16 v11, 0x74

    const/16 v10, 0x8

    goto :goto_b

    :cond_1a
    const/16 v11, 0x74

    goto :goto_b

    :cond_1b
    const/16 v11, 0x74

    if-ne v10, v1, :cond_1c

    .line 1642
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([C)V

    move v9, v6

    goto :goto_c

    .line 1638
    :cond_1c
    :goto_b
    aput-char v10, v7, v9

    add-int/2addr v6, v15

    add-int/2addr v9, v15

    const/16 v2, 0x75

    goto/16 :goto_a

    .line 1644
    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->str:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 1645
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 1646
    :cond_1e
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v1, :cond_1f

    .line 1647
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    invoke-static {v1, v2, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1648
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v2, v1, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_c

    .line 1650
    :cond_1f
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    sub-int v4, v9, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1654
    :goto_c
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->context:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONReader$Context;->features:J

    sget-object v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->TrimString:Lcom/alibaba/fastjson2/JSONReader$Feature;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_20

    .line 1655
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_20
    add-int/2addr v9, v15

    .line 1659
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v3, 0x1a

    if-eq v9, v2, :cond_27

    .line 1660
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    :goto_d
    move v9, v6

    const-wide v6, 0x100003700L

    const-wide/16 v10, 0x1

    const/16 v8, 0x20

    if-gt v2, v8, :cond_22

    shl-long v12, v10, v2

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_22

    .line 1662
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ne v9, v2, :cond_21

    goto :goto_11

    .line 1665
    :cond_21
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v6, v9, 0x1

    aget-byte v2, v2, v9

    goto :goto_d

    :cond_22
    const/16 v12, 0x2c

    if-ne v2, v12, :cond_23

    goto :goto_e

    :cond_23
    const/4 v15, 0x0

    .line 1669
    :goto_e
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    if-eqz v15, :cond_26

    .line 1670
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ne v9, v2, :cond_24

    goto :goto_10

    .line 1673
    :cond_24
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v2, v2, v9

    :goto_f
    move v9, v12

    if-gt v2, v8, :cond_26

    shl-long v12, v10, v2

    and-long/2addr v12, v6

    cmp-long v12, v12, v4

    if-eqz v12, :cond_26

    .line 1675
    iget v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ne v9, v2, :cond_25

    goto :goto_10

    .line 1679
    :cond_25
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v2, v2, v9

    goto :goto_f

    :cond_26
    move v3, v2

    :goto_10
    int-to-char v2, v3

    .line 1685
    iput-char v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 1686
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return-object v1

    .line 1690
    :cond_27
    :goto_11
    iput-char v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/4 v2, 0x0

    .line 1691
    iput-boolean v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    .line 1692
    iput v9, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    return-object v1

    :cond_28
    const/4 v2, 0x0

    const/16 v11, 0x74

    add-int/lit8 v9, v9, 0x1

    :goto_12
    add-int/lit8 v10, v10, 0x1

    const/16 v2, 0x75

    goto/16 :goto_7

    .line 1557
    :cond_29
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "invalid escape character EOI"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected final readString0()V
    .locals 12

    .line 1409
    iget-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 1410
    iget v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    const/4 v2, 0x0

    .line 1412
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->valueEscape:Z

    move v3, v2

    .line 1415
    :goto_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v5, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v4, v4, v5

    const/16 v5, 0x78

    const/16 v6, 0x75

    const/16 v7, 0x5c

    const/4 v8, 0x1

    if-ne v4, v7, :cond_2

    .line 1417
    iput-boolean v8, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->valueEscape:Z

    .line 1418
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v7, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v4, v4, v7

    if-eq v4, v6, :cond_1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1425
    :cond_0
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    goto :goto_1

    .line 1421
    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 1431
    :goto_1
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    goto/16 :goto_7

    :cond_2
    if-ne v4, v0, :cond_c

    .line 1443
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->valueEscape:Z

    if-eqz v0, :cond_7

    .line 1444
    new-array v0, v3, [C

    .line 1445
    iput v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    move v1, v2

    .line 1447
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x22

    if-ne v3, v7, :cond_5

    .line 1449
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v3, v3, v9

    int-to-char v3, v3

    if-eq v3, v4, :cond_6

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_4

    if-eq v3, v5, :cond_3

    .line 1469
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v3

    goto :goto_3

    .line 1460
    :cond_3
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v3, v3, v4

    .line 1461
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v4, v4, v9

    .line 1462
    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v3

    goto :goto_3

    .line 1452
    :cond_4
    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v3, v3, v4

    .line 1453
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v4, v4, v9

    .line 1454
    iget-object v9, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v10, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v10, v8

    iput v10, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v9, v9, v10

    .line 1455
    iget-object v10, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v11, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v11, v8

    iput v11, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v10, v10, v11

    .line 1456
    invoke-static {v3, v4, v9, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v3

    goto :goto_3

    :cond_5
    if-ne v3, v4, :cond_6

    .line 1479
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    .line 1475
    :cond_6
    :goto_3
    aput-char v3, v0, v1

    .line 1476
    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v1, v8

    goto :goto_2

    .line 1481
    :cond_7
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_8

    .line 1482
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1483
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->STRING_CREATOR_JDK11:Ljava/util/function/BiFunction;

    sget-object v3, Lcom/alibaba/fastjson2/util/JDKUtils;->LATIN1:Ljava/lang/Byte;

    invoke-interface {v1, v0, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    .line 1485
    :cond_8
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    sub-int/2addr v4, v1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v0, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v0

    .line 1489
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v0, v3

    :goto_5
    const/16 v3, 0x20

    if-gt v0, v3, :cond_9

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    const-wide v5, 0x100003700L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    .line 1491
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    iget v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v3, v8

    iput v3, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    aget-byte v0, v0, v3

    goto :goto_5

    :cond_9
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_a

    move v2, v8

    .line 1494
    :cond_a
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    if-eqz v2, :cond_b

    .line 1495
    iget v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    .line 1496
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReaderASCII;->next()V

    goto :goto_6

    .line 1498
    :cond_b
    iget v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v2, v8

    iput v2, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    int-to-char v0, v0

    .line 1499
    iput-char v0, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    .line 1502
    :goto_6
    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->stringValue:Ljava/lang/String;

    return-void

    .line 1439
    :cond_c
    iget v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public final readValueHashCode()J
    .locals 19

    move-object/from16 v0, p0

    .line 657
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_0

    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/16 v3, 0x27

    if-eq v1, v3, :cond_0

    const-wide/16 v1, -0x1

    return-wide v1

    .line 661
    :cond_0
    iget-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    const/4 v3, 0x0

    .line 663
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 664
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    const-wide/16 v5, 0x0

    move v7, v3

    move-wide v8, v5

    .line 666
    :goto_0
    iget v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v11, 0x78

    const/16 v12, 0x75

    const/16 v13, 0x5c

    const/16 v14, 0x20

    const/4 v15, 0x1

    if-ge v4, v10, :cond_8

    .line 667
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v10, v10, v4

    if-ne v10, v1, :cond_2

    if-nez v7, :cond_1

    .line 672
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    :goto_1
    move-wide v8, v5

    goto/16 :goto_6

    .line 676
    :cond_1
    iput v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 677
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    :cond_2
    if-ne v10, v13, :cond_5

    .line 683
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 684
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v10, v4

    if-eq v10, v12, :cond_4

    if-eq v10, v11, :cond_3

    .line 703
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v10

    goto :goto_2

    .line 695
    :cond_3
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v10, v10, v4

    .line 696
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v3, v3, v4

    .line 697
    invoke-static {v10, v3}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v10

    goto :goto_2

    .line 687
    :cond_4
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    .line 688
    iget-object v10, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v10, v10, v4

    .line 689
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v2, v2, v4

    .line 690
    iget-object v11, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v11, v11, v4

    .line 691
    invoke-static {v3, v10, v2, v11}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v10

    :cond_5
    :goto_2
    const/16 v2, 0xff

    if-gt v10, v2, :cond_7

    const/16 v2, 0x8

    if-ge v7, v2, :cond_7

    if-nez v7, :cond_6

    if-nez v10, :cond_6

    goto :goto_5

    :cond_6
    packed-switch v7, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    int-to-byte v2, v10

    int-to-long v2, v2

    const/16 v10, 0x38

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffffffL

    goto :goto_3

    :pswitch_1
    int-to-byte v2, v10

    int-to-long v2, v2

    const/16 v10, 0x30

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffffL

    goto :goto_3

    :pswitch_2
    int-to-byte v2, v10

    int-to-long v2, v2

    const/16 v10, 0x28

    shl-long/2addr v2, v10

    const-wide v10, 0xffffffffffL

    goto :goto_3

    :pswitch_3
    int-to-byte v2, v10

    int-to-long v2, v2

    shl-long/2addr v2, v14

    const-wide v10, 0xffffffffL

    goto :goto_3

    :pswitch_4
    int-to-byte v2, v10

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    const-wide/32 v10, 0xffffff

    goto :goto_3

    :pswitch_5
    int-to-byte v2, v10

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    const-wide/32 v10, 0xffff

    goto :goto_3

    :pswitch_6
    int-to-byte v3, v10

    shl-int/lit8 v2, v3, 0x8

    int-to-long v2, v2

    const-wide/16 v10, 0xff

    :goto_3
    and-long/2addr v8, v10

    add-long/2addr v8, v2

    goto :goto_4

    :pswitch_7
    int-to-byte v2, v10

    int-to-long v8, v2

    :goto_4
    add-int/2addr v4, v15

    add-int/lit8 v7, v7, 0x1

    const/16 v2, 0x22

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 710
    :cond_7
    :goto_5
    iget v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameBegin:I

    goto/16 :goto_1

    :cond_8
    :goto_6
    cmp-long v1, v8, v5

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const-wide v1, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move-wide v8, v1

    const/4 v1, 0x0

    .line 750
    :goto_7
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v2, v2, v4

    const-wide v10, 0x100000001b3L

    if-ne v2, v13, :cond_c

    .line 752
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEscape:Z

    .line 753
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    if-eq v2, v12, :cond_b

    const/16 v3, 0x78

    if-eq v2, v3, :cond_a

    .line 772
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char1(I)C

    move-result v2

    goto :goto_8

    .line 764
    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    .line 765
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v7, v7, v4

    .line 766
    invoke-static {v2, v7}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char2(II)C

    move-result v2

    goto :goto_8

    :cond_b
    const/16 v3, 0x78

    .line 756
    iget-object v2, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v2, v4

    .line 757
    iget-object v7, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v7, v7, v4

    .line 758
    iget-object v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v3, v3, v4

    .line 759
    iget-object v12, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    add-int/2addr v4, v15

    aget-byte v12, v12, v4

    .line 760
    invoke-static {v2, v7, v3, v12}, Lcom/alibaba/fastjson2/JSONReaderASCII;->char4(IIII)C

    move-result v2

    :goto_8
    add-int/2addr v4, v15

    int-to-long v2, v2

    xor-long/2addr v2, v8

    mul-long/2addr v2, v10

    move-wide v8, v2

    goto/16 :goto_d

    :cond_c
    const/16 v3, 0x22

    if-ne v2, v3, :cond_13

    .line 782
    iput v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameLength:I

    .line 783
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->nameEnd:I

    const/4 v1, 0x0

    .line 784
    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->stringValue:Ljava/lang/String;

    add-int/2addr v4, v15

    .line 796
    :goto_9
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    const/16 v2, 0x1a

    if-ne v4, v1, :cond_d

    move v1, v2

    goto :goto_a

    .line 799
    :cond_d
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v4

    :goto_a
    const-wide v10, 0x100003700L

    const-wide/16 v12, 0x1

    if-gt v1, v14, :cond_e

    shl-long v17, v12, v1

    and-long v17, v17, v10

    cmp-long v3, v17, v5

    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 804
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v1, v1, v4

    goto :goto_a

    :cond_e
    const/16 v3, 0x2c

    if-ne v1, v3, :cond_f

    move v3, v15

    goto :goto_b

    :cond_f
    const/4 v3, 0x0

    .line 807
    :goto_b
    iput-boolean v3, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->comma:Z

    if-eqz v3, :cond_12

    add-int/lit8 v4, v4, 0x1

    .line 809
    iget v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->end:I

    if-ne v4, v1, :cond_10

    goto :goto_c

    .line 812
    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v2, v1, v4

    :goto_c
    if-gt v2, v14, :cond_11

    shl-long v16, v12, v2

    and-long v16, v16, v10

    cmp-long v1, v16, v5

    if-eqz v1, :cond_11

    add-int/lit8 v4, v4, 0x1

    .line 817
    iget-object v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->bytes:[B

    aget-byte v2, v1, v4

    goto :goto_c

    :cond_11
    move v1, v2

    :cond_12
    add-int/2addr v4, v15

    .line 821
    iput v4, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->offset:I

    int-to-char v1, v1

    .line 822
    iput-char v1, v0, Lcom/alibaba/fastjson2/JSONReaderASCII;->ch:C

    return-wide v8

    :cond_13
    add-int/lit8 v4, v4, 0x1

    if-gez v2, :cond_14

    and-int/lit16 v2, v2, 0xff

    :cond_14
    move v7, v4

    int-to-long v3, v2

    xor-long v2, v8, v3

    mul-long/2addr v2, v10

    move-wide v8, v2

    move v4, v7

    :goto_d
    add-int/lit8 v1, v1, 0x1

    const/16 v12, 0x75

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
