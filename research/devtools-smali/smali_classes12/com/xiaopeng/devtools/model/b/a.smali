.class public Lcom/xiaopeng/devtools/model/b/a;
.super Ljava/lang/Object;
.source "DidModel.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 13
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
    invoke-static {p0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    return-void

    .line 28
    :cond_0
    invoke-static {p0}, Lcom/xiaopeng/a/a$a;->ec(Ljava/lang/String;)I

    move-result v0

    .line 29
    invoke-static {p0}, Lcom/xiaopeng/a/a$a;->ea(Ljava/lang/String;)I

    move-result v1

    .line 30
    invoke-static {p0}, Lcom/xiaopeng/a/a$a;->eb(Ljava/lang/String;)I

    move-result v2

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/a/a$a;->ed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "         "

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v3, ","

    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/utils/e;->n(II)[B

    move-result-object v3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    array-length v8, v3

    if-ge v8, v0, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v4

    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const-string v0, "DidModel"

    const-string v3, "value read from DID[%d : %d] fail: length not correct"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v7

    invoke-static {v0, v3, v8}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    array-length v1, p0

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, p0, v2

    .line 44
    :try_start_0
    const-string v8, "~"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 45
    const-string v9, "("

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 46
    const-string v10, ")"

    invoke-virtual {v3, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 47
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 48
    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 49
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v9, "@"

    .line 50
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 53
    aget-object v9, v3, v5

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    if-eqz v4, :cond_5

    .line 59
    aget-object v9, v3, v7

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v12, "unsignedlong"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    goto :goto_4

    :sswitch_1
    const-string v12, "ascii"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v5

    goto :goto_4

    :sswitch_2
    const-string v12, "enum"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v7

    goto :goto_4

    :sswitch_3
    const-string v12, "hex"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x4

    goto :goto_4

    :sswitch_4
    const-string v12, "unsigned"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v6

    goto :goto_4

    :cond_3
    :goto_3
    move v9, v10

    :goto_4
    packed-switch v9, :pswitch_data_0

    goto :goto_5

    .line 87
    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v11, v8}, Lcom/xiaopeng/devtools/utils/d;->e(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 80
    :pswitch_1
    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v11, v8}, Lcom/xiaopeng/devtools/utils/d;->d(Ljava/util/BitSet;II)J

    move-result-wide v8

    .line 81
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    array-length v8, v3

    if-le v8, v6, :cond_5

    .line 83
    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 73
    :pswitch_2
    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v11, v8}, Lcom/xiaopeng/devtools/utils/d;->c(Ljava/util/BitSet;II)I

    move-result v8

    .line 74
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    array-length v8, v3

    if-le v8, v6, :cond_5

    .line 76
    aget-object v3, v3, v6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 64
    :pswitch_3
    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v11, v8}, Lcom/xiaopeng/devtools/utils/d;->c(Ljava/util/BitSet;II)I

    move-result v8

    .line 65
    aget-object v3, v3, v6

    const-string v9, ";"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 66
    array-length v9, v3

    if-ge v8, v9, :cond_4

    .line 67
    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 69
    :cond_4
    const-string v3, "UNKNOWN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    goto :goto_5

    .line 61
    :pswitch_4
    add-int/lit8 v8, v8, 0x1

    invoke-static {v4, v11, v8}, Lcom/xiaopeng/devtools/utils/d;->a(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    nop

    .line 91
    :cond_5
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_6

    .line 92
    :catch_0
    move-exception v3

    .line 93
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 42
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 96
    :cond_6
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
