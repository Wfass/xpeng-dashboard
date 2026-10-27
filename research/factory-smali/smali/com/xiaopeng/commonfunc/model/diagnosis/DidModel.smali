.class public Lcom/xiaopeng/commonfunc/model/diagnosis/DidModel;
.super Ljava/lang/Object;
.source "DidModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DidModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDidInfo(IIILjava/lang/String;)Ljava/lang/Object;
    .locals 18
    .param p0, "address"    # I
    .param p1, "did"    # I
    .param p2, "length"    # I
    .param p3, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(III",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 100
    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 101
    .local v2, "res":Ljava/lang/Object;, "TT;"
    invoke-static/range {p0 .. p1}, Lcom/xiaopeng/commonfunc/utils/DidHelper;->readDid(II)[B

    move-result-object v3

    .line 102
    .local v3, "values":[B
    const/4 v0, 0x0

    .line 103
    .local v0, "valueBitSet":Ljava/util/BitSet;
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    array-length v7, v3

    move/from16 v8, p2

    if-ge v7, v8, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_1
    move/from16 v8, p2

    :goto_0
    const-string v7, "DidModel"

    const-string v9, "value read from DID[%d : %d] fail: length not correct"

    new-array v10, v4, [Ljava/lang/Object;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v7, v9, v10}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .end local v0    # "valueBitSet":Ljava/util/BitSet;
    .local v7, "valueBitSet":Ljava/util/BitSet;
    :goto_1
    move-object v7, v0

    :try_start_0
    const-string v0, "~"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "indexTilde":I
    const-string v9, "("

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 112
    .local v9, "indexOpenParenthesis":I
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 113
    .local v10, "indexCloseParenthesis":I
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 114
    .local v11, "startpos":I
    add-int/lit8 v12, v0, 0x1

    invoke-virtual {v1, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 115
    .local v12, "endpos":I
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v1, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v14, "@"

    .line 116
    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 118
    .local v13, "params":[Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 119
    aget-object v14, v13, v5

    const/4 v15, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v4, "unsignedlong"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_1
    const-string v4, "ascii"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_3

    :sswitch_2
    const-string v4, "enum"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_3

    :sswitch_3
    const-string v4, "hex"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_3

    :sswitch_4
    const-string v4, "unsigned"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v15

    :goto_3
    packed-switch v4, :pswitch_data_0

    .end local v0    # "indexTilde":I
    .end local v9    # "indexOpenParenthesis":I
    .end local v10    # "indexCloseParenthesis":I
    .end local v11    # "startpos":I
    .end local v12    # "endpos":I
    .end local v13    # "params":[Ljava/lang/String;
    goto :goto_4

    .line 137
    .restart local v0    # "indexTilde":I
    .restart local v9    # "indexOpenParenthesis":I
    .restart local v10    # "indexCloseParenthesis":I
    .restart local v11    # "startpos":I
    .restart local v12    # "endpos":I
    .restart local v13    # "params":[Ljava/lang/String;
    :pswitch_0
    add-int/lit8 v4, v12, 0x1

    invoke-static {v7, v11, v4}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getHex(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 143
    .end local v2    # "res":Ljava/lang/Object;, "TT;"
    .end local v9    # "indexOpenParenthesis":I
    .end local v10    # "indexCloseParenthesis":I
    .end local v11    # "startpos":I
    .end local v12    # "endpos":I
    .end local v13    # "params":[Ljava/lang/String;
    .local v0, "res":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    goto :goto_4

    .line 134
    .local v0, "indexTilde":I
    .restart local v2    # "res":Ljava/lang/Object;, "TT;"
    .restart local v9    # "indexOpenParenthesis":I
    .restart local v10    # "indexCloseParenthesis":I
    .restart local v11    # "startpos":I
    .restart local v12    # "endpos":I
    .restart local v13    # "params":[Ljava/lang/String;
    :pswitch_1
    add-int/lit8 v4, v12, 0x1

    invoke-static {v7, v11, v4}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getLong(Ljava/util/BitSet;II)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v2, v4

    .line 135
    goto :goto_4

    .line 131
    :pswitch_2
    add-int/lit8 v4, v12, 0x1

    invoke-static {v7, v11, v4}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getInt(Ljava/util/BitSet;II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, v4

    .line 132
    goto :goto_4

    .line 124
    :pswitch_3
    add-int/lit8 v4, v12, 0x1

    invoke-static {v7, v11, v4}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getInt(Ljava/util/BitSet;II)I

    move-result v4

    .line 125
    .local v4, "enumindex":I
    aget-object v14, v13, v6

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 126
    .local v14, "enums":[Ljava/lang/String;
    array-length v15, v14

    if-ge v4, v15, :cond_3

    .line 127
    aget-object v15, v14, v4

    move-object v2, v15

    goto :goto_4

    .line 121
    .end local v4    # "enumindex":I
    .end local v14    # "enums":[Ljava/lang/String;
    :pswitch_4
    add-int/lit8 v4, v12, 0x1

    invoke-static {v7, v11, v4}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getAscii(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 122
    nop

    .line 143
    .end local v0    # "indexTilde":I
    .end local v9    # "indexOpenParenthesis":I
    .end local v10    # "indexCloseParenthesis":I
    .end local v11    # "startpos":I
    .end local v12    # "endpos":I
    .end local v13    # "params":[Ljava/lang/String;
    :cond_3
    :goto_4
    goto :goto_5

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    const-string v0, "DidModel"

    const-string v4, "res [%s]"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-static {v0, v4, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf3990b -> :sswitch_4
        0x1931b -> :sswitch_3
        0x2f9501 -> :sswitch_2
        0x58caf51 -> :sswitch_1
        0x4418aaf1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDidInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 27
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 24
    .local v1, "enable":Z
    if-nez v1, :cond_0

    .line 25
    return-void

    .line 28
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getLength(Ljava/lang/String;)I

    move-result v2

    .line 29
    .local v2, "length":I
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getAddress(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, "address":I
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getDid(Ljava/lang/String;)I

    move-result v4

    .line 31
    .local v4, "did":I
    invoke-static/range {p0 .. p0}, Lcom/xiaopeng/xmlconfig/Support$Case;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "         "

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ","

    .line 32
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "extras":[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/xiaopeng/commonfunc/utils/DidHelper;->readDid(II)[B

    move-result-object v6

    .line 34
    .local v6, "values":[B
    const/4 v0, 0x0

    .line 35
    .local v0, "valueBitSet":Ljava/util/BitSet;
    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_2

    array-length v10, v6

    if-ge v10, v2, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v6}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v0

    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const-string v10, "DidModel"

    const-string v11, "value read from DID[%d : %d] fail: length not correct"

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    invoke-static {v10, v11, v12}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v0    # "valueBitSet":Ljava/util/BitSet;
    .local v10, "valueBitSet":Ljava/util/BitSet;
    :goto_1
    move-object v10, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 42
    .local v11, "builder":Ljava/lang/StringBuilder;
    array-length v12, v5

    move v13, v7

    :goto_2
    if-ge v13, v12, :cond_7

    aget-object v0, v5, v13

    move-object v14, v0

    .line 44
    .local v14, "extra":Ljava/lang/String;
    :try_start_0
    const-string v0, "~"

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "indexTilde":I
    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .line 46
    .local v15, "indexOpenParenthesis":I
    const-string v8, ")"

    invoke-virtual {v14, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_7

    .line 47
    .local v8, "indexCloseParenthesis":I
    :try_start_1
    invoke-virtual {v14, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 48
    .local v9, "startpos":I
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v14, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 49
    .local v7, "endpos":I
    move/from16 v18, v0

    add-int/lit8 v0, v15, 0x1

    .end local v0    # "indexTilde":I
    .local v18, "indexTilde":I
    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v19, v1

    :try_start_2
    const-string v1, "@"

    .line 50
    .end local v1    # "enable":Z
    .local v19, "enable":Z
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "params":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    .line 53
    move/from16 v20, v2

    :try_start_3
    aget-object v2, v0, v1

    .end local v2    # "length":I
    .local v20, "length":I
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, ":"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    .line 58
    if-eqz v10, :cond_6

    .line 59
    const/16 v17, 0x1

    :try_start_4
    aget-object v2, v0, v17

    const/16 v16, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    sparse-switch v21, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    :try_start_5
    const-string v1, "unsignedlong"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_4

    :sswitch_1
    const-string v1, "ascii"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    :sswitch_2
    const-string v1, "enum"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move/from16 v1, v17

    goto :goto_4

    :sswitch_3
    const-string v1, "hex"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_4

    :sswitch_4
    const-string v1, "unsigned"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_4

    .line 92
    .end local v0    # "params":[Ljava/lang/String;
    .end local v7    # "endpos":I
    .end local v8    # "indexCloseParenthesis":I
    .end local v9    # "startpos":I
    .end local v15    # "indexOpenParenthesis":I
    .end local v18    # "indexTilde":I
    :catch_0
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v25, v3

    goto/16 :goto_9

    .line 59
    .restart local v0    # "params":[Ljava/lang/String;
    .restart local v7    # "endpos":I
    .restart local v8    # "indexCloseParenthesis":I
    .restart local v9    # "startpos":I
    .restart local v15    # "indexOpenParenthesis":I
    .restart local v18    # "indexTilde":I
    :cond_3
    :goto_3
    move/from16 v1, v16

    :goto_4
    packed-switch v1, :pswitch_data_0

    .line 91
    move/from16 v25, v3

    goto/16 :goto_6

    .line 87
    :pswitch_0
    add-int/lit8 v1, v7, 0x1

    invoke-static {v10, v9, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getHex(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_4
    :goto_5
    move/from16 v25, v3

    goto :goto_6

    .line 80
    :pswitch_1
    add-int/lit8 v1, v7, 0x1

    invoke-static {v10, v9, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getLong(Ljava/util/BitSet;II)J

    move-result-wide v1

    .line 81
    .local v1, "unsignedlong":J
    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    move-wide/from16 v22, v1

    array-length v1, v0

    .end local v1    # "unsignedlong":J
    .local v22, "unsignedlong":J
    const/4 v2, 0x2

    if-le v1, v2, :cond_4

    .line 83
    aget-object v1, v0, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 73
    .end local v22    # "unsignedlong":J
    :pswitch_2
    add-int/lit8 v1, v7, 0x1

    invoke-static {v10, v9, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getInt(Ljava/util/BitSet;II)I

    move-result v1

    .line 74
    .local v1, "unsignedValue":I
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    array-length v2, v0

    move/from16 v24, v1

    const/4 v1, 0x2

    if-le v2, v1, :cond_4

    .line 76
    .end local v1    # "unsignedValue":I
    .local v24, "unsignedValue":I
    aget-object v2, v0, v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    .line 64
    .end local v24    # "unsignedValue":I
    :pswitch_3
    add-int/lit8 v1, v7, 0x1

    :try_start_6
    invoke-static {v10, v9, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getInt(Ljava/util/BitSet;II)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1

    .line 65
    .local v1, "enumindex":I
    move/from16 v25, v3

    const/4 v2, 0x2

    :try_start_7
    aget-object v3, v0, v2

    .end local v3    # "address":I
    .local v25, "address":I
    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "enums":[Ljava/lang/String;
    array-length v3, v2

    if-ge v1, v3, :cond_5

    .line 67
    aget-object v3, v2, v1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 69
    :cond_5
    const-string v3, "UNKNOWN"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_6

    .line 61
    .end local v1    # "enumindex":I
    .end local v2    # "enums":[Ljava/lang/String;
    .end local v25    # "address":I
    .restart local v3    # "address":I
    :pswitch_4
    move/from16 v25, v3

    .end local v3    # "address":I
    .restart local v25    # "address":I
    add-int/lit8 v1, v7, 0x1

    invoke-static {v10, v9, v1}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->getAscii(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    goto :goto_6

    .line 92
    .end local v0    # "params":[Ljava/lang/String;
    .end local v7    # "endpos":I
    .end local v8    # "indexCloseParenthesis":I
    .end local v9    # "startpos":I
    .end local v15    # "indexOpenParenthesis":I
    .end local v18    # "indexTilde":I
    .end local v25    # "address":I
    .restart local v3    # "address":I
    :catch_1
    move-exception v0

    move/from16 v25, v3

    move-object/from16 v2, p1

    goto :goto_7

    .line 91
    .restart local v0    # "params":[Ljava/lang/String;
    .restart local v7    # "endpos":I
    .restart local v8    # "indexCloseParenthesis":I
    .restart local v9    # "startpos":I
    .restart local v15    # "indexOpenParenthesis":I
    .restart local v18    # "indexTilde":I
    :cond_6
    move/from16 v25, v3

    const/16 v17, 0x1

    .end local v3    # "address":I
    .restart local v25    # "address":I
    :goto_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v2, p1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    .line 94
    .end local v0    # "params":[Ljava/lang/String;
    .end local v7    # "endpos":I
    .end local v8    # "indexCloseParenthesis":I
    .end local v9    # "startpos":I
    .end local v15    # "indexOpenParenthesis":I
    .end local v18    # "indexTilde":I
    goto :goto_a

    .line 92
    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_9

    .end local v25    # "address":I
    .restart local v3    # "address":I
    :catch_4
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v25, v3

    const/16 v17, 0x1

    .end local v3    # "address":I
    .restart local v25    # "address":I
    :goto_7
    goto :goto_9

    .end local v20    # "length":I
    .end local v25    # "address":I
    .local v2, "length":I
    .restart local v3    # "address":I
    :catch_5
    move-exception v0

    move/from16 v20, v2

    move/from16 v25, v3

    const/16 v17, 0x1

    move-object/from16 v2, p1

    .end local v2    # "length":I
    .end local v3    # "address":I
    .restart local v20    # "length":I
    .restart local v25    # "address":I
    goto :goto_9

    .end local v19    # "enable":Z
    .end local v20    # "length":I
    .end local v25    # "address":I
    .local v1, "enable":Z
    .restart local v2    # "length":I
    .restart local v3    # "address":I
    :catch_6
    move-exception v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v25, v3

    const/16 v17, 0x1

    goto :goto_8

    :catch_7
    move-exception v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v25, v3

    move/from16 v17, v9

    :goto_8
    move-object/from16 v2, p1

    .line 93
    .end local v1    # "enable":Z
    .end local v2    # "length":I
    .end local v3    # "address":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v19    # "enable":Z
    .restart local v20    # "length":I
    .restart local v25    # "address":I
    :goto_9
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "extra":Ljava/lang/String;
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v25

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_2

    .line 96
    .end local v19    # "enable":Z
    .end local v20    # "length":I
    .end local v25    # "address":I
    .restart local v1    # "enable":Z
    .restart local v2    # "length":I
    .restart local v3    # "address":I
    :cond_7
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v25, v3

    move-object/from16 v2, p1

    .end local v1    # "enable":Z
    .end local v2    # "length":I
    .end local v3    # "address":I
    .restart local v19    # "enable":Z
    .restart local v20    # "length":I
    .restart local v25    # "address":I
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf3990b -> :sswitch_4
        0x1931b -> :sswitch_3
        0x2f9501 -> :sswitch_2
        0x58caf51 -> :sswitch_1
        0x4418aaf1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
