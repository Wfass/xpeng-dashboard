.class public final Lzipkin2/Endpoint;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/Endpoint$SerializedForm;,
        Lzipkin2/Endpoint$IpFamily;,
        Lzipkin2/Endpoint$Builder;
    }
.end annotation


# static fields
.field static final HEX_DIGITS:[C

.field private static final IPV6_PART_COUNT:I = 0x8

.field private static final IPV6_TO_STRING:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field final ipv4:Ljava/lang/String;

.field final ipv4Bytes:[B

.field final ipv6:Ljava/lang/String;

.field final ipv6Bytes:[B

.field final port:I

.field final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    new-instance v0, Lzipkin2/Endpoint$1;

    invoke-direct {v0}, Lzipkin2/Endpoint$1;-><init>()V

    sput-object v0, Lzipkin2/Endpoint;->IPV6_TO_STRING:Ljava/lang/ThreadLocal;

    .line 410
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method constructor <init>(Lzipkin2/Endpoint$Builder;)V
    .locals 1
    .param p1, "builder"    # Lzipkin2/Endpoint$Builder;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iget-object v0, p1, Lzipkin2/Endpoint$Builder;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    .line 529
    iget-object v0, p1, Lzipkin2/Endpoint$Builder;->ipv4:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    .line 530
    iget-object v0, p1, Lzipkin2/Endpoint$Builder;->ipv4Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv4Bytes:[B

    .line 531
    iget-object v0, p1, Lzipkin2/Endpoint$Builder;->ipv6:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    .line 532
    iget-object v0, p1, Lzipkin2/Endpoint$Builder;->ipv6Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv6Bytes:[B

    .line 533
    iget v0, p1, Lzipkin2/Endpoint$Builder;->port:I

    iput v0, p0, Lzipkin2/Endpoint;->port:I

    .line 534
    return-void
.end method

.method constructor <init>(Lzipkin2/Endpoint$SerializedForm;)V
    .locals 1
    .param p1, "serializedForm"    # Lzipkin2/Endpoint$SerializedForm;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    iget-object v0, p1, Lzipkin2/Endpoint$SerializedForm;->serviceName:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    .line 538
    iget-object v0, p1, Lzipkin2/Endpoint$SerializedForm;->ipv4:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    .line 539
    iget-object v0, p1, Lzipkin2/Endpoint$SerializedForm;->ipv4Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv4Bytes:[B

    .line 540
    iget-object v0, p1, Lzipkin2/Endpoint$SerializedForm;->ipv6:Ljava/lang/String;

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    .line 541
    iget-object v0, p1, Lzipkin2/Endpoint$SerializedForm;->ipv6Bytes:[B

    iput-object v0, p0, Lzipkin2/Endpoint;->ipv6Bytes:[B

    .line 542
    iget v0, p1, Lzipkin2/Endpoint$SerializedForm;->port:I

    iput v0, p0, Lzipkin2/Endpoint;->port:I

    .line 543
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 28
    invoke-static {p0}, Lzipkin2/Endpoint;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static detectFamily(Ljava/lang/String;)Lzipkin2/Endpoint$IpFamily;
    .locals 7
    .param p0, "ipString"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "hasColon":Z
    const/4 v1, 0x0

    .line 302
    .local v1, "hasDot":Z
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    const/16 v4, 0x3a

    if-ge v2, v3, :cond_4

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 304
    .local v5, "c":C
    const/16 v6, 0x2e

    if-ne v5, v6, :cond_0

    .line 305
    const/4 v1, 0x1

    goto :goto_1

    .line 306
    :cond_0
    if-ne v5, v4, :cond_2

    .line 307
    if-eqz v1, :cond_1

    sget-object v4, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v4

    .line 308
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {v5}, Lzipkin2/Endpoint;->notHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    sget-object v4, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v4

    .line 302
    .end local v5    # "c":C
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_4
    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 316
    if-eqz v1, :cond_b

    .line 317
    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 318
    .local v3, "lastColonIndex":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {p0, v5, v6}, Lzipkin2/Endpoint;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_5

    .line 319
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 321
    :cond_5
    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_6

    .line 322
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 324
    :cond_6
    const/4 v6, 0x6

    if-ne v3, v6, :cond_a

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_a

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_7

    goto :goto_3

    .line 327
    :cond_7
    const/4 v2, 0x2

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v6, :cond_9

    .line 328
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 329
    .local v4, "c":C
    const/16 v5, 0x66

    if-eq v4, v5, :cond_8

    const/16 v5, 0x46

    if-eq v4, v5, :cond_8

    const/16 v5, 0x30

    if-eq v4, v5, :cond_8

    sget-object v5, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v5

    .line 327
    .end local v4    # "c":C
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 331
    .end local v2    # "i":I
    :cond_9
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 325
    :cond_a
    :goto_3
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 333
    .end local v3    # "lastColonIndex":I
    :cond_b
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv6:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 334
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lzipkin2/Endpoint;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 335
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->IPv4:Lzipkin2/Endpoint$IpFamily;

    return-object v2

    .line 337
    :cond_d
    sget-object v2, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object v2
.end method

.method static getIpv4Bytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "ipv4"    # Ljava/lang/String;

    .line 610
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 611
    .local v0, "result":[B
    const/4 v1, 0x0

    .line 612
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 613
    add-int/lit8 v4, v2, 0x1

    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 614
    .local v2, "ch":C
    add-int/lit8 v5, v2, -0x30

    .line 615
    .local v5, "octet":I
    if-eq v4, v3, :cond_3

    add-int/lit8 v6, v4, 0x1

    .local v6, "i":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .end local v4    # "i":I
    move v2, v4

    const/16 v7, 0x2e

    if-ne v4, v7, :cond_0

    .line 617
    move v4, v6

    goto :goto_2

    .line 621
    :cond_0
    mul-int/lit8 v4, v5, 0xa

    add-int/lit8 v8, v2, -0x30

    add-int/2addr v4, v8

    .line 622
    .end local v5    # "octet":I
    .local v4, "octet":I
    if-eq v6, v3, :cond_2

    add-int/lit8 v5, v6, 0x1

    .local v5, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .end local v6    # "i":I
    move v2, v6

    if-ne v6, v7, :cond_1

    goto :goto_1

    .line 628
    :cond_1
    mul-int/lit8 v6, v4, 0xa

    add-int/lit8 v7, v2, -0x30

    add-int/2addr v6, v7

    .line 629
    .end local v4    # "octet":I
    .local v6, "octet":I
    add-int/lit8 v4, v1, 0x1

    .local v4, "pos":I
    int-to-byte v7, v6

    aput-byte v7, v0, v1

    .line 630
    .end local v1    # "pos":I
    add-int/lit8 v2, v5, 0x1

    .line 631
    .end local v5    # "i":I
    .end local v6    # "octet":I
    .local v2, "i":I
    nop

    .line 612
    move v1, v4

    goto :goto_0

    .line 624
    .restart local v1    # "pos":I
    .local v2, "ch":C
    .local v4, "octet":I
    .local v6, "i":I
    :cond_2
    move v5, v6

    .end local v6    # "i":I
    .restart local v5    # "i":I
    :goto_1
    add-int/lit8 v6, v1, 0x1

    .local v6, "pos":I
    int-to-byte v7, v4

    aput-byte v7, v0, v1

    .line 625
    .end local v1    # "pos":I
    nop

    .line 612
    move v2, v5

    goto :goto_3

    .line 617
    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    .local v4, "i":I
    .local v5, "octet":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v1, 0x1

    .restart local v6    # "pos":I
    int-to-byte v7, v5

    aput-byte v7, v0, v1

    .line 618
    .end local v1    # "pos":I
    nop

    .line 612
    move v2, v4

    .end local v4    # "i":I
    .end local v5    # "octet":I
    .end local v6    # "pos":I
    .restart local v1    # "pos":I
    .local v2, "i":I
    :goto_3
    move v1, v6

    goto :goto_0

    .line 632
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_4
    return-object v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 4
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "toExcluded"    # I

    .line 492
    sub-int v0, p2, p1

    .line 494
    .local v0, "len":I
    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 495
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    .local v3, "i":I
    if-lez v1, :cond_0

    invoke-static {p0, p1, v3}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 496
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v3, v1

    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v3}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, 0x2

    move p1, v1

    .line 497
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v2, v1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v1, v2}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 498
    invoke-static {p0, v1, p2}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    const/4 v1, 0x1

    goto :goto_0

    .line 498
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 494
    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 9
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "from"    # I
    .param p2, "toExclusive"    # I

    .line 502
    sub-int v0, p2, p1

    .line 504
    .local v0, "len":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    const/4 v3, 0x3

    if-gt v0, v3, :cond_7

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c0":C
    const/16 v6, 0x30

    if-ge v4, v6, :cond_0

    .end local v5    # "c0":C
    goto :goto_1

    .line 505
    .restart local v5    # "c0":C
    :cond_0
    nop

    .line 507
    const/16 v4, 0x39

    if-ne v0, v3, :cond_4

    .line 508
    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v7, v3

    .local v7, "c1":C
    if-lt v3, v6, :cond_3

    add-int/lit8 v3, p1, 0x2

    .line 509
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    move v8, v3

    .local v8, "c2":C
    if-lt v3, v6, :cond_3

    const/16 v3, 0x31

    if-gt v5, v3, :cond_1

    if-gt v7, v4, :cond_1

    if-le v8, v4, :cond_2

    :cond_1
    const/16 v3, 0x32

    if-ne v5, v3, :cond_3

    const/16 v3, 0x35

    if-gt v7, v3, :cond_3

    if-le v8, v3, :cond_2

    if-ge v7, v3, :cond_3

    if-gt v8, v4, :cond_3

    .line 508
    :cond_2
    move v1, v2

    goto :goto_0

    .line 509
    .end local v8    # "c2":C
    :cond_3
    nop

    .line 508
    :goto_0
    return v1

    .line 513
    .end local v7    # "c1":C
    :cond_4
    if-gt v5, v4, :cond_6

    if-eq v0, v2, :cond_5

    add-int/lit8 v3, p1, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lzipkin2/Endpoint;->isValidNumericChar(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    nop

    :cond_6
    return v1

    .line 505
    .end local v5    # "c0":C
    :cond_7
    :goto_1
    return v1
.end method

.method private static isValidNumericChar(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 517
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static newBuilder()Lzipkin2/Endpoint$Builder;
    .locals 1

    .line 104
    new-instance v0, Lzipkin2/Endpoint$Builder;

    invoke-direct {v0}, Lzipkin2/Endpoint$Builder;-><init>()V

    return-object v0
.end method

.method private static notHex(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 341
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_3

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 2
    .param p0, "ipPart"    # Ljava/lang/String;

    .line 482
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 483
    .local v0, "hextet":I
    const v1, 0xffff

    if-gt v0, v1, :cond_0

    .line 486
    int-to-short v1, v0

    return v1

    .line 484
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 10
    .param p0, "ipString"    # Ljava/lang/String;
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 419
    const-string v0, ":"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_d

    array-length v1, v0

    const/16 v3, 0x9

    if-le v1, v3, :cond_0

    goto/16 :goto_6

    .line 426
    :cond_0
    const/4 v1, -0x1

    .line 427
    .local v1, "skipIndex":I
    const/4 v3, 0x1

    move v4, v1

    move v1, v3

    .local v1, "i":I
    .local v4, "skipIndex":I
    :goto_0
    array-length v5, v0

    sub-int/2addr v5, v3

    if-ge v1, v5, :cond_3

    .line 428
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 429
    if-ltz v4, :cond_1

    .line 430
    return-object v2

    .line 432
    :cond_1
    move v4, v1

    .line 427
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 438
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    if-ltz v4, :cond_5

    .line 440
    move v5, v4

    .line 441
    .local v5, "partsHi":I
    array-length v6, v0

    sub-int/2addr v6, v4

    sub-int/2addr v6, v3

    .line 442
    .local v6, "partsLo":I
    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    if-eqz v5, :cond_4

    .line 443
    return-object v2

    .line 445
    :cond_4
    array-length v7, v0

    sub-int/2addr v7, v3

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    if-eqz v6, :cond_6

    .line 446
    return-object v2

    .line 451
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    :cond_5
    array-length v5, v0

    .line 452
    .restart local v5    # "partsHi":I
    move v6, v1

    .line 457
    .restart local v6    # "partsLo":I
    :cond_6
    add-int v7, v5, v6

    rsub-int/lit8 v7, v7, 0x8

    .line 458
    .local v7, "partsSkipped":I
    if-ltz v4, :cond_7

    if-lt v7, v3, :cond_8

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    .line 459
    :cond_8
    return-object v2

    .line 463
    :cond_9
    :goto_1
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 465
    .local v3, "rawBytes":Ljava/nio/ByteBuffer;
    move v8, v1

    .local v8, "i":I
    :goto_2
    if-ge v8, v5, :cond_a

    .line 466
    :try_start_0
    aget-object v9, v0, v8

    invoke-static {v9}, Lzipkin2/Endpoint;->parseHextet(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 465
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 474
    .end local v8    # "i":I
    :catch_0
    move-exception v1

    goto :goto_5

    .line 468
    :cond_a
    move v8, v1

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v7, :cond_b

    .line 469
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 468
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 471
    .end local v8    # "i":I
    :cond_b
    move v1, v6

    .restart local v1    # "i":I
    :goto_4
    if-lez v1, :cond_c

    .line 472
    array-length v8, v0

    sub-int/2addr v8, v1

    aget-object v8, v0, v8

    invoke-static {v8}, Lzipkin2/Endpoint;->parseHextet(Ljava/lang/String;)S

    move-result v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 474
    .end local v1    # "i":I
    :goto_5
    nop

    .line 475
    .local v1, "ex":Ljava/lang/NumberFormatException;
    return-object v2

    .line 476
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    :cond_c
    nop

    .line 477
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 421
    .end local v3    # "rawBytes":Ljava/nio/ByteBuffer;
    .end local v4    # "skipIndex":I
    .end local v5    # "partsHi":I
    .end local v6    # "partsLo":I
    .end local v7    # "partsSkipped":I
    :cond_d
    :goto_6
    return-object v2
.end method

.method static writeIpV6([B)Ljava/lang/String;
    .locals 17
    .param p0, "ipv6"    # [B

    .line 351
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 352
    .local v1, "pos":I
    sget-object v2, Lzipkin2/Endpoint;->IPV6_TO_STRING:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 355
    .local v2, "buf":[C
    const/4 v3, -0x1

    .line 356
    .local v3, "zeroCompressionIndex":I
    const/4 v4, -0x1

    .line 357
    .local v4, "zeroCompressionLength":I
    const/4 v5, -0x1

    .line 358
    .local v5, "zeroIndex":I
    const/4 v6, 0x1

    .line 359
    .local v6, "allZeros":Z
    const/4 v7, 0x0

    move v8, v4

    move v4, v3

    move v3, v7

    .local v3, "i":I
    .local v4, "zeroCompressionIndex":I
    .local v8, "zeroCompressionLength":I
    :goto_0
    array-length v9, v0

    if-ge v3, v9, :cond_3

    .line 360
    aget-byte v9, v0, v3

    if-nez v9, :cond_0

    add-int/lit8 v9, v3, 0x1

    aget-byte v9, v0, v9

    if-nez v9, :cond_0

    .line 361
    if-gez v5, :cond_2

    move v5, v3

    goto :goto_1

    .line 364
    :cond_0
    const/4 v6, 0x0

    .line 365
    if-ltz v5, :cond_2

    .line 366
    sub-int v9, v3, v5

    .line 367
    .local v9, "zeroLength":I
    if-le v9, v8, :cond_1

    .line 368
    move v4, v5

    .line 369
    move v8, v9

    .line 371
    :cond_1
    const/4 v5, -0x1

    .line 359
    .end local v9    # "zeroLength":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 376
    .end local v3    # "i":I
    :cond_3
    if-eqz v6, :cond_4

    const-string v3, "::"

    return-object v3

    .line 379
    :cond_4
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    if-eq v5, v3, :cond_5

    .line 380
    move v4, v5

    .line 381
    rsub-int/lit8 v8, v5, 0x10

    .line 384
    :cond_5
    move v3, v1

    move v1, v7

    .line 385
    .local v1, "i":I
    .local v3, "pos":I
    :goto_2
    array-length v9, v0

    if-ge v1, v9, :cond_f

    .line 386
    const/16 v9, 0x3a

    if-ne v1, v4, :cond_7

    .line 387
    add-int/lit8 v10, v3, 0x1

    .local v10, "pos":I
    aput-char v9, v2, v3

    .line 388
    .end local v3    # "pos":I
    add-int/2addr v1, v8

    .line 389
    array-length v3, v0

    if-ne v1, v3, :cond_6

    add-int/lit8 v3, v10, 0x1

    .restart local v3    # "pos":I
    aput-char v9, v2, v10

    .end local v10    # "pos":I
    goto :goto_2

    .line 384
    .end local v3    # "pos":I
    .restart local v10    # "pos":I
    :cond_6
    move v3, v10

    goto :goto_2

    .line 392
    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    :cond_7
    if-eqz v1, :cond_8

    add-int/lit8 v10, v3, 0x1

    .restart local v10    # "pos":I
    aput-char v9, v2, v3

    .line 394
    .end local v3    # "pos":I
    move v3, v10

    .end local v10    # "pos":I
    .restart local v3    # "pos":I
    :cond_8
    add-int/lit8 v9, v1, 0x1

    .local v9, "i":I
    aget-byte v1, v0, v1

    .line 395
    .local v1, "high":B
    add-int/lit8 v10, v9, 0x1

    .local v10, "i":I
    aget-byte v9, v0, v9

    .line 399
    .local v9, "low":B
    sget-object v11, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    shr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    .line 400
    .local v11, "val":C
    const/16 v12, 0x30

    const/4 v13, 0x1

    if-ne v11, v12, :cond_9

    move v14, v13

    goto :goto_3

    :cond_9
    move v14, v7

    :goto_3
    move v15, v14

    .local v15, "leadingZero":Z
    if-nez v14, :cond_a

    add-int/lit8 v14, v3, 0x1

    .local v14, "pos":I
    aput-char v11, v2, v3

    .end local v3    # "pos":I
    goto :goto_4

    .line 401
    .end local v14    # "pos":I
    .restart local v3    # "pos":I
    :cond_a
    move v14, v3

    .end local v3    # "pos":I
    .restart local v14    # "pos":I
    :goto_4
    sget-object v3, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    and-int/lit8 v16, v1, 0xf

    aget-char v3, v3, v16

    .line 402
    .end local v11    # "val":C
    .local v3, "val":C
    if-eqz v15, :cond_b

    if-ne v3, v12, :cond_b

    goto :goto_5

    :cond_b
    move v13, v7

    :goto_5
    move v11, v13

    .end local v15    # "leadingZero":Z
    .local v11, "leadingZero":Z
    if-nez v13, :cond_c

    add-int/lit8 v13, v14, 0x1

    .local v13, "pos":I
    aput-char v3, v2, v14

    .end local v14    # "pos":I
    goto :goto_6

    .line 403
    .end local v13    # "pos":I
    .restart local v14    # "pos":I
    :cond_c
    move v13, v14

    .end local v14    # "pos":I
    .restart local v13    # "pos":I
    :goto_6
    sget-object v14, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    shr-int/lit8 v15, v9, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v3, v14, v15

    .line 404
    if-eqz v11, :cond_d

    if-eq v3, v12, :cond_e

    :cond_d
    add-int/lit8 v12, v13, 0x1

    .local v12, "pos":I
    aput-char v3, v2, v13

    .line 405
    .end local v13    # "pos":I
    move v13, v12

    .end local v12    # "pos":I
    .restart local v13    # "pos":I
    :cond_e
    add-int/lit8 v12, v13, 0x1

    .restart local v12    # "pos":I
    sget-object v14, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    and-int/lit8 v15, v9, 0xf

    aget-char v14, v14, v15

    aput-char v14, v2, v13

    .line 406
    .end local v1    # "high":B
    .end local v3    # "val":C
    .end local v9    # "low":B
    .end local v11    # "leadingZero":Z
    .end local v13    # "pos":I
    nop

    .line 384
    move v1, v10

    move v3, v12

    goto :goto_2

    .line 407
    .end local v10    # "i":I
    .end local v12    # "pos":I
    .local v1, "i":I
    .local v3, "pos":I
    :cond_f
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v7, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 555
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 556
    :cond_0
    instance-of v1, p1, Lzipkin2/Endpoint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 557
    :cond_1
    move-object v1, p1

    check-cast v1, Lzipkin2/Endpoint;

    .line 558
    .local v1, "that":Lzipkin2/Endpoint;
    iget-object v3, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_0
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    .line 561
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    iget v3, p0, Lzipkin2/Endpoint;->port:I

    iget v4, v1, Lzipkin2/Endpoint;->port:I

    if-ne v3, v4, :cond_5

    goto :goto_3

    .line 558
    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 566
    const/4 v0, 0x1

    .line 567
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 568
    iget-object v2, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    .line 569
    mul-int/2addr v0, v1

    .line 570
    iget-object v2, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    .line 571
    mul-int/2addr v0, v1

    .line 572
    iget-object v2, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    .line 573
    mul-int/2addr v0, v1

    .line 574
    iget v1, p0, Lzipkin2/Endpoint;->port:I

    xor-int/2addr v0, v1

    .line 575
    return v0
.end method

.method public ipv4()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    return-object v0
.end method

.method public ipv4Bytes()[B
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 57
    iget-object v0, p0, Lzipkin2/Endpoint;->ipv4Bytes:[B

    return-object v0
.end method

.method public ipv6()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    return-object v0
.end method

.method public ipv6Bytes()[B
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 78
    iget-object v0, p0, Lzipkin2/Endpoint;->ipv6Bytes:[B

    return-object v0
.end method

.method public port()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 87
    iget v0, p0, Lzipkin2/Endpoint;->port:I

    if-eqz v0, :cond_0

    iget v0, p0, Lzipkin2/Endpoint;->port:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public portAsInt()I
    .locals 1

    .line 96
    iget v0, p0, Lzipkin2/Endpoint;->port:I

    return v0
.end method

.method public serviceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    .line 39
    iget-object v0, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public toBuilder()Lzipkin2/Endpoint$Builder;
    .locals 1

    .line 100
    new-instance v0, Lzipkin2/Endpoint$Builder;

    invoke-direct {v0, p0}, Lzipkin2/Endpoint$Builder;-><init>(Lzipkin2/Endpoint;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Endpoint{serviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ipv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lzipkin2/Endpoint;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 580
    new-instance v0, Lzipkin2/Endpoint$SerializedForm;

    invoke-direct {v0, p0}, Lzipkin2/Endpoint$SerializedForm;-><init>(Lzipkin2/Endpoint;)V

    return-object v0
.end method
