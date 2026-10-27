.class public final Lbrave/internal/HexCodec;
.super Ljava/lang/Object;
.source "HexCodec.java"


# static fields
.field static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lbrave/internal/HexCodec;->HEX_DIGITS:[C

    return-void

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

.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " should be a 1 to 32 character lower-hex string with no prefix"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J
    .locals 7

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 v4, p1, 0x1

    .line 35
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/4 v5, 0x4

    shl-long/2addr v2, v5

    const/16 v5, 0x30

    if-lt p1, v5, :cond_0

    const/16 v5, 0x39

    if-gt p1, v5, :cond_0

    add-int/lit8 p1, p1, -0x30

    :goto_1
    int-to-long v5, p1

    or-long/2addr v2, v5

    goto :goto_2

    :cond_0
    const/16 v5, 0x61

    if-lt p1, v5, :cond_1

    const/16 v5, 0x66

    if-gt p1, v5, :cond_1

    add-int/lit8 p1, p1, -0x61

    add-int/lit8 p1, p1, 0xa

    goto :goto_1

    :goto_2
    move p1, v4

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    return-wide v2
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/CharSequence;)J
    .locals 2

    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    invoke-static {p0, v0}, Lbrave/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/CharSequence;I)J

    move-result-wide v0

    return-wide v0

    .line 12
    :cond_1
    invoke-static {p0}, Lbrave/internal/HexCodec;->isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/CharSequence;I)J
    .locals 4

    add-int/lit8 v0, p1, 0x10

    .line 25
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 26
    invoke-static {p0, p1, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    return-wide v0

    .line 27
    :cond_0
    invoke-static {p0}, Lbrave/internal/HexCodec;->isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static toLowerHex(J)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1, p0, p1}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 57
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method static writeHexByte([CIB)V
    .locals 3

    add-int/lit8 v0, p1, 0x0

    .line 76
    sget-object v1, Lbrave/internal/HexCodec;->HEX_DIGITS:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    aput-char v2, p0, v0

    add-int/lit8 p1, p1, 0x1

    and-int/lit8 p2, p2, 0xf

    .line 77
    aget-char p2, v1, p2

    aput-char p2, p0, p1

    return-void
.end method

.method public static writeHexLong([CIJ)V
    .locals 5

    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 62
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 63
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 64
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 65
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0x8

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 66
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0xa

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 67
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 v0, p1, 0xc

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 68
    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    add-int/lit8 p1, p1, 0xe

    and-long/2addr p2, v3

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 69
    invoke-static {p0, p1, p2}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    return-void
.end method
