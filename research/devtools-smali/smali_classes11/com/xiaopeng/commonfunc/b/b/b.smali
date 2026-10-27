.class public Lcom/xiaopeng/commonfunc/b/b/b;
.super Ljava/lang/Object;
.source "DidModel.java"


# direct methods
.method public static a(IIILjava/lang/String;)Ljava/lang/Object;
    .locals 7
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
    nop

    .line 101
    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/e;->n(II)[B

    move-result-object v0

    .line 102
    nop

    .line 103
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    array-length v5, v0

    if-ge v5, p2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-static {v0}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p0

    goto :goto_1

    .line 104
    :cond_1
    :goto_0
    const-string p2, "DidModel"

    const-string v0, "value read from DID[%d : %d] fail: length not correct"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-static {p2, v0, v5}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    move-object p0, v2

    :goto_1
    :try_start_0
    const-string p1, "~"

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 111
    const-string p2, "("

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 112
    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-virtual {p3, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 114
    add-int/2addr p1, v4

    invoke-virtual {p3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 115
    add-int/2addr p2, v4

    invoke-virtual {p3, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p3, "@"

    .line 116
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 118
    if-eqz p0, :cond_3

    .line 119
    aget-object p3, p2, v3

    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "unsignedlong"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x3

    goto :goto_3

    :sswitch_1
    const-string v1, "ascii"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    move v1, v3

    goto :goto_3

    :sswitch_2
    const-string v1, "enum"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    move v1, v4

    goto :goto_3

    :sswitch_3
    const-string v1, "hex"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v1, 0x4

    goto :goto_3

    :sswitch_4
    const-string v6, "unsigned"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    move v1, v0

    :goto_3
    packed-switch v1, :pswitch_data_0

    goto :goto_5

    .line 137
    :pswitch_0
    add-int/2addr p1, v4

    invoke-static {p0, v5, p1}, Lcom/xiaopeng/commonfunc/utils/d;->e(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 134
    :pswitch_1
    add-int/2addr p1, v4

    invoke-static {p0, v5, p1}, Lcom/xiaopeng/commonfunc/utils/d;->d(Ljava/util/BitSet;II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 135
    goto :goto_4

    .line 131
    :pswitch_2
    add-int/2addr p1, v4

    invoke-static {p0, v5, p1}, Lcom/xiaopeng/commonfunc/utils/d;->c(Ljava/util/BitSet;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 132
    goto :goto_4

    .line 124
    :pswitch_3
    add-int/2addr p1, v4

    invoke-static {p0, v5, p1}, Lcom/xiaopeng/commonfunc/utils/d;->c(Ljava/util/BitSet;II)I

    move-result p0

    .line 125
    aget-object p1, p2, v4

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 126
    array-length p2, p1

    if-ge p0, p2, :cond_3

    .line 127
    aget-object p0, p1, p0

    goto :goto_4

    .line 121
    :pswitch_4
    add-int/2addr p1, v4

    invoke-static {p0, v5, p1}, Lcom/xiaopeng/commonfunc/utils/d;->a(Ljava/util/BitSet;II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 143
    :goto_4
    move-object v2, p0

    :cond_3
    :goto_5
    goto :goto_6

    .line 141
    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 144
    :goto_6
    const-string p0, "DidModel"

    const-string p1, "res [%s]"

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v2, p2, v3

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

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
