.class final Lcom/google/zxing/qrcode/a/d;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# direct methods
.method private static a(Lcom/google/zxing/qrcode/a/b;Z)I
    .locals 11

    .line 191
    nop

    .line 192
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result v0

    .line 193
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result v1

    .line 194
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->cB()[[B

    move-result-object p0

    .line 195
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_7

    .line 196
    nop

    .line 197
    const/4 v5, -0x1

    .line 198
    move v6, v4

    move v7, v5

    move v4, v2

    move v5, v4

    :goto_3
    const/4 v8, 0x3

    const/4 v9, 0x5

    if-ge v4, v1, :cond_5

    .line 199
    if-eqz p1, :cond_2

    aget-object v10, p0, v3

    aget-byte v10, v10, v4

    goto :goto_4

    :cond_2
    aget-object v10, p0, v4

    aget-byte v10, v10, v3

    .line 200
    :goto_4
    if-ne v10, v7, :cond_3

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 203
    :cond_3
    if-lt v5, v9, :cond_4

    .line 204
    add-int/lit8 v5, v5, -0x5

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 206
    :cond_4
    nop

    .line 207
    nop

    .line 198
    const/4 v5, 0x1

    move v7, v10

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 210
    :cond_5
    if-lt v5, v9, :cond_6

    .line 211
    add-int/lit8 v5, v5, -0x5

    add-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 195
    :cond_6
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 214
    :cond_7
    return v4
.end method

.method private static a([[BIII)Z
    .locals 2

    .line 115
    :goto_0
    const/4 v0, 0x1

    if-ge p2, p3, :cond_1

    .line 116
    if-ltz p2, :cond_0

    array-length v1, p0

    if-ge p2, v1, :cond_0

    aget-object v1, p0, p2

    aget-byte v1, v1, p1

    if-ne v1, v0, :cond_0

    .line 117
    const/4 p0, 0x0

    return p0

    .line 115
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    return v0
.end method

.method static b(Lcom/google/zxing/qrcode/a/b;)I
    .locals 2

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/a/d;->a(Lcom/google/zxing/qrcode/a/b;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/zxing/qrcode/a/d;->a(Lcom/google/zxing/qrcode/a/b;Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static b([BII)Z
    .locals 2

    .line 106
    :goto_0
    const/4 v0, 0x1

    if-ge p1, p2, :cond_1

    .line 107
    if-ltz p1, :cond_0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget-byte v1, p0, p1

    if-ne v1, v0, :cond_0

    .line 108
    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    return v0
.end method

.method static c(Lcom/google/zxing/qrcode/a/b;)I
    .locals 10

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->cB()[[B

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result v1

    .line 53
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result p0

    .line 54
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    add-int/lit8 v5, p0, -0x1

    if-ge v3, v5, :cond_2

    .line 55
    move v5, v4

    move v4, v2

    :goto_1
    add-int/lit8 v6, v1, -0x1

    if-ge v4, v6, :cond_1

    .line 56
    aget-object v6, v0, v3

    aget-byte v6, v6, v4

    .line 57
    aget-object v7, v0, v3

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    if-ne v6, v7, :cond_0

    add-int/lit8 v7, v3, 0x1

    aget-object v9, v0, v7

    aget-byte v4, v9, v4

    if-ne v6, v4, :cond_0

    aget-object v4, v0, v7

    aget-byte v4, v4, v8

    if-ne v6, v4, :cond_0

    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 55
    :cond_0
    move v4, v8

    goto :goto_1

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 62
    :cond_2
    const/4 p0, 0x3

    mul-int/2addr p0, v4

    return p0
.end method

.method static d(Lcom/google/zxing/qrcode/a/b;)I
    .locals 10

    .line 71
    nop

    .line 72
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->cB()[[B

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result v1

    .line 74
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result p0

    .line 75
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p0, :cond_5

    .line 76
    move v5, v4

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_4

    .line 77
    aget-object v6, v0, v3

    .line 78
    add-int/lit8 v7, v4, 0x6

    const/4 v8, 0x1

    if-ge v7, v1, :cond_1

    aget-byte v9, v6, v4

    if-ne v9, v8, :cond_1

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, v6, v9

    if-nez v9, :cond_1

    add-int/lit8 v9, v4, 0x2

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_1

    add-int/lit8 v9, v4, 0x3

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_1

    add-int/lit8 v9, v4, 0x4

    aget-byte v9, v6, v9

    if-ne v9, v8, :cond_1

    add-int/lit8 v9, v4, 0x5

    aget-byte v9, v6, v9

    if-nez v9, :cond_1

    aget-byte v7, v6, v7

    if-ne v7, v8, :cond_1

    add-int/lit8 v7, v4, -0x4

    .line 86
    invoke-static {v6, v7, v4}, Lcom/google/zxing/qrcode/a/d;->b([BII)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v7, v4, 0x7

    add-int/lit8 v9, v4, 0xb

    invoke-static {v6, v7, v9}, Lcom/google/zxing/qrcode/a/d;->b([BII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 87
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 89
    :cond_1
    add-int/lit8 v6, v3, 0x6

    if-ge v6, p0, :cond_3

    aget-object v7, v0, v3

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-ne v7, v8, :cond_3

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v0, v7

    aget-byte v7, v7, v4

    if-nez v7, :cond_3

    aget-object v6, v0, v6

    aget-byte v6, v6, v4

    if-ne v6, v8, :cond_3

    add-int/lit8 v6, v3, -0x4

    .line 97
    invoke-static {v0, v4, v6, v3}, Lcom/google/zxing/qrcode/a/d;->a([[BIII)Z

    move-result v6

    if-nez v6, :cond_2

    add-int/lit8 v6, v3, 0x7

    add-int/lit8 v7, v3, 0xb

    invoke-static {v0, v4, v6, v7}, Lcom/google/zxing/qrcode/a/d;->a([[BIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 98
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 76
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 75
    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto/16 :goto_0

    .line 102
    :cond_5
    mul-int/lit8 v4, v4, 0x28

    return v4
.end method

.method static d(III)Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    .line 181
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid mask pattern: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 177
    :pswitch_0
    mul-int p0, p2, p1

    .line 178
    rem-int/lit8 p0, p0, 0x3

    add-int/2addr p2, p1

    and-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    and-int/2addr p0, v0

    .line 179
    goto :goto_0

    .line 173
    :pswitch_1
    mul-int/2addr p2, p1

    .line 174
    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    and-int/2addr p0, v0

    .line 175
    goto :goto_0

    .line 169
    :pswitch_2
    mul-int/2addr p2, p1

    .line 170
    and-int/lit8 p0, p2, 0x1

    rem-int/lit8 p2, p2, 0x3

    add-int/2addr p0, p2

    .line 171
    goto :goto_0

    .line 166
    :pswitch_3
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p2, p1

    and-int/lit8 p0, p2, 0x1

    .line 167
    goto :goto_0

    .line 163
    :pswitch_4
    add-int/2addr p2, p1

    rem-int/lit8 p0, p2, 0x3

    .line 164
    goto :goto_0

    .line 160
    :pswitch_5
    rem-int/lit8 p0, p1, 0x3

    .line 161
    goto :goto_0

    .line 157
    :pswitch_6
    and-int/lit8 p0, p2, 0x1

    .line 158
    goto :goto_0

    .line 154
    :pswitch_7
    add-int/2addr p2, p1

    and-int/lit8 p0, p2, 0x1

    .line 155
    nop

    .line 183
    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return v0

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

.method static e(Lcom/google/zxing/qrcode/a/b;)I
    .locals 10

    .line 128
    nop

    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->cB()[[B

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result v2

    .line 132
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_2

    .line 133
    aget-object v6, v0, v4

    .line 134
    move v7, v5

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    .line 135
    aget-byte v8, v6, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 136
    add-int/lit8 v7, v7, 0x1

    .line 134
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/a/b;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    .line 141
    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0xa

    div-int/2addr p0, v0

    .line 142
    mul-int/lit8 p0, p0, 0xa

    return p0
.end method
