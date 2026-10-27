.class public Lnet/lingala/zip4j/d/f;
.super Ljava/lang/Object;
.source "Zip4jUtil.java"


# direct methods
.method public static M(J)J
    .locals 5

    .line 58
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/32 v1, 0x210000

    if-gez v0, :cond_0

    .line 59
    return-wide v1

    .line 61
    :cond_0
    invoke-static {p0, p1}, Lnet/lingala/zip4j/d/f;->N(J)J

    move-result-wide v3

    .line 62
    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d0

    rem-long/2addr p0, v0

    const/16 v0, 0x20

    shl-long/2addr p0, v0

    add-long v1, v3, p0

    nop

    :cond_1
    return-wide v1
.end method

.method private static N(J)J
    .locals 4

    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 71
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 73
    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_0

    .line 74
    const-wide/32 p0, 0x210000

    return-wide p0

    .line 76
    :cond_0
    sub-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x19

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr p1, v1

    .line 77
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p1, v2

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    shl-int/lit8 v2, v3, 0xb

    or-int/2addr p1, v2

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    shl-int/lit8 v1, v2, 0x5

    or-int/2addr p1, v1

    const/16 v1, 0xd

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    shr-int/lit8 p0, v0, 0x1

    or-int/2addr p0, p1

    int-to-long p0, p0

    .line 76
    return-wide p0
.end method

.method public static b([C)[B
    .locals 3

    .line 102
    :try_start_0
    sget-object v0, Lnet/lingala/zip4j/d/d;->apQ:Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    new-array v1, v1, [B

    .line 104
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    array-length v0, p0

    new-array v0, v0, [B

    .line 108
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 109
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v0
.end method

.method public static fA(Ljava/lang/String;)Z
    .locals 0

    .line 36
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
