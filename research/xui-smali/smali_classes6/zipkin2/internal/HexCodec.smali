.class public final Lzipkin2/internal/HexCodec;
.super Ljava/lang/Object;
.source "HexCodec.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isntLowerHexLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "lowerHex"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should be a 1 to 32 character lower-hex string with no prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "lowerHex"    # Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 24
    .local v0, "length":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    .line 27
    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x10

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 29
    .local v1, "beginIndex":I
    :goto_0
    invoke-static {p0, v1}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v2

    return-wide v2

    .line 24
    .end local v1    # "beginIndex":I
    :cond_1
    invoke-static {p0}, Lzipkin2/internal/HexCodec;->isntLowerHexLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/String;I)J
    .locals 6
    .param p0, "lowerHex"    # Ljava/lang/String;
    .param p1, "index"    # I

    .line 37
    const-wide/16 v0, 0x0

    .line 38
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "endIndex":I
    :goto_0
    if-ge p1, v2, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 40
    .local v3, "c":C
    const/4 v4, 0x4

    shl-long/2addr v0, v4

    .line 41
    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    .line 42
    add-int/lit8 v4, v3, -0x30

    int-to-long v4, v4

    or-long/2addr v0, v4

    goto :goto_1

    .line 43
    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-gt v3, v4, :cond_1

    .line 44
    add-int/lit8 v4, v3, -0x61

    add-int/lit8 v4, v4, 0xa

    int-to-long v4, v4

    or-long/2addr v0, v4

    .line 38
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 46
    .restart local v3    # "c":C
    :cond_1
    invoke-static {p0}, Lzipkin2/internal/HexCodec;->isntLowerHexLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 49
    .end local v2    # "endIndex":I
    .end local v3    # "c":C
    :cond_2
    return-wide v0
.end method
