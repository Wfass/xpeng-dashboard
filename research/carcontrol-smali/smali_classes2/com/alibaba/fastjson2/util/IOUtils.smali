.class public Lcom/alibaba/fastjson2/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ALSE:I

.field public static final ALSE_64:J

.field public static final DIGITS_K_32:[I

.field public static final DIGITS_K_64:[J

.field public static final DOT_X0:J

.field private static final MIN_INT_BYTES:[B

.field private static final MIN_INT_CHARS:[C

.field private static final MIN_LONG:[B

.field public static final NULL_32:I

.field public static final NULL_64:J

.field public static final PACKED_DIGITS:[S

.field public static final PACKED_DIGITS_UTF16:[I

.field static final POWER_TEN:[J

.field public static final TRUE:I

.field public static final TRUE_64:J

.field static final sizeTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 12
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_0

    const v0, 0x6e756c6c

    goto :goto_0

    :cond_0
    const v0, 0x6c6c756e

    :goto_0
    sput v0, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_32:I

    .line 13
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_1

    const-wide v0, 0x6e0075006c006cL

    goto :goto_1

    :cond_1
    const-wide v0, 0x6c006c0075006eL

    :goto_1
    sput-wide v0, Lcom/alibaba/fastjson2/util/IOUtils;->NULL_64:J

    .line 15
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_2

    const v0, 0x74727565

    goto :goto_2

    :cond_2
    const v0, 0x65757274

    :goto_2
    sput v0, Lcom/alibaba/fastjson2/util/IOUtils;->TRUE:I

    .line 16
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_3

    const-wide v0, 0x74007200750065L

    goto :goto_3

    :cond_3
    const-wide v0, 0x65007500720074L

    :goto_3
    sput-wide v0, Lcom/alibaba/fastjson2/util/IOUtils;->TRUE_64:J

    .line 18
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_4

    const v0, 0x616c7365

    goto :goto_4

    :cond_4
    const v0, 0x65736c61

    :goto_4
    sput v0, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE:I

    .line 19
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_5

    const-wide v0, 0x61006c00730065L

    goto :goto_5

    :cond_5
    const-wide v0, 0x650073006c0061L

    :goto_5
    sput-wide v0, Lcom/alibaba/fastjson2/util/IOUtils;->ALSE_64:J

    .line 20
    sget-boolean v0, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v0, :cond_6

    const-wide/16 v0, 0x2e00

    goto :goto_6

    :cond_6
    const-wide/16 v0, 0x2e

    :goto_6
    sput-wide v0, Lcom/alibaba/fastjson2/util/IOUtils;->DOT_X0:J

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 22
    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->sizeTable:[I

    const/16 v1, 0x3e8

    new-array v2, v1, [I

    .line 24
    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    new-array v2, v1, [J

    .line 25
    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    const-string v2, "-2147483648"

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    sput-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_BYTES:[B

    .line 28
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_CHARS:[C

    const-string v2, "-9223372036854775808"

    .line 29
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    const/16 v2, 0x12

    new-array v2, v2, [J

    .line 34
    fill-array-data v2, :array_1

    sput-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->POWER_TEN:[J

    const/16 v2, 0x64

    new-array v3, v2, [S

    .line 56
    fill-array-data v3, :array_2

    new-array v4, v2, [I

    .line 68
    fill-array-data v4, :array_3

    .line 81
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v5, :cond_8

    move v5, v7

    :goto_7
    if-ge v5, v2, :cond_7

    .line 83
    aget-short v8, v3, v5

    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v8

    aput-short v8, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    move v5, v7

    :goto_8
    if-ge v5, v2, :cond_8

    .line 86
    aget v8, v4, v5

    shl-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v8

    aput v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 89
    :cond_8
    sput-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    .line 90
    sput-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    move v3, v7

    :goto_9
    if-ge v3, v1, :cond_c

    if-ge v3, v0, :cond_9

    const/4 v4, 0x2

    goto :goto_a

    :cond_9
    if-ge v3, v2, :cond_a

    const/4 v4, 0x1

    goto :goto_a

    :cond_a
    move v4, v7

    .line 94
    :goto_a
    div-int/lit8 v5, v3, 0x64

    const/16 v8, 0x30

    add-int/2addr v5, v8

    .line 95
    div-int/lit8 v9, v3, 0xa

    rem-int/2addr v9, v0

    add-int/2addr v9, v8

    .line 96
    rem-int/lit8 v10, v3, 0xa

    add-int/2addr v10, v8

    .line 97
    sget-object v11, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    shl-int/lit8 v12, v5, 0x8

    add-int/2addr v12, v4

    shl-int/lit8 v13, v9, 0x10

    add-int/2addr v12, v13

    shl-int/lit8 v13, v10, 0x18

    add-int/2addr v12, v13

    aput v12, v11, v3

    shl-int/lit8 v5, v5, 0x10

    int-to-long v11, v5

    int-to-long v13, v9

    const/16 v5, 0x20

    shl-long/2addr v13, v5

    add-long/2addr v11, v13

    int-to-long v9, v10

    shl-long v8, v9, v8

    add-long/2addr v11, v8

    .line 99
    sget-boolean v5, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz v5, :cond_b

    shl-long/2addr v11, v6

    .line 102
    :cond_b
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    int-to-long v8, v4

    add-long/2addr v8, v11

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    return-void

    nop

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 8
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    :array_2
    .array-data 2
        0x3030s
        0x3130s
        0x3230s
        0x3330s
        0x3430s
        0x3530s
        0x3630s
        0x3730s
        0x3830s
        0x3930s
        0x3031s
        0x3131s
        0x3231s
        0x3331s
        0x3431s
        0x3531s
        0x3631s
        0x3731s
        0x3831s
        0x3931s
        0x3032s
        0x3132s
        0x3232s
        0x3332s
        0x3432s
        0x3532s
        0x3632s
        0x3732s
        0x3832s
        0x3932s
        0x3033s
        0x3133s
        0x3233s
        0x3333s
        0x3433s
        0x3533s
        0x3633s
        0x3733s
        0x3833s
        0x3933s
        0x3034s
        0x3134s
        0x3234s
        0x3334s
        0x3434s
        0x3534s
        0x3634s
        0x3734s
        0x3834s
        0x3934s
        0x3035s
        0x3135s
        0x3235s
        0x3335s
        0x3435s
        0x3535s
        0x3635s
        0x3735s
        0x3835s
        0x3935s
        0x3036s
        0x3136s
        0x3236s
        0x3336s
        0x3436s
        0x3536s
        0x3636s
        0x3736s
        0x3836s
        0x3936s
        0x3037s
        0x3137s
        0x3237s
        0x3337s
        0x3437s
        0x3537s
        0x3637s
        0x3737s
        0x3837s
        0x3937s
        0x3038s
        0x3138s
        0x3238s
        0x3338s
        0x3438s
        0x3538s
        0x3638s
        0x3738s
        0x3838s
        0x3938s
        0x3039s
        0x3139s
        0x3239s
        0x3339s
        0x3439s
        0x3539s
        0x3639s
        0x3739s
        0x3839s
        0x3939s
    .end array-data

    :array_3
    .array-data 4
        0x300030
        0x310030    # 4.500007E-39f
        0x320030
        0x330030
        0x340030
        0x350030
        0x360030
        0x370030
        0x380030
        0x390030
        0x300031
        0x310031    # 4.500008E-39f
        0x320031
        0x330031
        0x340031
        0x350031
        0x360031
        0x370031
        0x380031
        0x390031
        0x300032
        0x310032    # 4.50001E-39f
        0x320032
        0x330032
        0x340032
        0x350032
        0x360032
        0x370032
        0x380032
        0x390032
        0x300033
        0x310033    # 4.500011E-39f
        0x320033
        0x330033
        0x340033
        0x350033
        0x360033
        0x370033
        0x380033
        0x390033
        0x300034
        0x310034    # 4.500012E-39f
        0x320034
        0x330034
        0x340034
        0x350034
        0x360034
        0x370034
        0x380034
        0x390034
        0x300035
        0x310035    # 4.500014E-39f
        0x320035
        0x330035
        0x340035
        0x350035
        0x360035
        0x370035
        0x380035
        0x390035
        0x300036
        0x310036    # 4.500015E-39f
        0x320036
        0x330036
        0x340036
        0x350036
        0x360036
        0x370036
        0x380036
        0x390036
        0x300037
        0x310037    # 4.500016E-39f
        0x320037
        0x330037
        0x340037
        0x350037
        0x360037
        0x370037
        0x380037
        0x390037
        0x300038
        0x310038    # 4.500018E-39f
        0x320038
        0x330038
        0x340038
        0x350038
        0x360038
        0x370038
        0x380038
        0x390038
        0x300039
        0x310039    # 4.500019E-39f
        0x320039
        0x330039
        0x340039
        0x350039
        0x360039
        0x370039
        0x380039
        0x390039
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 558
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static decodeUTF8([BII[B)I
    .locals 9

    add-int/2addr p2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_c

    add-int/lit8 v2, p1, 0x1

    .line 569
    aget-byte p1, p0, p1

    if-ltz p1, :cond_0

    int-to-byte p1, p1

    .line 572
    aput-byte p1, p3, v1

    add-int/lit8 p1, v1, 0x1

    .line 573
    aput-byte v0, p3, p1

    goto/16 :goto_4

    :goto_1
    move p1, v2

    goto :goto_0

    :cond_0
    shr-int/lit8 v3, p1, 0x5

    const/4 v4, -0x2

    const/16 v5, 0x80

    const/4 v6, -0x1

    if-ne v3, v4, :cond_3

    and-int/lit8 v3, p1, 0x1e

    if-eqz v3, :cond_3

    if-ge v2, p2, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 578
    aget-byte v2, p0, v2

    and-int/lit16 v4, v2, 0xc0

    if-eq v4, v5, :cond_1

    return v6

    :cond_1
    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p1, v2

    xor-int/lit16 p1, p1, 0xf80

    int-to-char p1, p1

    int-to-byte v2, p1

    .line 585
    aput-byte v2, p3, v1

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 586
    aput-byte p1, p3, v2

    add-int/lit8 v1, v1, 0x2

    move p1, v3

    goto :goto_0

    :cond_2
    int-to-byte p0, p1

    .line 591
    aput-byte p0, p3, v1

    add-int/lit8 p0, v1, 0x1

    .line 592
    aput-byte v0, p3, p0

    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_6

    :cond_3
    shr-int/lit8 v3, p1, 0x4

    if-ne v3, v4, :cond_9

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p2, :cond_8

    .line 598
    aget-byte v4, p0, v2

    .line 599
    aget-byte v3, p0, v3

    add-int/lit8 v2, v2, 0x2

    const/16 v7, -0x20

    if-ne p1, v7, :cond_4

    and-int/lit16 v7, v4, 0xe0

    if-eq v7, v5, :cond_8

    :cond_4
    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v5, :cond_8

    and-int/lit16 v7, v3, 0xc0

    if-eq v7, v5, :cond_5

    goto :goto_3

    :cond_5
    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr p1, v4

    const v4, -0x1e080

    xor-int/2addr v3, v4

    xor-int/2addr p1, v3

    int-to-char p1, p1

    const v3, 0xd800

    if-lt p1, v3, :cond_6

    const v3, 0xe000

    if-ge p1, v3, :cond_6

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    move v3, v0

    :goto_2
    if-eqz v3, :cond_7

    return v6

    :cond_7
    int-to-byte v3, p1

    .line 617
    aput-byte v3, p3, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 618
    aput-byte p1, p3, v3

    goto :goto_4

    :cond_8
    :goto_3
    return v6

    :cond_9
    shr-int/lit8 v3, p1, 0x3

    if-ne v3, v4, :cond_b

    add-int/lit8 v3, v2, 0x2

    if-ge v3, p2, :cond_b

    .line 628
    aget-byte v4, p0, v2

    add-int/lit8 v7, v2, 0x1

    .line 629
    aget-byte v7, p0, v7

    .line 630
    aget-byte v3, p0, v3

    add-int/lit8 v2, v2, 0x3

    shl-int/lit8 p1, p1, 0x12

    shl-int/lit8 v8, v4, 0xc

    xor-int/2addr p1, v8

    shl-int/lit8 v8, v7, 0x6

    xor-int/2addr p1, v8

    const v8, 0x381f80

    xor-int/2addr v8, v3

    xor-int/2addr p1, v8

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v5, :cond_b

    and-int/lit16 v4, v7, 0xc0

    if-ne v4, v5, :cond_b

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_b

    const/high16 v3, 0x10000

    if-lt p1, v3, :cond_b

    const/high16 v3, 0x110000

    if-lt p1, v3, :cond_a

    goto :goto_5

    :cond_a
    ushr-int/lit8 v3, p1, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    int-to-byte v4, v3

    .line 648
    aput-byte v4, p3, v1

    add-int/lit8 v4, v1, 0x1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    .line 649
    aput-byte v3, p3, v4

    add-int/lit8 v1, v1, 0x2

    and-int/lit16 p1, p1, 0x3ff

    const v3, 0xdc00

    add-int/2addr p1, v3

    int-to-char p1, p1

    int-to-byte v3, p1

    .line 653
    aput-byte v3, p3, v1

    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 654
    aput-byte p1, p3, v3

    :goto_4
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_1

    :cond_b
    :goto_5
    return v6

    :cond_c
    :goto_6
    return v1
.end method

.method public static decodeUTF8([BII[C)I
    .locals 9

    add-int v0, p1, p2

    .line 670
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    .line 673
    aget-byte v3, p0, p1

    if-ltz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, p1, 0x1

    .line 674
    aget-byte p1, p0, p1

    int-to-char p1, p1

    aput-char p1, p3, v2

    move v2, v3

    move p1, v4

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_d

    add-int/lit8 p2, p1, 0x1

    .line 678
    aget-byte p1, p0, p1

    if-ltz p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    int-to-char p1, p1

    .line 681
    aput-char p1, p3, v2

    :goto_2
    move p1, p2

    move v2, v3

    goto :goto_1

    :cond_1
    shr-int/lit8 v3, p1, 0x5

    const/4 v4, -0x2

    const/16 v5, 0x80

    const/4 v6, -0x1

    if-ne v3, v4, :cond_4

    and-int/lit8 v3, p1, 0x1e

    if-eqz v3, :cond_4

    if-ge p2, v0, :cond_3

    add-int/lit8 v3, p2, 0x1

    .line 685
    aget-byte p2, p0, p2

    and-int/lit16 v4, p2, 0xc0

    if-eq v4, v5, :cond_2

    return v6

    :cond_2
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 p1, p1, 0x6

    xor-int/2addr p1, p2

    xor-int/lit16 p1, p1, 0xf80

    int-to-char p1, p1

    .line 689
    aput-char p1, p3, v2

    move p1, v3

    move v2, v4

    goto :goto_1

    :cond_3
    return v6

    :cond_4
    shr-int/lit8 v3, p1, 0x4

    if-ne v3, v4, :cond_a

    add-int/lit8 v3, p2, 0x1

    if-ge v3, v0, :cond_9

    .line 699
    aget-byte v4, p0, p2

    .line 700
    aget-byte v3, p0, v3

    add-int/lit8 p2, p2, 0x2

    const/16 v7, -0x20

    if-ne p1, v7, :cond_5

    and-int/lit16 v7, v4, 0xe0

    if-eq v7, v5, :cond_9

    :cond_5
    and-int/lit16 v7, v4, 0xc0

    if-ne v7, v5, :cond_9

    and-int/lit16 v7, v3, 0xc0

    if-eq v7, v5, :cond_6

    goto :goto_4

    :cond_6
    shl-int/lit8 p1, p1, 0xc

    shl-int/lit8 v4, v4, 0x6

    xor-int/2addr p1, v4

    const v4, -0x1e080

    xor-int/2addr v3, v4

    xor-int/2addr p1, v3

    int-to-char p1, p1

    const v3, 0xd800

    if-lt p1, v3, :cond_7

    const v3, 0xe000

    if-ge p1, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-eqz v3, :cond_8

    return v6

    :cond_8
    add-int/lit8 v3, v2, 0x1

    .line 717
    aput-char p1, p3, v2

    goto :goto_2

    :cond_9
    :goto_4
    return v6

    :cond_a
    shr-int/lit8 v3, p1, 0x3

    if-ne v3, v4, :cond_c

    add-int/lit8 v3, p2, 0x2

    if-ge v3, v0, :cond_c

    .line 726
    aget-byte v4, p0, p2

    add-int/lit8 v7, p2, 0x1

    .line 727
    aget-byte v7, p0, v7

    .line 728
    aget-byte v3, p0, v3

    add-int/lit8 p2, p2, 0x3

    shl-int/lit8 p1, p1, 0x12

    shl-int/lit8 v8, v4, 0xc

    xor-int/2addr p1, v8

    shl-int/lit8 v8, v7, 0x6

    xor-int/2addr p1, v8

    const v8, 0x381f80

    xor-int/2addr v8, v3

    xor-int/2addr p1, v8

    and-int/lit16 v4, v4, 0xc0

    if-ne v4, v5, :cond_c

    and-int/lit16 v4, v7, 0xc0

    if-ne v4, v5, :cond_c

    and-int/lit16 v3, v3, 0xc0

    if-ne v3, v5, :cond_c

    const/high16 v3, 0x10000

    if-lt p1, v3, :cond_c

    const/high16 v3, 0x110000

    if-lt p1, v3, :cond_b

    goto :goto_5

    :cond_b
    ushr-int/lit8 v3, p1, 0xa

    const v4, 0xd7c0

    add-int/2addr v3, v4

    int-to-char v3, v3

    .line 745
    aput-char v3, p3, v2

    add-int/lit8 v3, v2, 0x1

    and-int/lit16 p1, p1, 0x3ff

    const v4, 0xdc00

    add-int/2addr p1, v4

    int-to-char p1, p1

    .line 746
    aput-char p1, p3, v3

    add-int/lit8 v2, v2, 0x2

    move p1, p2

    goto/16 :goto_1

    :cond_c
    :goto_5
    return v6

    :cond_d
    return v2
.end method

.method public static encodeUTF8([BII[BI)I
    .locals 8

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_6

    .line 387
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 388
    aget-byte v1, p0, v1

    add-int/lit8 p1, p1, 0x2

    if-nez v1, :cond_0

    if-ltz v0, :cond_0

    add-int/lit8 v1, p4, 0x1

    .line 392
    aput-byte v0, p3, p4

    move p4, v1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    shr-int/lit8 v1, v0, 0x6

    or-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    .line 397
    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 398
    aput-byte v0, p3, v1

    add-int/lit8 p4, p4, 0x2

    goto :goto_0

    :cond_1
    const v1, 0xd800

    const/16 v2, 0x3f

    if-lt v0, v1, :cond_5

    const v1, 0xe000

    if-ge v0, v1, :cond_5

    add-int/lit8 v3, p1, -0x1

    const v4, 0xdc00

    const/4 v5, -0x1

    if-ge v0, v4, :cond_4

    sub-int v6, p2, v3

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v3, 0x1

    .line 407
    aget-byte v6, p0, v6

    add-int/lit8 v3, v3, 0x2

    .line 408
    aget-byte v3, p0, v3

    and-int/lit16 v6, v6, 0xff

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v6

    int-to-char v3, v3

    if-lt v3, v4, :cond_4

    if-ge v3, v1, :cond_4

    add-int/lit8 p1, p1, 0x2

    shl-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    const v1, -0x35fdc00

    add-int v5, v0, v1

    :goto_1
    if-gez v5, :cond_3

    add-int/lit8 v0, p4, 0x1

    .line 425
    aput-byte v2, p3, p4

    goto :goto_2

    :cond_3
    shr-int/lit8 v0, v5, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    .line 427
    aput-byte v0, p3, p4

    add-int/lit8 v0, p4, 0x1

    shr-int/lit8 v1, v5, 0xc

    and-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 428
    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x2

    shr-int/lit8 v1, v5, 0x6

    and-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 429
    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x3

    and-int/lit8 v1, v5, 0x3f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 430
    aput-byte v1, p3, v0

    add-int/lit8 v0, p4, 0x4

    :goto_2
    move p4, v0

    goto/16 :goto_0

    :cond_4
    return v5

    :cond_5
    shr-int/lit8 v1, v0, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    .line 435
    aput-byte v1, p3, p4

    add-int/lit8 v1, p4, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/2addr v2, v3

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 436
    aput-byte v2, p3, v1

    add-int/lit8 v1, p4, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 437
    aput-byte v0, p3, v1

    add-int/lit8 p4, p4, 0x3

    goto/16 :goto_0

    :cond_6
    return p4
.end method

.method public static encodeUTF8([CII[BI)I
    .locals 8

    add-int v0, p1, p2

    .line 447
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, p4

    :goto_0
    const/16 v1, 0x80

    if-ge p4, p2, :cond_0

    .line 450
    aget-char v2, p0, p1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, p4, 0x1

    add-int/lit8 v2, p1, 0x1

    .line 451
    aget-char p1, p0, p1

    int-to-byte p1, p1

    aput-byte p1, p3, p4

    move p4, v1

    move p1, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, v0, :cond_8

    add-int/lit8 p2, p1, 0x1

    .line 455
    aget-char p1, p0, p1

    if-ge p1, v1, :cond_1

    add-int/lit8 v2, p4, 0x1

    int-to-byte p1, p1

    .line 458
    aput-byte p1, p3, p4

    move p1, p2

    move p4, v2

    goto :goto_1

    :cond_1
    const/16 v2, 0x800

    if-ge p1, v2, :cond_2

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    .line 461
    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 462
    aput-byte p1, p3, v2

    add-int/lit8 p4, p4, 0x2

    goto :goto_4

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt p1, v2, :cond_7

    const v2, 0xe000

    if-ge p1, v2, :cond_7

    add-int/lit8 v4, p2, -0x1

    const v5, 0xdc00

    if-ge p1, v5, :cond_6

    sub-int v6, v0, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_3

    const/4 p1, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 471
    aget-char v4, p0, v4

    if-lt v4, v5, :cond_5

    if-ge v4, v2, :cond_5

    shl-int/lit8 p1, p1, 0xa

    add-int/2addr p1, v4

    const v2, -0x35fdc00

    add-int/2addr p1, v2

    :goto_2
    if-gez p1, :cond_4

    add-int/lit8 p1, p4, 0x1

    .line 490
    aput-byte v3, p3, p4

    goto :goto_3

    :cond_4
    shr-int/lit8 v2, p1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 492
    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v4, p1, 0xc

    and-int/2addr v4, v3

    or-int/2addr v4, v1

    int-to-byte v4, v4

    .line 493
    aput-byte v4, p3, v2

    add-int/lit8 v2, p4, 0x2

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 494
    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x3

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 495
    aput-byte p1, p3, v2

    add-int/lit8 p1, p4, 0x4

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 p1, p4, 0x1

    .line 477
    aput-byte v3, p3, p4

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p4, 0x1

    .line 484
    aput-byte v3, p3, p4

    :goto_3
    move p4, p1

    :goto_4
    move p1, p2

    goto/16 :goto_1

    :cond_7
    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    .line 501
    aput-byte v2, p3, p4

    add-int/lit8 v2, p4, 0x1

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v3, v4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    .line 502
    aput-byte v3, p3, v2

    add-int/lit8 v2, p4, 0x2

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 503
    aput-byte p1, p3, v2

    add-int/lit8 p4, p4, 0x3

    goto :goto_4

    :cond_8
    return p4
.end method

.method public static getChars(II[B)V
    .locals 8

    const/4 v0, 0x1

    if-gez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    neg-int p0, p0

    :cond_1
    :goto_1
    const/16 v2, -0x64

    if-gt p0, v2, :cond_2

    .line 136
    div-int/lit8 v2, p0, 0x64

    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v3, p0

    add-int/lit8 p1, p1, -0x2

    .line 140
    sget-object p0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v6, p1

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v3, v6, v3

    invoke-virtual {p0, p2, v4, v5, v3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    move p0, v2

    goto :goto_1

    :cond_2
    const/16 v2, -0x9

    if-ge p0, v2, :cond_3

    add-int/lit8 p1, p1, -0x2

    .line 146
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    neg-int p0, p0

    aget-short p0, v5, p0

    invoke-virtual {v2, p2, v3, v4, p0}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    rsub-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    .line 148
    aput-byte p0, p2, p1

    :goto_2
    if-eqz v1, :cond_4

    sub-int/2addr p1, v0

    const/16 p0, 0x2d

    .line 152
    aput-byte p0, p2, p1

    :cond_4
    return-void
.end method

.method public static getChars(II[C)V
    .locals 8

    const/4 v0, 0x1

    if-gez p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    neg-int p0, p0

    :cond_1
    :goto_1
    const/16 v2, -0x64

    if-gt p0, v2, :cond_2

    .line 167
    div-int/lit8 v2, p0, 0x64

    mul-int/lit8 v3, v2, 0x64

    sub-int/2addr v3, p0

    add-int/lit8 p1, p1, -0x2

    .line 172
    sget-object p0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v4, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v6, p1, 0x1

    int-to-long v6, v6

    add-long/2addr v4, v6

    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v3, v6, v3

    invoke-virtual {p0, p2, v4, v5, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p0, v2

    goto :goto_1

    :cond_2
    const/16 v2, -0x9

    if-ge p0, v2, :cond_3

    add-int/lit8 p1, p1, -0x2

    .line 181
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    neg-int p0, p0

    aget p0, v5, p0

    invoke-virtual {v2, p2, v3, v4, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    rsub-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    .line 186
    aput-char p0, p2, p1

    :goto_2
    if-eqz v1, :cond_4

    sub-int/2addr p1, v0

    const/16 p0, 0x2d

    .line 190
    aput-char p0, p2, p1

    :cond_4
    return-void
.end method

.method public static getChars(JI[B)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    neg-long p0, p0

    :cond_1
    :goto_1
    const-wide/32 v2, -0x80000000

    cmp-long v2, p0, v2

    if-gtz v2, :cond_2

    const-wide/16 v2, 0x64

    .line 205
    div-long v4, p0, v2

    add-int/lit8 p2, p2, -0x2

    .line 207
    sget-object v6, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v9, p2

    add-long/2addr v7, v9

    sget-object v9, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    mul-long/2addr v2, v4

    sub-long/2addr v2, p0

    long-to-int p0, v2

    aget-short p0, v9, p0

    invoke-virtual {v6, p3, v7, v8, p0}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    move-wide p0, v4

    goto :goto_1

    :cond_2
    long-to-int p0, p0

    :goto_2
    const/16 p1, -0x64

    if-gt p0, p1, :cond_3

    .line 218
    div-int/lit8 p1, p0, 0x64

    add-int/lit8 p2, p2, -0x2

    .line 220
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, p2

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    mul-int/lit8 v6, p1, 0x64

    sub-int/2addr v6, p0

    aget-short p0, v5, v6

    invoke-virtual {v2, p3, v3, v4, p0}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    move p0, p1

    goto :goto_2

    :cond_3
    const/16 p1, -0x9

    if-ge p0, p1, :cond_4

    add-int/lit8 p2, p2, -0x2

    .line 230
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    neg-int p0, p0

    aget-short p0, v4, p0

    invoke-virtual {p1, p3, v2, v3, p0}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    rsub-int/lit8 p0, p0, 0x30

    int-to-byte p0, p0

    .line 235
    aput-byte p0, p3, p2

    :goto_3
    if-eqz v0, :cond_5

    sub-int/2addr p2, v1

    const/16 p0, 0x2d

    .line 239
    aput-byte p0, p3, p2

    :cond_5
    return-void
.end method

.method public static getChars(JI[C)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    neg-long p0, p0

    :cond_1
    :goto_1
    const-wide/32 v1, -0x80000000

    cmp-long v1, p0, v1

    if-gtz v1, :cond_2

    const-wide/16 v1, 0x64

    .line 254
    div-long v3, p0, v1

    add-int/lit8 p2, p2, -0x2

    .line 256
    sget-object v5, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v6, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v8, p2, 0x1

    int-to-long v8, v8

    add-long/2addr v6, v8

    sget-object v8, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    mul-long/2addr v1, v3

    sub-long/2addr v1, p0

    long-to-int p0, v1

    aget p0, v8, p0

    invoke-virtual {v5, p3, v6, v7, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move-wide p0, v3

    goto :goto_1

    :cond_2
    long-to-int p0, p0

    :goto_2
    const/16 p1, -0x64

    if-gt p0, p1, :cond_3

    .line 267
    div-int/lit8 p1, p0, 0x64

    add-int/lit8 p2, p2, -0x2

    .line 269
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v4, p2, 0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    mul-int/lit8 v5, p1, 0x64

    sub-int/2addr v5, p0

    aget p0, v4, v5

    invoke-virtual {v1, p3, v2, v3, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move p0, p1

    goto :goto_2

    :cond_3
    const/16 p1, -0x9

    if-ge p0, p1, :cond_4

    add-int/lit8 p2, p2, -0x2

    .line 279
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v3, p2, 0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    neg-int p0, p0

    aget p0, v3, p0

    invoke-virtual {p1, p3, v1, v2, p0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    rsub-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    .line 284
    aput-char p0, p3, p2

    :goto_3
    if-eqz v0, :cond_5

    add-int/lit8 p2, p2, -0x1

    const/16 p0, 0x2d

    .line 288
    aput-char p0, p3, p2

    :cond_5
    return-void
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 511
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 512
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-le v2, v3, :cond_3

    :cond_1
    return v0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isNumber([BII)Z
    .locals 3

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_4

    .line 540
    aget-byte v0, p0, p1

    int-to-char v0, v0

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static isNumber([CII)Z
    .locals 3

    add-int/2addr p2, p1

    :goto_0
    if-ge p1, p2, :cond_4

    .line 526
    aget-char v0, p0, p1

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    :cond_1
    return v2

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    return v2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static lines(Ljava/io/File;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 760
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 761
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/IOUtils;->lines(Ljava/io/InputStream;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide v1

    :catchall_0
    move-exception p0

    .line 760
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static lines(Ljava/io/InputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    :cond_0
    const/4 v4, 0x0

    .line 769
    invoke-virtual {p0, v1, v4, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    return-wide v2

    :cond_1
    :goto_0
    if-ge v4, v5, :cond_0

    .line 774
    aget-byte v6, v1, v4

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static putInt([BII)V
    .locals 5

    .line 1327
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1330
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 1327
    :cond_0
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putInt([CII)V
    .locals 5

    .line 1335
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 p1, p1, 0x1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1338
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    .line 1335
    :cond_0
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static putLong([CIJ)V
    .locals 6

    .line 1343
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 p1, p1, 0x1

    int-to-long v3, p1

    add-long v2, v1, v3

    .line 1346
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    :cond_0
    move-wide v4, p2

    move-object v1, p0

    .line 1343
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static putShort([BIS)V
    .locals 5

    .line 1319
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1322
    sget-boolean p1, Lcom/alibaba/fastjson2/util/JDKUtils;->BIG_ENDIAN:Z

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p2

    .line 1319
    :cond_0
    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static stringSize(I)I
    .locals 2

    const/4 v0, 0x0

    .line 108
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringSize(J)I
    .locals 6

    const/4 v0, 0x1

    const-wide/16 v1, 0xa

    move-wide v3, v1

    :goto_0
    const/16 v5, 0x13

    if-ge v0, v5, :cond_1

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    return v0

    :cond_0
    mul-long/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method

.method public static writeDecimal([BIJI)I
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 294
    aput-byte v1, p0, p1

    neg-long p2, p2

    move p1, v0

    :cond_0
    if-eqz p4, :cond_6

    .line 299
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    sub-int v1, v0, p4

    const/16 v2, 0x2e

    const/16 v3, 0x30

    if-nez v1, :cond_1

    .line 302
    aput-byte v3, p0, p1

    add-int/lit8 p4, p1, 0x1

    .line 303
    aput-byte v2, p0, p4

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    if-gez v1, :cond_2

    .line 306
    aput-byte v3, p0, p1

    add-int/lit8 p4, p1, 0x1

    .line 307
    aput-byte v2, p0, p4

    add-int/lit8 p1, p1, 0x2

    :goto_0
    neg-int p4, v1

    if-ge v4, p4, :cond_6

    add-int/lit8 p4, p1, 0x1

    .line 311
    aput-byte v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    move p1, p4

    goto :goto_0

    .line 314
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->POWER_TEN:[J

    add-int/lit8 v6, p4, -0x1

    aget-wide v5, v5, v6

    .line 315
    div-long v7, p2, v5

    mul-long/2addr v5, v7

    sub-long/2addr p2, v5

    .line 317
    invoke-static {p0, p1, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p1

    .line 318
    aput-byte v2, p0, p1

    const/4 v2, 0x2

    const/4 v5, 0x1

    if-ne p4, v5, :cond_3

    add-int/lit8 p4, p1, 0x1

    const-wide/16 v0, 0x30

    add-long/2addr p2, v0

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 321
    aput-byte p2, p0, p4

    add-int/2addr p1, v2

    return p1

    :cond_3
    if-ne p4, v2, :cond_4

    .line 324
    sget-object p4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    long-to-int p2, p2

    aget-short p2, v2, p2

    invoke-virtual {p4, p0, v0, v1, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x3

    return p1

    .line 328
    :cond_4
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result p4

    sub-int/2addr v0, p4

    sub-int/2addr v0, v1

    :goto_1
    if-ge v4, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 329
    aput-byte v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr p1, v5

    .line 331
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p0

    return p0

    .line 335
    :cond_6
    :goto_2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([BIJ)I

    move-result p0

    return p0
.end method

.method public static writeDecimal([CIJI)I
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 340
    aput-char v1, p0, p1

    neg-long p2, p2

    move p1, v0

    :cond_0
    if-eqz p4, :cond_6

    .line 345
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result v0

    sub-int v1, v0, p4

    const/16 v2, 0x2e

    const/16 v3, 0x30

    if-nez v1, :cond_1

    .line 348
    aput-char v3, p0, p1

    add-int/lit8 p4, p1, 0x1

    .line 349
    aput-char v2, p0, p4

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    if-gez v1, :cond_2

    .line 352
    aput-char v3, p0, p1

    add-int/lit8 p4, p1, 0x1

    .line 353
    aput-char v2, p0, p4

    add-int/lit8 p1, p1, 0x2

    :goto_0
    neg-int p4, v1

    if-ge v4, p4, :cond_6

    add-int/lit8 p4, p1, 0x1

    .line 357
    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    move p1, p4

    goto :goto_0

    .line 360
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->POWER_TEN:[J

    add-int/lit8 v6, p4, -0x1

    aget-wide v5, v5, v6

    .line 361
    div-long v7, p2, v5

    mul-long/2addr v5, v7

    sub-long/2addr p2, v5

    .line 363
    invoke-static {p0, p1, v7, v8}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p1

    .line 364
    aput-char v2, p0, p1

    const/4 v2, 0x2

    const/4 v5, 0x1

    if-ne p4, v5, :cond_3

    add-int/lit8 p4, p1, 0x1

    const-wide/16 v0, 0x30

    add-long/2addr p2, v0

    long-to-int p2, p2

    int-to-char p2, p2

    .line 367
    aput-char p2, p0, p4

    add-int/2addr p1, v2

    return p1

    :cond_3
    if-ne p4, v2, :cond_4

    .line 370
    sget-object p4, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v2, p1, 0x1

    shl-int/2addr v2, v5

    int-to-long v2, v2

    add-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    long-to-int p2, p2

    aget p2, v2, p2

    invoke-virtual {p4, p0, v0, v1, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x3

    return p1

    .line 374
    :cond_4
    invoke-static {p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->stringSize(J)I

    move-result p4

    sub-int/2addr v0, p4

    sub-int/2addr v0, v1

    :goto_1
    if-ge v4, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 375
    aput-char v3, p0, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr p1, v5

    .line 377
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p0

    return p0

    .line 381
    :cond_6
    :goto_2
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt64([CIJ)I

    move-result p0

    return p0
.end method

.method public static writeInt32([BII)I
    .locals 5

    if-gez p2, :cond_1

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 1193
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_BYTES:[B

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1194
    array-length p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_0
    neg-int p2, p2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 1197
    aput-byte v1, p0, p1

    move p1, v0

    :cond_1
    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-ge p2, v0, :cond_4

    .line 1203
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget p2, v0, p2

    int-to-byte v0, p2

    if-nez v0, :cond_2

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    .line 1206
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->putShort([BIS)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    .line 1209
    aput-byte v2, p0, p1

    move p1, v0

    :cond_3
    :goto_0
    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 1211
    aput-byte p2, p0, p1

    add-int/2addr p1, v1

    return p1

    .line 1215
    :cond_4
    div-int/lit16 v0, p2, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int v2, p2, v2

    .line 1217
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget v2, v3, v2

    const v4, 0xf4240

    if-ge p2, v4, :cond_7

    .line 1219
    aget p2, v3, v0

    int-to-byte v0, p2

    if-nez v0, :cond_5

    shr-int/lit8 v0, p2, 0x8

    int-to-short v0, v0

    .line 1222
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/IOUtils;->putShort([BIS)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_5
    if-ne v0, v1, :cond_6

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 1225
    aput-byte v1, p0, p1

    move p1, v0

    :cond_6
    :goto_1
    and-int/lit16 v0, v2, -0x100

    shr-int/lit8 p2, p2, 0x18

    or-int/2addr p2, v0

    .line 1227
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 1230
    :cond_7
    div-int/lit16 p2, v0, 0x3e8

    mul-int/lit16 v4, p2, 0x3e8

    sub-int/2addr v0, v4

    .line 1232
    div-int/lit16 v4, p2, 0x3e8

    .line 1233
    aget v0, v3, v0

    if-nez v4, :cond_a

    .line 1235
    aget p2, v3, p2

    int-to-byte v3, p2

    if-nez v3, :cond_8

    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    .line 1238
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->putShort([BIS)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_8
    if-ne v3, v1, :cond_9

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, p2, 0x10

    int-to-byte v3, v3

    .line 1241
    aput-byte v3, p0, p1

    move p1, v1

    :cond_9
    :goto_2
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 1243
    aput-byte p2, p0, p1

    goto :goto_3

    :cond_a
    mul-int/lit16 v1, v4, 0x3e8

    sub-int/2addr p2, v1

    .line 1245
    aget p2, v3, p2

    and-int/lit16 p2, p2, -0x100

    add-int/lit8 v4, v4, 0x30

    or-int/2addr p2, v4

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 v1, p1, 0x4

    :goto_3
    shr-int/lit8 p1, v0, 0x8

    int-to-short p1, p1

    .line 1249
    invoke-static {p0, v1, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->putShort([BIS)V

    add-int/lit8 p1, v1, 0x2

    and-int/lit16 p2, v2, -0x100

    shr-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    .line 1250
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 v1, v1, 0x6

    return v1
.end method

.method public static writeInt32([CII)I
    .locals 13

    if-gez p2, :cond_1

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_0

    .line 1258
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_INT_CHARS:[C

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, p0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1259
    array-length p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_0
    neg-int p2, p2

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2d

    .line 1262
    aput-char v1, p0, p1

    move p1, v0

    :cond_1
    const/16 v0, 0x20

    const/16 v1, 0x10

    const/16 v2, 0x30

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-ge p2, v3, :cond_4

    .line 1267
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    aget-wide v5, v3, p2

    long-to-int p2, v5

    int-to-byte p2, p2

    if-nez p2, :cond_2

    shr-long v0, v5, v1

    long-to-int p2, v0

    .line 1270
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    if-ne p2, v4, :cond_3

    add-int/lit8 p2, p1, 0x1

    shr-long v0, v5, v0

    long-to-int v0, v0

    int-to-char v0, v0

    .line 1273
    aput-char v0, p0, p1

    move p1, p2

    :cond_3
    :goto_0
    shr-long v0, v5, v2

    long-to-int p2, v0

    int-to-char p2, p2

    .line 1275
    aput-char p2, p0, p1

    add-int/2addr p1, v4

    return p1

    .line 1278
    :cond_4
    div-int/lit16 v3, p2, 0x3e8

    mul-int/lit16 v5, v3, 0x3e8

    sub-int v5, p2, v5

    .line 1280
    sget-object v6, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    aget-wide v7, v6, v5

    const v5, 0xf4240

    const-wide/32 v9, -0x10000

    if-ge p2, v5, :cond_7

    .line 1282
    aget-wide v5, v6, v3

    long-to-int p2, v5

    int-to-byte p2, p2

    if-nez p2, :cond_5

    shr-long v0, v5, v1

    long-to-int p2, v0

    .line 1285
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_5
    if-ne p2, v4, :cond_6

    add-int/lit8 p2, p1, 0x1

    shr-long v0, v5, v0

    long-to-int v0, v0

    int-to-char v0, v0

    .line 1288
    aput-char v0, p0, p1

    move p1, p2

    :cond_6
    :goto_1
    and-long v0, v7, v9

    shr-long v2, v5, v2

    or-long/2addr v0, v2

    .line 1290
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 1293
    :cond_7
    div-int/lit16 p2, v3, 0x3e8

    mul-int/lit16 v5, p2, 0x3e8

    sub-int/2addr v3, v5

    .line 1295
    div-int/lit16 v5, p2, 0x3e8

    .line 1296
    aget-wide v11, v6, v3

    if-nez v5, :cond_a

    .line 1298
    aget-wide v5, v6, p2

    long-to-int p2, v5

    int-to-byte p2, p2

    if-nez p2, :cond_8

    shr-long v3, v5, v1

    long-to-int p2, v3

    .line 1301
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_8
    if-ne p2, v4, :cond_9

    add-int/lit8 p2, p1, 0x1

    shr-long v3, v5, v0

    long-to-int v0, v3

    int-to-char v0, v0

    .line 1304
    aput-char v0, p0, p1

    move p1, p2

    :cond_9
    :goto_2
    add-int/lit8 p2, p1, 0x1

    shr-long v3, v5, v2

    long-to-int v0, v3

    int-to-char v0, v0

    .line 1306
    aput-char v0, p0, p1

    goto :goto_3

    :cond_a
    mul-int/lit16 v0, v5, 0x3e8

    sub-int/2addr p2, v0

    .line 1308
    aget-wide v3, v6, p2

    invoke-static {p0, p1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/2addr v5, v2

    int-to-char p2, v5

    .line 1309
    aput-char p2, p0, p1

    add-int/lit8 p2, p1, 0x4

    :goto_3
    shr-long v0, v11, v1

    long-to-int p1, v0

    .line 1313
    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 p1, p2, 0x2

    and-long v0, v7, v9

    shr-long v2, v11, v2

    or-long/2addr v0, v2

    .line 1314
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 p2, p2, 0x6

    return p2
.end method

.method public static writeInt64([BIJ)I
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 933
    sget-object p2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    const/4 p3, 0x0

    array-length v0, p2

    invoke-static {p2, p3, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 934
    array-length p0, p2

    add-int/2addr p1, p0

    return p1

    :cond_0
    neg-long p2, p2

    add-int/lit8 v2, p1, 0x1

    const/16 v3, 0x2d

    .line 937
    aput-byte v3, p0, p1

    move p1, v2

    :cond_1
    const-wide/16 v2, 0x3e8

    cmp-long v4, p2, v2

    const/4 v5, 0x1

    if-gez v4, :cond_4

    .line 943
    sget-object v0, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    long-to-int p2, p2

    aget p2, v0, p2

    and-int/lit16 p3, p2, 0xff

    if-nez p3, :cond_2

    shr-int/lit8 p3, p2, 0x8

    int-to-byte p3, p3

    .line 946
    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 947
    aput-byte v0, p0, p3

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    if-ne p3, v5, :cond_3

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 950
    aput-byte v0, p0, p1

    move p1, p3

    :cond_3
    :goto_0
    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 952
    aput-byte p2, p0, p1

    return p3

    .line 956
    :cond_4
    div-long v6, p2, v2

    mul-long v8, v6, v2

    sub-long v8, p2, v8

    long-to-int v4, v8

    .line 958
    sget-object v8, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget v4, v8, v4

    const-wide/32 v9, 0xf4240

    cmp-long p2, p2, v9

    if-gez p2, :cond_7

    long-to-int p2, v6

    .line 960
    aget p2, v8, p2

    and-int/lit16 p3, p2, 0xff

    if-nez p3, :cond_5

    shr-int/lit8 p3, p2, 0x8

    int-to-byte p3, p3

    .line 964
    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 965
    aput-byte v0, p0, p3

    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_5
    if-ne p3, v5, :cond_6

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 968
    aput-byte v0, p0, p1

    move p1, p3

    :cond_6
    :goto_1
    and-int/lit16 p3, v4, -0x100

    shr-int/lit8 p2, p2, 0x18

    or-int/2addr p2, p3

    .line 970
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    return p1

    .line 974
    :cond_7
    div-long p2, v6, v2

    mul-long v9, p2, v2

    sub-long/2addr v6, v9

    long-to-int v6, v6

    .line 976
    div-long v9, p2, v2

    .line 977
    aget v6, v8, v6

    cmp-long v0, v9, v0

    if-nez v0, :cond_a

    long-to-int p2, p2

    .line 979
    aget p2, v8, p2

    and-int/lit16 p3, p2, 0xff

    if-nez p3, :cond_8

    shr-int/lit8 p3, p2, 0x8

    int-to-byte p3, p3

    .line 982
    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 983
    aput-byte v0, p0, p3

    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_8
    if-ne p3, v5, :cond_9

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    .line 986
    aput-byte v0, p0, p1

    move p1, p3

    :cond_9
    :goto_2
    shr-int/lit8 p2, p2, 0x18

    int-to-byte p2, p2

    .line 988
    aput-byte p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    shr-int/lit8 p3, v6, 0x8

    int-to-byte p3, p3

    .line 989
    aput-byte p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    shr-int/lit8 p3, v6, 0x10

    int-to-byte p3, p3

    .line 990
    aput-byte p3, p0, p2

    add-int/lit8 p2, p1, 0x3

    and-int/lit16 p3, v4, -0x100

    shr-int/lit8 v0, v6, 0x18

    or-int/2addr p3, v0

    .line 991
    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x7

    return p1

    :cond_a
    mul-long v0, v9, v2

    sub-long/2addr p2, v0

    long-to-int p2, p2

    .line 995
    div-long v0, v9, v2

    long-to-int p3, v0

    .line 996
    aget p2, v8, p2

    const v0, 0xffff00

    if-nez p3, :cond_d

    long-to-int p3, v9

    .line 998
    aget p3, v8, p3

    and-int/lit16 v1, p3, 0xff

    if-nez v1, :cond_b

    shr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    .line 1001
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p3, 0x10

    int-to-byte v2, v2

    .line 1002
    aput-byte v2, p0, v1

    add-int/lit8 p1, p1, 0x2

    goto :goto_3

    :cond_b
    if-ne v1, v5, :cond_c

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, p3, 0x10

    int-to-byte v2, v2

    .line 1005
    aput-byte v2, p0, p1

    move p1, v1

    :cond_c
    :goto_3
    shr-int/lit8 p3, p3, 0x18

    int-to-byte p3, p3

    .line 1007
    aput-byte p3, p0, p1

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 1008
    aput-byte v1, p0, p3

    add-int/lit8 p3, p1, 0x2

    and-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v0

    .line 1009
    invoke-static {p0, p3, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p2, p1, 0x6

    and-int/lit16 p3, v4, -0x100

    shr-int/lit8 v0, v6, 0x18

    or-int/2addr p3, v0

    .line 1010
    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0xa

    return p1

    :cond_d
    mul-int/lit16 v1, p3, 0x3e8

    int-to-long v1, v1

    sub-long/2addr v9, v1

    long-to-int v1, v9

    .line 1014
    div-int/lit16 v2, p3, 0x3e8

    .line 1016
    aget v1, v8, v1

    if-nez v2, :cond_10

    .line 1018
    aget p3, v8, p3

    and-int/lit16 v2, p3, 0xff

    if-nez v2, :cond_e

    shr-int/lit8 v2, p3, 0x8

    int-to-byte v2, v2

    .line 1021
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p3, 0x10

    int-to-byte v3, v3

    .line 1022
    aput-byte v3, p0, v2

    add-int/lit8 p1, p1, 0x2

    goto :goto_4

    :cond_e
    if-ne v2, v5, :cond_f

    add-int/lit8 v2, p1, 0x1

    shr-int/lit8 v3, p3, 0x10

    int-to-byte v3, v3

    .line 1025
    aput-byte v3, p0, p1

    move p1, v2

    :cond_f
    :goto_4
    and-int/lit16 v1, v1, -0x100

    shr-int/lit8 p3, p3, 0x18

    or-int/2addr p3, v1

    .line 1027
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p3, p1, 0x4

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 1028
    aput-byte v1, p0, p3

    add-int/lit8 p3, p1, 0x5

    and-int/2addr v0, v6

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 p2, p2, 0x10

    or-int/2addr p2, v0

    .line 1029
    invoke-static {p0, p3, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p2, p1, 0x9

    and-int/lit16 p3, v4, -0x100

    shr-int/lit8 v0, v6, 0x18

    or-int/2addr p3, v0

    .line 1030
    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0xd

    return p1

    :cond_10
    mul-int/lit16 v3, v2, 0x3e8

    sub-int/2addr p3, v3

    .line 1034
    div-int/lit16 v3, v2, 0x3e8

    .line 1035
    aget p3, v8, p3

    if-nez v3, :cond_13

    .line 1037
    aget v2, v8, v2

    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_11

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 1040
    aput-byte v3, p0, p1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    .line 1041
    aput-byte v5, p0, v3

    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_11
    if-ne v3, v5, :cond_12

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v5, v2, 0x10

    int-to-byte v5, v5

    .line 1044
    aput-byte v5, p0, p1

    move p1, v3

    :cond_12
    :goto_5
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    .line 1046
    aput-byte v2, p0, p1

    goto :goto_6

    :cond_13
    mul-int/lit16 v5, v3, 0x3e8

    sub-int/2addr v2, v5

    .line 1048
    aget v2, v8, v2

    and-int/lit16 v2, v2, -0x100

    add-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    invoke-static {p0, p1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 v3, p1, 0x4

    :goto_6
    shr-int/lit8 p1, p3, 0x8

    int-to-byte p1, p1

    .line 1052
    aput-byte p1, p0, v3

    add-int/lit8 p1, v3, 0x1

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    shr-int/lit8 p3, p3, 0x10

    or-int/2addr p3, v0

    .line 1053
    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, v3, 0x5

    and-int/lit16 p2, p2, -0x100

    shr-int/lit8 p3, v1, 0x18

    or-int/2addr p2, p3

    .line 1054
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, v3, 0x9

    shr-int/lit8 p2, v6, 0x8

    int-to-byte p2, p2

    .line 1055
    aput-byte p2, p0, p1

    add-int/lit8 p1, v3, 0xa

    shr-int/lit8 p2, v6, 0x10

    int-to-byte p2, p2

    .line 1056
    aput-byte p2, p0, p1

    add-int/lit8 p1, v3, 0xb

    and-int/lit16 p2, v4, -0x100

    shr-int/lit8 p3, v6, 0x18

    or-int/2addr p2, p3

    .line 1057
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 v3, v3, 0xf

    return v3
.end method

.method public static writeInt64([CIJ)I
    .locals 23

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v5, v1, v5

    if-nez v5, :cond_1

    const/4 v1, 0x0

    .line 1065
    :goto_0
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->MIN_LONG:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    add-int v3, p1, v1

    .line 1066
    aget-byte v2, v2, v1

    int-to-char v2, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1068
    :cond_0
    array-length v0, v2

    add-int v0, p1, v0

    return v0

    :cond_1
    neg-long v1, v1

    add-int/lit8 v5, p1, 0x1

    const/16 v6, 0x2d

    .line 1071
    aput-char v6, v0, p1

    goto :goto_1

    :cond_2
    move/from16 v5, p1

    :goto_1
    const-wide/16 v6, 0x3e8

    cmp-long v8, v1, v6

    const/16 v9, 0x20

    const/16 v10, 0x30

    const/16 v11, 0x10

    const/4 v12, 0x1

    if-gez v8, :cond_5

    .line 1077
    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    long-to-int v1, v1

    aget-wide v1, v3, v1

    long-to-int v3, v1

    int-to-byte v3, v3

    if-nez v3, :cond_3

    shr-long v3, v1, v11

    long-to-int v3, v3

    .line 1080
    invoke-static {v0, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_3
    if-ne v3, v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    shr-long v6, v1, v9

    long-to-int v4, v6

    int-to-char v4, v4

    .line 1083
    aput-char v4, v0, v5

    move v5, v3

    :cond_4
    :goto_2
    add-int/lit8 v3, v5, 0x1

    shr-long/2addr v1, v10

    long-to-int v1, v1

    int-to-char v1, v1

    .line 1085
    aput-char v1, v0, v5

    return v3

    .line 1089
    :cond_5
    div-long v13, v1, v6

    mul-long v15, v13, v6

    sub-long v3, v1, v15

    long-to-int v3, v3

    .line 1091
    sget-object v4, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    aget-wide v15, v4, v3

    const-wide/32 v19, 0xf4240

    cmp-long v1, v1, v19

    const-wide/32 v2, -0x10000

    if-gez v1, :cond_8

    long-to-int v1, v13

    .line 1093
    aget-wide v6, v4, v1

    long-to-int v1, v6

    int-to-byte v1, v1

    if-nez v1, :cond_6

    shr-long v8, v6, v11

    long-to-int v1, v8

    .line 1096
    invoke-static {v0, v5, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_6
    if-ne v1, v12, :cond_7

    add-int/lit8 v1, v5, 0x1

    shr-long v8, v6, v9

    long-to-int v4, v8

    int-to-char v4, v4

    .line 1099
    aput-char v4, v0, v5

    move v5, v1

    :cond_7
    :goto_3
    and-long v1, v15, v2

    shr-long v3, v6, v10

    or-long/2addr v1, v3

    .line 1101
    invoke-static {v0, v5, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v5, v5, 0x4

    return v5

    .line 1105
    :cond_8
    div-long v2, v13, v6

    mul-long v19, v2, v6

    sub-long v13, v13, v19

    long-to-int v1, v13

    .line 1107
    div-long v13, v2, v6

    .line 1108
    aget-wide v19, v4, v1

    const-wide/16 v17, 0x0

    cmp-long v1, v13, v17

    if-nez v1, :cond_b

    long-to-int v1, v2

    .line 1110
    aget-wide v1, v4, v1

    long-to-int v3, v1

    int-to-byte v3, v3

    if-nez v3, :cond_9

    shr-long v3, v1, v11

    long-to-int v3, v3

    .line 1113
    invoke-static {v0, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_9
    if-ne v3, v12, :cond_a

    add-int/lit8 v3, v5, 0x1

    shr-long v6, v1, v9

    long-to-int v4, v6

    int-to-char v4, v4

    .line 1116
    aput-char v4, v0, v5

    move v5, v3

    :cond_a
    :goto_4
    shr-long/2addr v1, v10

    long-to-int v1, v1

    int-to-char v1, v1

    .line 1118
    aput-char v1, v0, v5

    add-int/lit8 v1, v5, 0x1

    shr-long v2, v19, v11

    long-to-int v2, v2

    .line 1119
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v1, v5, 0x3

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v15

    shr-long v6, v19, v10

    or-long/2addr v2, v6

    .line 1120
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v5, v5, 0x7

    return v5

    :cond_b
    mul-long v17, v13, v6

    sub-long v2, v2, v17

    long-to-int v1, v2

    .line 1124
    div-long v2, v13, v6

    long-to-int v2, v2

    .line 1125
    aget-wide v6, v4, v1

    const-wide v17, 0xffffffff0000L

    if-nez v2, :cond_e

    long-to-int v1, v13

    .line 1127
    aget-wide v1, v4, v1

    long-to-int v3, v1

    int-to-byte v3, v3

    if-nez v3, :cond_c

    shr-long v3, v1, v11

    long-to-int v3, v3

    .line 1130
    invoke-static {v0, v5, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    :cond_c
    if-ne v3, v12, :cond_d

    add-int/lit8 v3, v5, 0x1

    shr-long v12, v1, v9

    long-to-int v4, v12

    int-to-char v4, v4

    .line 1133
    aput-char v4, v0, v5

    move v5, v3

    :cond_d
    :goto_5
    shr-long/2addr v1, v10

    long-to-int v1, v1

    int-to-char v1, v1

    .line 1135
    aput-char v1, v0, v5

    add-int/lit8 v1, v5, 0x1

    shr-long v2, v6, v11

    long-to-int v2, v2

    int-to-char v2, v2

    .line 1136
    aput-char v2, v0, v1

    add-int/lit8 v1, v5, 0x2

    and-long v2, v19, v17

    shl-long/2addr v2, v11

    shr-long/2addr v6, v9

    or-long/2addr v2, v6

    .line 1137
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v1, v5, 0x6

    const-wide/32 v2, -0x10000

    and-long/2addr v2, v15

    shr-long v6, v19, v10

    or-long/2addr v2, v6

    .line 1138
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v5, v5, 0xa

    return v5

    :cond_e
    mul-int/lit16 v1, v2, 0x3e8

    int-to-long v9, v1

    sub-long/2addr v13, v9

    long-to-int v1, v13

    .line 1142
    div-int/lit16 v8, v2, 0x3e8

    .line 1143
    aget-wide v9, v4, v1

    if-nez v8, :cond_11

    .line 1145
    aget-wide v1, v4, v2

    long-to-int v4, v1

    int-to-byte v4, v4

    if-nez v4, :cond_f

    shr-long v12, v1, v11

    long-to-int v4, v12

    .line 1148
    invoke-static {v0, v5, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    :cond_f
    if-ne v4, v12, :cond_10

    add-int/lit8 v4, v5, 0x1

    const/16 v8, 0x20

    shr-long v12, v1, v8

    long-to-int v8, v12

    int-to-char v8, v8

    .line 1151
    aput-char v8, v0, v5

    move v5, v4

    :cond_10
    :goto_6
    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-char v1, v1

    .line 1153
    aput-char v1, v0, v5

    add-int/lit8 v1, v5, 0x1

    shr-long v12, v9, v11

    long-to-int v2, v12

    .line 1154
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v1, v5, 0x3

    const-wide/32 v12, -0x10000

    and-long/2addr v6, v12

    const/16 v2, 0x30

    shr-long v3, v9, v2

    or-long/2addr v3, v6

    .line 1155
    invoke-static {v0, v1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v1, v5, 0x7

    shr-long v3, v19, v11

    long-to-int v3, v3

    .line 1156
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v1, v5, 0x9

    and-long v3, v15, v12

    shr-long v6, v19, v2

    or-long v2, v3, v6

    .line 1157
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v5, v5, 0xd

    return v5

    :cond_11
    mul-int/lit16 v1, v8, 0x3e8

    sub-int/2addr v2, v1

    .line 1161
    div-int/lit16 v1, v8, 0x3e8

    .line 1162
    aget-wide v13, v4, v2

    if-nez v1, :cond_14

    .line 1164
    sget-object v1, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget v1, v1, v8

    int-to-byte v2, v1

    if-nez v2, :cond_12

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    int-to-char v2, v2

    .line 1167
    aput-char v2, v0, v5

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    int-to-char v4, v4

    .line 1168
    aput-char v4, v0, v2

    add-int/lit8 v5, v5, 0x2

    goto :goto_7

    :cond_12
    if-ne v2, v12, :cond_13

    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    int-to-char v4, v4

    .line 1171
    aput-char v4, v0, v5

    move v5, v2

    :cond_13
    :goto_7
    add-int/lit8 v2, v5, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-char v1, v1

    .line 1173
    aput-char v1, v0, v5

    move v1, v2

    const/16 v2, 0x30

    goto :goto_8

    :cond_14
    mul-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v8, v2

    .line 1175
    aget-wide v3, v4, v8

    invoke-static {v0, v5, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    const/16 v2, 0x30

    add-int/2addr v1, v2

    int-to-char v1, v1

    .line 1176
    aput-char v1, v0, v5

    add-int/lit8 v1, v5, 0x4

    :goto_8
    shr-long v3, v13, v11

    long-to-int v3, v3

    .line 1180
    invoke-static {v0, v1, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([CII)V

    add-int/lit8 v4, v1, 0x2

    const-wide/32 v21, -0x10000

    and-long v8, v9, v21

    shr-long v12, v13, v2

    or-long/2addr v8, v12

    .line 1181
    invoke-static {v0, v4, v8, v9}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v2, v1, 0x6

    shr-long v4, v6, v11

    long-to-int v4, v4

    int-to-char v4, v4

    .line 1183
    aput-char v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    and-long v4, v19, v17

    shl-long/2addr v4, v11

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    or-long/2addr v4, v6

    .line 1184
    invoke-static {v0, v2, v4, v5}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v2, v1, 0xb

    const-wide/32 v4, -0x10000

    and-long/2addr v4, v15

    const/16 v3, 0x30

    shr-long v6, v19, v3

    or-long v3, v4, v6

    .line 1185
    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 v1, v1, 0xf

    return v1
.end method

.method public static writeLocalDate([BIIII)I
    .locals 8

    const/16 v0, 0x2d

    if-gez p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 785
    aput-byte v0, p0, p1

    neg-int p2, p2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x270f

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x2b

    .line 788
    aput-byte v2, p0, p1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 792
    div-int/lit8 v1, p2, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p2, v2

    .line 794
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v5, p1

    add-long/2addr v3, v5

    sget-object v7, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short v1, v7, v1

    invoke-virtual {v2, p0, v3, v4, v1}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    .line 795
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v2, v5

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    aget-short p2, v7, p2

    invoke-virtual {v1, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    .line 798
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([BII)I

    move-result p1

    .line 801
    :goto_2
    aput-byte v0, p0, p1

    .line 802
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p3, v5, p3

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p2, p1, 0x3

    .line 803
    aput-byte v0, p0, p2

    .line 804
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v0, v3

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    aget-short p3, v5, p4

    invoke-virtual {p2, p0, v0, v1, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public static writeLocalDate([CIIII)I
    .locals 8

    const/16 v0, 0x2d

    if-gez p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 810
    aput-char v0, p0, p1

    neg-int p2, p2

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    const/16 v1, 0x270f

    if-le p2, v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x2b

    .line 813
    aput-char v2, p0, p1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x2710

    if-ge p2, v1, :cond_2

    .line 817
    div-int/lit8 v1, p2, 0x64

    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p2, v2

    .line 819
    sget-object v2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v3, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget v1, v5, v1

    invoke-virtual {v2, p0, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 820
    sget-object v1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v4, p1, 0x2

    shl-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    add-long/2addr v2, v6

    aget p2, v5, p2

    invoke-virtual {v1, p0, v2, v3, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x4

    goto :goto_2

    .line 823
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeInt32([CII)I

    move-result p1

    .line 826
    :goto_2
    aput-char v0, p0, p1

    .line 827
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v3, p1, 0x1

    shl-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p3, v3, p3

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p2, p1, 0x3

    .line 828
    aput-char v0, p0, p2

    .line 829
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p3, p1, 0x4

    shl-int/lit8 p3, p3, 0x1

    int-to-long v4, p3

    add-long/2addr v0, v4

    aget p3, v3, p4

    invoke-virtual {p2, p0, v0, v1, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p1, p1, 0x6

    return p1
.end method

.method public static writeLocalTime([BILjava/time/LocalTime;)I
    .locals 3

    .line 842
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    invoke-virtual {p2}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([BIIII)V

    add-int/lit8 p1, p1, 0x8

    .line 845
    invoke-virtual {p2}, Ljava/time/LocalTime;->getNano()I

    move-result p2

    if-eqz p2, :cond_0

    .line 846
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeNano([BII)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static writeLocalTime([CILjava/time/LocalTime;)I
    .locals 3

    .line 922
    invoke-virtual {p2}, Ljava/time/LocalTime;->getHour()I

    move-result v0

    invoke-virtual {p2}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    invoke-virtual {p2}, Ljava/time/LocalTime;->getSecond()I

    move-result v2

    invoke-static {p0, p1, v0, v1, v2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeLocalTime([CIIII)V

    add-int/lit8 p1, p1, 0x8

    .line 925
    invoke-virtual {p2}, Ljava/time/LocalTime;->getNano()I

    move-result p2

    if-eqz p2, :cond_0

    .line 926
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->writeNano([CII)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static writeLocalTime([BIIII)V
    .locals 8

    .line 834
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    int-to-long v3, p1

    add-long/2addr v1, v3

    sget-object v5, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS:[S

    aget-short p2, v5, p2

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p2, p1, 0x2

    const/16 v0, 0x3a

    .line 835
    aput-byte v0, p0, p2

    .line 836
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr v1, v3

    const-wide/16 v6, 0x3

    add-long/2addr v1, v6

    aget-short p3, v5, p3

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    add-int/lit8 p1, p1, 0x5

    .line 837
    aput-byte v0, p0, p1

    .line 838
    sget-object p1, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide p2, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_BYTE_BASE_OFFSET:J

    add-long/2addr p2, v3

    const-wide/16 v0, 0x6

    add-long/2addr p2, v0

    aget-short p4, v5, p4

    invoke-virtual {p1, p0, p2, p3, p4}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void
.end method

.method public static writeLocalTime([CIIII)V
    .locals 6

    .line 914
    sget-object v0, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    shl-int/lit8 v3, p1, 0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    sget-object v3, Lcom/alibaba/fastjson2/util/IOUtils;->PACKED_DIGITS_UTF16:[I

    aget p2, v3, p2

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p2, p1, 0x2

    const/16 v0, 0x3a

    .line 915
    aput-char v0, p0, p2

    .line 916
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 v4, p1, 0x3

    shl-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    add-long/2addr v1, v4

    aget p3, v3, p3

    invoke-virtual {p2, p0, v1, v2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 p2, p1, 0x5

    .line 917
    aput-char v0, p0, p2

    .line 918
    sget-object p2, Lcom/alibaba/fastjson2/util/JDKUtils;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ARRAY_CHAR_BASE_OFFSET:J

    add-int/lit8 p1, p1, 0x6

    shl-int/lit8 p1, p1, 0x1

    int-to-long v4, p1

    add-long/2addr v0, v4

    aget p1, v3, p4

    invoke-virtual {p2, p0, v0, v1, p1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static writeNano([BII)I
    .locals 4

    .line 850
    div-int/lit16 v0, p2, 0x3e8

    .line 851
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int/2addr p2, v2

    .line 854
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_32:[I

    aget v3, v2, v1

    and-int/lit16 v3, v3, -0x100

    or-int/lit8 v3, v3, 0x2e

    invoke-static {p0, p1, v3}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    if-nez p2, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return p1

    .line 864
    :cond_0
    aget v0, v2, v0

    goto :goto_0

    :cond_1
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 866
    aget v0, v2, v0

    :goto_0
    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    .line 869
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 870
    aput-byte v3, p0, v1

    add-int/lit8 p1, p1, 0x2

    if-nez p2, :cond_2

    shr-int/lit8 p2, v0, 0x18

    int-to-byte p2, p2

    .line 873
    aput-byte p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 877
    :cond_2
    aget p2, v2, p2

    and-int/lit16 p2, p2, -0x100

    shr-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/IOUtils;->putInt([BII)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public static writeNano([CII)I
    .locals 9

    .line 882
    div-int/lit16 v0, p2, 0x3e8

    .line 883
    div-int/lit16 v1, v0, 0x3e8

    mul-int/lit16 v2, v0, 0x3e8

    sub-int/2addr p2, v2

    .line 886
    sget-object v2, Lcom/alibaba/fastjson2/util/IOUtils;->DIGITS_K_64:[J

    aget-wide v3, v2, v1

    const-wide/32 v5, -0x10000

    and-long/2addr v3, v5

    sget-wide v7, Lcom/alibaba/fastjson2/util/IOUtils;->DOT_X0:J

    or-long/2addr v3, v7

    invoke-static {p0, p1, v3, v4}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 p1, p1, 0x4

    if-nez p2, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return p1

    .line 896
    :cond_0
    aget-wide v0, v2, v0

    goto :goto_0

    :cond_1
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr v0, v1

    .line 898
    aget-wide v0, v2, v0

    :goto_0
    const/16 v3, 0x10

    shr-long v3, v0, v3

    long-to-int v3, v3

    int-to-char v3, v3

    .line 901
    aput-char v3, p0, p1

    add-int/lit8 v3, p1, 0x1

    const/16 v4, 0x20

    shr-long v7, v0, v4

    long-to-int v4, v7

    int-to-char v4, v4

    .line 902
    aput-char v4, p0, v3

    add-int/lit8 p1, p1, 0x2

    const/16 v3, 0x30

    if-nez p2, :cond_2

    shr-long/2addr v0, v3

    long-to-int p2, v0

    int-to-char p2, p2

    .line 905
    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    .line 909
    :cond_2
    aget-wide v7, v2, p2

    and-long v4, v7, v5

    shr-long/2addr v0, v3

    or-long/2addr v0, v4

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/IOUtils;->putLong([CIJ)V

    add-int/lit8 p1, p1, 0x4

    return p1
.end method
