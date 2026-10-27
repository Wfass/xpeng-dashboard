.class public final Lbrave/internal/HexCodec;
.super Ljava/lang/Object;
.source "HexCodec.java"


# static fields
.field static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [C

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

    .line 81
    return-void
.end method

.method static isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "lowerHex"    # Ljava/lang/CharSequence;

    .line 49
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " should be a 1 to 32 character lower-hex string with no prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J
    .locals 7
    .param p0, "lowerHex"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .param p2, "endIndex"    # I

    .line 33
    const-wide/16 v0, 0x0

    move-wide v2, v0

    .line 34
    .local v2, "result":J
    :goto_0
    if-ge p1, p2, :cond_2

    .line 35
    add-int/lit8 v4, p1, 0x1

    .local v4, "index":I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 36
    .local p1, "c":C
    const/4 v5, 0x4

    shl-long/2addr v2, v5

    .line 37
    const/16 v5, 0x30

    if-lt p1, v5, :cond_0

    const/16 v5, 0x39

    if-gt p1, v5, :cond_0

    .line 38
    add-int/lit8 v5, p1, -0x30

    int-to-long v5, v5

    or-long/2addr v2, v5

    goto :goto_1

    .line 39
    :cond_0
    const/16 v5, 0x61

    if-lt p1, v5, :cond_1

    const/16 v5, 0x66

    if-gt p1, v5, :cond_1

    .line 40
    add-int/lit8 v5, p1, -0x61

    add-int/lit8 v5, v5, 0xa

    int-to-long v5, v5

    or-long/2addr v2, v5

    .line 44
    .end local p1    # "c":C
    :goto_1
    nop

    .line 33
    move p1, v4

    goto :goto_0

    .line 42
    .restart local p1    # "c":C
    :cond_1
    return-wide v0

    .line 45
    .end local v4    # "index":I
    .local p1, "index":I
    :cond_2
    return-wide v2
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/CharSequence;)J
    .locals 4
    .param p0, "lowerHex"    # Ljava/lang/CharSequence;

    .line 11
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 12
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    .line 15
    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 17
    .local v1, "beginIndex":I
    :goto_0
    invoke-static {p0, v1}, Lbrave/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/CharSequence;I)J

    move-result-wide v2

    return-wide v2

    .line 12
    .end local v1    # "beginIndex":I
    :cond_1
    invoke-static {p0}, Lbrave/internal/HexCodec;->isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/CharSequence;I)J
    .locals 5
    .param p0, "lowerHex"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I

    .line 25
    add-int/lit8 v0, p1, 0x10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 26
    .local v0, "endIndex":I
    invoke-static {p0, p1, v0}, Lbrave/internal/HexCodec;->lenientLowerHexToUnsignedLong(Ljava/lang/CharSequence;II)J

    move-result-wide v1

    .line 27
    .local v1, "result":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 28
    return-wide v1

    .line 27
    :cond_0
    invoke-static {p0}, Lbrave/internal/HexCodec;->isntLowerHexLong(Ljava/lang/CharSequence;)Ljava/lang/NumberFormatException;

    move-result-object v3

    throw v3
.end method

.method public static toLowerHex(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    .line 55
    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 56
    .local v0, "data":[C
    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lbrave/internal/HexCodec;->writeHexLong([CIJ)V

    .line 57
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static writeHexByte([CIB)V
    .locals 3
    .param p0, "data"    # [C
    .param p1, "pos"    # I
    .param p2, "b"    # B

    .line 76
    add-int/lit8 v0, p1, 0x0

    sget-object v1, Lbrave/internal/HexCodec;->HEX_DIGITS:[C

    shr-int/lit8 v2, p2, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    .line 77
    add-int/lit8 v0, p1, 0x1

    sget-object v1, Lbrave/internal/HexCodec;->HEX_DIGITS:[C

    and-int/lit8 v2, p2, 0xf

    aget-char v1, v1, v2

    aput-char v1, p0, v0

    .line 78
    return-void
.end method

.method public static writeHexLong([CIJ)V
    .locals 5
    .param p0, "data"    # [C
    .param p1, "pos"    # I
    .param p2, "v"    # J

    .line 62
    add-int/lit8 v0, p1, 0x0

    const/16 v1, 0x38

    ushr-long v1, p2, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 63
    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x30

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 64
    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x28

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 65
    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x20

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 66
    add-int/lit8 v0, p1, 0x8

    const/16 v1, 0x18

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 67
    add-int/lit8 v0, p1, 0xa

    const/16 v1, 0x10

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 68
    add-int/lit8 v0, p1, 0xc

    const/16 v1, 0x8

    ushr-long v1, p2, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 69
    add-int/lit8 v0, p1, 0xe

    and-long v1, p2, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {p0, v0, v1}, Lbrave/internal/HexCodec;->writeHexByte([CIB)V

    .line 70
    return-void
.end method
