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

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 410
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
    iget p1, p1, Lzipkin2/Endpoint$Builder;->port:I

    iput p1, p0, Lzipkin2/Endpoint;->port:I

    return-void
.end method

.method constructor <init>(Lzipkin2/Endpoint$SerializedForm;)V
    .locals 1

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
    iget p1, p1, Lzipkin2/Endpoint$SerializedForm;->port:I

    iput p1, p0, Lzipkin2/Endpoint;->port:I

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)[B
    .locals 0

    .line 28
    invoke-static {p0}, Lzipkin2/Endpoint;->textToNumericFormatV6(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static detectFamily(Ljava/lang/String;)Lzipkin2/Endpoint$IpFamily;
    .locals 9

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x3a

    const/4 v6, 0x1

    if-ge v2, v0, :cond_4

    .line 303
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    if-ne v7, v5, :cond_2

    if-eqz v4, :cond_1

    .line 307
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_1
    move v3, v6

    goto :goto_1

    .line 309
    :cond_2
    invoke-static {v7}, Lzipkin2/Endpoint;->notHex(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 310
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_c

    if-eqz v4, :cond_b

    .line 317
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0, v2, v3}, Lzipkin2/Endpoint;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 319
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_5
    if-ne v0, v6, :cond_6

    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_6

    .line 322
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_6
    const/4 v2, 0x6

    if-ne v0, v2, :cond_a

    .line 324
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    :goto_2
    if-ge v0, v2, :cond_9

    .line 328
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x66

    if-eq v1, v3, :cond_8

    const/16 v3, 0x46

    if-eq v1, v3, :cond_8

    const/16 v3, 0x30

    if-eq v1, v3, :cond_8

    .line 329
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 331
    :cond_9
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->IPv4Embedded:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    .line 325
    :cond_a
    :goto_3
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    .line 333
    :cond_b
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->IPv6:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    :cond_c
    if-eqz v4, :cond_d

    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v1, v0}, Lzipkin2/Endpoint;->isValidIpV4Address(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 335
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->IPv4:Lzipkin2/Endpoint$IpFamily;

    return-object p0

    .line 337
    :cond_d
    sget-object p0, Lzipkin2/Endpoint$IpFamily;->Unknown:Lzipkin2/Endpoint$IpFamily;

    return-object p0
.end method

.method static getIpv4Bytes(Ljava/lang/String;)[B
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 612
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 613
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-eq v4, v1, :cond_3

    add-int/lit8 v5, v4, 0x1

    .line 615
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_2

    :cond_0
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    if-eq v5, v1, :cond_2

    add-int/lit8 v4, v5, 0x1

    .line 622
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 629
    aput-byte v2, v0, v3

    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    :cond_2
    move v4, v5

    :goto_1
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 624
    aput-byte v2, v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v5, v3, 0x1

    int-to-byte v2, v2

    .line 617
    aput-byte v2, v0, v3

    :goto_3
    move v2, v4

    :goto_4
    move v3, v5

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static isValidIpV4Address(Ljava/lang/String;II)Z
    .locals 3

    sub-int v0, p2, p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gt v0, v2, :cond_0

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v2, 0x2e

    .line 495
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, v0}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    .line 496
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-lez p1, :cond_0

    sub-int/2addr v0, v1

    invoke-static {p0, v0, p1}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x2

    .line 497
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr p1, v1

    invoke-static {p0, p1, v0}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/2addr v0, v1

    .line 498
    invoke-static {p0, v0, p2}, Lzipkin2/Endpoint;->isValidIpV4Word(Ljava/lang/CharSequence;II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isValidIpV4Word(Ljava/lang/CharSequence;II)Z
    .locals 6

    sub-int/2addr p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_6

    const/4 v2, 0x3

    if-gt p2, v2, :cond_6

    .line 504
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x39

    if-ne p2, v2, :cond_4

    add-int/lit8 p2, p1, 0x1

    .line 508
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    if-lt p2, v4, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 509
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v4, :cond_3

    const/16 p1, 0x31

    if-gt v3, p1, :cond_1

    if-gt p2, v5, :cond_1

    if-le p0, v5, :cond_2

    :cond_1
    const/16 p1, 0x32

    if-ne v3, p1, :cond_3

    const/16 p1, 0x35

    if-gt p2, p1, :cond_3

    if-le p0, p1, :cond_2

    if-ge p2, p1, :cond_3

    if-gt p0, v5, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-gt v3, v5, :cond_6

    if-eq p2, v1, :cond_5

    add-int/2addr p1, v1

    .line 513
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lzipkin2/Endpoint;->isValidNumericChar(C)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    :goto_0
    return v0
.end method

.method private static isValidNumericChar(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static parseHextet(Ljava/lang/String;)S
    .locals 1

    const/16 v0, 0x10

    .line 482
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    int-to-short p0, p0

    return p0

    .line 484
    :cond_0
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
.end method

.method private static textToNumericFormatV6(Ljava/lang/String;)[B
    .locals 8
    .annotation runtime Lzipkin2/internal/Nullable;
    .end annotation

    const-string v0, ":"

    const/16 v1, 0xa

    .line 419
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 420
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_e

    array-length v0, p0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    move v3, v2

    .line 427
    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_3

    .line 428
    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    if-ltz v0, :cond_1

    return-object v1

    :cond_1
    move v0, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    if-ltz v0, :cond_6

    .line 441
    array-length v4, p0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    .line 442
    aget-object v5, p0, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v0, -0x1

    if-eqz v5, :cond_5

    return-object v1

    :cond_4
    move v5, v0

    .line 445
    :cond_5
    array-length v6, p0

    sub-int/2addr v6, v2

    aget-object v6, p0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    add-int/lit8 v4, v4, -0x1

    if-eqz v4, :cond_7

    return-object v1

    .line 451
    :cond_6
    array-length v5, p0

    move v4, v3

    :cond_7
    add-int v6, v5, v4

    rsub-int/lit8 v6, v6, 0x8

    if-ltz v0, :cond_8

    if-lt v6, v2, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_a

    :cond_9
    return-object v1

    :cond_a
    :goto_1
    const/16 v0, 0x10

    .line 463
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_b

    .line 466
    :try_start_0
    aget-object v7, p0, v2

    invoke-static {v7}, Lzipkin2/Endpoint;->parseHextet(Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    move v2, v3

    :goto_3
    if-ge v2, v6, :cond_c

    .line 469
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    if-lez v4, :cond_d

    .line 472
    array-length v2, p0

    sub-int/2addr v2, v4

    aget-object v2, p0, v2

    invoke-static {v2}, Lzipkin2/Endpoint;->parseHextet(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :catch_0
    return-object v1

    .line 477
    :cond_d
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_e
    :goto_5
    return-object v1
.end method

.method static writeIpV6([B)Ljava/lang/String;
    .locals 14

    .line 352
    sget-object v0, Lzipkin2/Endpoint;->IPV6_TO_STRING:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v6, v1

    move v7, v6

    move v8, v7

    move v4, v2

    move v5, v3

    .line 359
    :goto_0
    array-length v9, p0

    if-ge v4, v9, :cond_4

    .line 360
    aget-byte v9, p0, v4

    if-nez v9, :cond_0

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    if-nez v9, :cond_0

    if-gez v7, :cond_3

    move v7, v4

    goto :goto_1

    :cond_0
    if-ltz v7, :cond_2

    sub-int v5, v4, v7

    if-le v5, v8, :cond_1

    move v8, v5

    move v6, v7

    :cond_1
    move v7, v1

    :cond_2
    move v5, v2

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_5

    const-string p0, "::"

    return-object p0

    :cond_5
    if-ne v6, v1, :cond_6

    if-eq v7, v1, :cond_6

    rsub-int/lit8 v8, v7, 0x10

    move v6, v7

    :cond_6
    move v1, v2

    move v4, v1

    .line 385
    :goto_2
    array-length v5, p0

    if-ge v1, v5, :cond_10

    const/16 v5, 0x3a

    if-ne v1, v6, :cond_8

    add-int/lit8 v7, v4, 0x1

    .line 387
    aput-char v5, v0, v4

    add-int/2addr v1, v8

    .line 389
    array-length v4, p0

    if-ne v1, v4, :cond_7

    add-int/lit8 v4, v7, 0x1

    aput-char v5, v0, v7

    goto :goto_2

    :cond_7
    move v4, v7

    goto :goto_2

    :cond_8
    if-eqz v1, :cond_9

    add-int/lit8 v7, v4, 0x1

    .line 392
    aput-char v5, v0, v4

    move v4, v7

    :cond_9
    add-int/lit8 v5, v1, 0x1

    .line 394
    aget-byte v1, p0, v1

    add-int/lit8 v7, v5, 0x1

    .line 395
    aget-byte v5, p0, v5

    .line 399
    sget-object v9, Lzipkin2/Endpoint;->HEX_DIGITS:[C

    shr-int/lit8 v10, v1, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v9, v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_a

    move v12, v3

    goto :goto_3

    :cond_a
    move v12, v2

    :goto_3
    if-nez v12, :cond_b

    add-int/lit8 v13, v4, 0x1

    .line 400
    aput-char v10, v0, v4

    move v4, v13

    :cond_b
    and-int/lit8 v1, v1, 0xf

    .line 401
    aget-char v1, v9, v1

    if-eqz v12, :cond_c

    if-ne v1, v11, :cond_c

    move v10, v3

    goto :goto_4

    :cond_c
    move v10, v2

    :goto_4
    if-nez v10, :cond_d

    add-int/lit8 v12, v4, 0x1

    .line 402
    aput-char v1, v0, v4

    move v4, v12

    :cond_d
    shr-int/lit8 v1, v5, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 403
    aget-char v1, v9, v1

    if-eqz v10, :cond_e

    if-eq v1, v11, :cond_f

    :cond_e
    add-int/lit8 v10, v4, 0x1

    .line 404
    aput-char v1, v0, v4

    move v4, v10

    :cond_f
    add-int/lit8 v1, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    .line 405
    aget-char v5, v9, v5

    aput-char v5, v0, v4

    move v4, v1

    move v1, v7

    goto :goto_2

    .line 407
    :cond_10
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    check-cast p1, Lzipkin2/Endpoint;

    .line 558
    iget-object v1, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    .line 559
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iget-object v1, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p1, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    .line 560
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_1
    iget-object v1, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    .line 561
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    iget v1, p0, Lzipkin2/Endpoint;->port:I

    iget p1, p1, Lzipkin2/Endpoint;->port:I

    if-ne v1, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 568
    iget-object v0, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 570
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 572
    iget-object v3, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    mul-int/2addr v0, v2

    .line 574
    iget v1, p0, Lzipkin2/Endpoint;->port:I

    xor-int/2addr v0, v1

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

    move-result-object v0

    iget-object v1, p0, Lzipkin2/Endpoint;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipv4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/Endpoint;->ipv4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipv6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lzipkin2/Endpoint;->ipv6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lzipkin2/Endpoint;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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
