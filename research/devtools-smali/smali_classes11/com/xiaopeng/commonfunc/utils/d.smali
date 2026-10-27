.class public Lcom/xiaopeng/commonfunc/utils/d;
.super Ljava/lang/Object;
.source "DataHelp.java"


# static fields
.field public static final pa:Ljava/nio/charset/Charset;

.field public static final pb:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/d;->pa:Ljava/nio/charset/Charset;

    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/commonfunc/utils/d;->pb:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xc
        0x10
        0x14
        0x18
        0x20
        0x30
        0x40
    .end array-data
.end method

.method public static a(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/a/a;
    .locals 3

    .line 332
    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object p0

    .line 333
    const-string v0, "CommonUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response data. response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance p0, Lcom/xiaopeng/lib/http/a/a;

    invoke-direct {p0}, Lcom/xiaopeng/lib/http/a/a;-><init>()V

    .line 337
    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/http/a/a;->setCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 340
    :try_start_1
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/lib/http/a/a;->setData(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 343
    goto :goto_0

    .line 341
    :catch_0
    move-exception v1

    .line 342
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 345
    :goto_0
    :try_start_3
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/http/a/a;->dD(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    goto :goto_1

    .line 346
    :catch_1
    move-exception v0

    .line 347
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 352
    :goto_1
    goto :goto_2

    .line 349
    :catch_2
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    const/4 p0, 0x0

    .line 354
    :goto_2
    return-object p0
.end method

.method private static a(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 2

    .line 507
    if-nez p1, :cond_0

    .line 508
    const/4 p0, 0x0

    return-object p0

    .line 510
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 511
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->length()I

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object p1
.end method

.method public static a(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 1

    .line 515
    sget-object v0, Lcom/xiaopeng/commonfunc/utils/d;->pa:Ljava/nio/charset/Charset;

    invoke-static {p0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/d;->b(Ljava/util/BitSet;II)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaopeng/commonfunc/utils/d;->a(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 4

    .line 239
    const-string v0, "0123456789ABCDEF"

    .line 240
    if-nez p0, :cond_0

    .line 241
    const-string p0, ""

    return-object p0

    .line 243
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 245
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 246
    aget-byte v3, p0, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 247
    if-eqz p1, :cond_1

    .line 248
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(B)I
    .locals 0

    .line 76
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static b(Ljava/util/BitSet;II)[B
    .locals 4

    .line 519
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 520
    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    .line 521
    sub-int v2, v1, p1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x8

    invoke-static {p0, v1, v3}, Lcom/xiaopeng/commonfunc/utils/d;->c(Ljava/util/BitSet;II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 520
    move v1, v3

    goto :goto_0

    .line 523
    :cond_0
    return-object v0
.end method

.method public static bH(I)B
    .locals 0

    .line 55
    int-to-byte p0, p0

    return p0
.end method

.method public static bI(I)Ljava/lang/String;
    .locals 6

    .line 368
    const-string v0, "defkSTUB345opqCDElxyzA26cQRF8IYZ0mJabKLMuPvwNOGHVWXnrst179"

    .line 369
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 370
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 371
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 372
    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_0

    .line 373
    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 374
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/util/BitSet;II)I
    .locals 7

    .line 527
    nop

    .line 528
    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 529
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 530
    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int v5, v0, p1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 528
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    return v1
.end method

.method public static c([BII)[B
    .locals 2

    .line 199
    new-array v0, p2, [B

    .line 200
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 201
    return-object v0
.end method

.method public static d(Ljava/util/BitSet;II)J
    .locals 7

    .line 537
    nop

    .line 538
    const-wide/16 v0, 0x0

    move-wide v1, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    .line 539
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    long-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int v5, v0, p1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    double-to-long v1, v1

    .line 538
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 543
    :cond_1
    return-wide v1
.end method

.method public static e(Ljava/util/BitSet;II)Ljava/lang/String;
    .locals 0

    .line 547
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/commonfunc/utils/d;->b(Ljava/util/BitSet;II)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/d;->a([BZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t([B)I
    .locals 2

    .line 111
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    .line 113
    return p0
.end method
