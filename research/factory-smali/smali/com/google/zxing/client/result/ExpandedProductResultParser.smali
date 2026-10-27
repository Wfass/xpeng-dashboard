.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static equals(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "targs"    # [Ljava/lang/String;

    .line 213
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 214
    return v0

    .line 216
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 217
    .local v3, "targ":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    const/4 v0, 0x1

    return v0

    .line 216
    .end local v3    # "targ":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_2
    return v0
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 226
    .local v0, "c":C
    const/4 v1, 0x0

    const/16 v2, 0x28

    if-eq v0, v2, :cond_0

    .line 227
    return-object v1

    .line 230
    :cond_0
    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "rawTextAux":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 234
    invoke-interface {v2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 235
    .local v5, "currentChar":C
    const/16 v6, 0x29

    if-ne v5, v6, :cond_1

    .line 236
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    :cond_1
    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 238
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .end local v5    # "currentChar":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    .restart local v5    # "currentChar":C
    :cond_2
    return-object v1

    .line 243
    .end local v4    # "index":I
    .end local v5    # "currentChar":C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "i"    # I
    .param p1, "rawText"    # Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "rawTextAux":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 252
    .local v3, "c":C
    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    .line 255
    invoke-static {v2, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 256
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v2    # "index":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 34
    .param p1, "result"    # Lcom/google/zxing/Result;

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    .local v0, "format":Lcom/google/zxing/BarcodeFormat;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 48
    return-object v2

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "rawText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 53
    .local v3, "productID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 54
    .local v4, "sscc":Ljava/lang/String;
    const/4 v5, 0x0

    .line 55
    .local v5, "lotNumber":Ljava/lang/String;
    const/4 v6, 0x0

    .line 56
    .local v6, "productionDate":Ljava/lang/String;
    const/4 v7, 0x0

    .line 57
    .local v7, "packagingDate":Ljava/lang/String;
    const/4 v8, 0x0

    .line 58
    .local v8, "bestBeforeDate":Ljava/lang/String;
    const/4 v9, 0x0

    .line 59
    .local v9, "expirationDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 60
    .local v10, "weight":Ljava/lang/String;
    const/4 v11, 0x0

    .line 61
    .local v11, "weightType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 62
    .local v12, "weightIncrement":Ljava/lang/String;
    const/4 v13, 0x0

    .line 63
    .local v13, "price":Ljava/lang/String;
    const/4 v14, 0x0

    .line 64
    .local v14, "priceIncrement":Ljava/lang/String;
    const/4 v15, 0x0

    .line 65
    .local v15, "priceCurrency":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v2, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v20, v0

    const/4 v0, 0x0

    .end local v0    # "format":Lcom/google/zxing/BarcodeFormat;
    .local v20, "format":Lcom/google/zxing/BarcodeFormat;
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object/from16 v31, v13

    move-object/from16 v32, v14

    move-object/from16 v33, v15

    move v3, v0

    .end local v4    # "sscc":Ljava/lang/String;
    .end local v5    # "lotNumber":Ljava/lang/String;
    .end local v6    # "productionDate":Ljava/lang/String;
    .end local v7    # "packagingDate":Ljava/lang/String;
    .end local v8    # "bestBeforeDate":Ljava/lang/String;
    .end local v9    # "expirationDate":Ljava/lang/String;
    .end local v10    # "weight":Ljava/lang/String;
    .end local v11    # "weightType":Ljava/lang/String;
    .end local v12    # "weightIncrement":Ljava/lang/String;
    .end local v13    # "price":Ljava/lang/String;
    .end local v14    # "priceIncrement":Ljava/lang/String;
    .end local v15    # "priceCurrency":Ljava/lang/String;
    .local v3, "i":I
    .local v21, "productID":Ljava/lang/String;
    .local v22, "sscc":Ljava/lang/String;
    .local v23, "lotNumber":Ljava/lang/String;
    .local v24, "productionDate":Ljava/lang/String;
    .local v25, "packagingDate":Ljava/lang/String;
    .local v26, "bestBeforeDate":Ljava/lang/String;
    .local v27, "expirationDate":Ljava/lang/String;
    .local v28, "weight":Ljava/lang/String;
    .local v29, "weightType":Ljava/lang/String;
    .local v30, "weightIncrement":Ljava/lang/String;
    .local v31, "price":Ljava/lang/String;
    .local v32, "priceIncrement":Ljava/lang/String;
    .local v33, "priceCurrency":Ljava/lang/String;
    :goto_0
    move v15, v3

    .line 69
    .end local v3    # "i":I
    .local v15, "i":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v15, v3, :cond_e

    .line 70
    invoke-static {v15, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "ai":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v15, v4

    .line 77
    invoke-static {v15, v1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v15

    .line 79
    .end local v15    # "i":I
    .local v5, "i":I
    const-string v6, "00"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    move-object/from16 v22, v4

    .line 194
    .end local v3    # "ai":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 81
    .restart local v3    # "ai":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :cond_2
    const-string v6, "01"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 82
    move-object/from16 v21, v4

    goto :goto_1

    .line 83
    :cond_3
    const-string v6, "10"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 84
    move-object/from16 v23, v4

    goto :goto_1

    .line 85
    :cond_4
    const-string v6, "11"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    move-object/from16 v24, v4

    goto :goto_1

    .line 87
    :cond_5
    const-string v6, "13"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 88
    move-object/from16 v25, v4

    goto :goto_1

    .line 89
    :cond_6
    const-string v6, "15"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 90
    move-object/from16 v26, v4

    goto :goto_1

    .line 91
    :cond_7
    const-string v6, "17"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 92
    move-object/from16 v27, v4

    goto :goto_1

    .line 93
    :cond_8
    const-string v6, "3100"

    const-string v7, "31011"

    const-string v8, "3102"

    const-string v9, "3103"

    const-string v10, "3104"

    const-string v11, "3105"

    const-string v12, "3106"

    const-string v13, "3107"

    const-string v14, "3108"

    const-string v15, "3109"

    filled-new-array/range {v6 .. v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->equals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x3

    if-eqz v6, :cond_9

    .line 94
    move-object/from16 v28, v4

    .line 95
    const-string v29, "KG"

    .line 96
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    goto :goto_1

    .line 97
    :cond_9
    const-string v8, "3200"

    const-string v9, "32011"

    const-string v10, "3202"

    const-string v11, "3203"

    const-string v12, "3204"

    const-string v13, "3205"

    const-string v14, "3206"

    const-string v15, "3207"

    const-string v16, "3208"

    const-string v17, "3209"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->equals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 98
    move-object/from16 v28, v4

    .line 99
    const-string v29, "LB"

    .line 100
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1

    .line 101
    :cond_a
    const-string v6, "3920"

    const-string v8, "3921"

    const-string v9, "3922"

    const-string v10, "3923"

    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->equals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 102
    move-object/from16 v31, v4

    .line 103
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1

    .line 104
    :cond_b
    const-string v6, "3930"

    const-string v8, "3931"

    const-string v9, "3932"

    const-string v10, "3933"

    filled-new-array {v6, v8, v9, v10}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->equals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x4

    if-ge v6, v8, :cond_c

    .line 110
    const/4 v6, 0x0

    return-object v6

    .line 112
    :cond_c
    const/4 v6, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    .line 113
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 114
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto :goto_2

    .line 116
    :cond_d
    const/4 v6, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v3    # "ai":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :goto_2
    nop

    .line 67
    move v3, v5

    goto/16 :goto_0

    .line 196
    .end local v5    # "i":I
    .restart local v15    # "i":I
    :cond_e
    new-instance v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v0

    move-object v4, v1

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move/from16 v19, v15

    move-object/from16 v15, v31

    .end local v15    # "i":I
    .local v19, "i":I
    move-object/from16 v16, v32

    move-object/from16 v17, v33

    move-object/from16 v18, v2

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p1

    return-object p1
.end method
