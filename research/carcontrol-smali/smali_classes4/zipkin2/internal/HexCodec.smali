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
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " should be a 1 to 32 character lower-hex string with no prefix"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/String;)J
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

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

    .line 29
    :goto_0
    invoke-static {p0, v0}, Lzipkin2/internal/HexCodec;->lowerHexToUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0

    .line 24
    :cond_1
    invoke-static {p0}, Lzipkin2/internal/HexCodec;->isntLowerHexLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0
.end method

.method public static lowerHexToUnsignedLong(Ljava/lang/String;I)J
    .locals 5

    add-int/lit8 v0, p1, 0x10

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-wide/16 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x4

    shl-long/2addr v1, v4

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    add-int/lit8 v3, v3, -0x30

    :goto_1
    int-to-long v3, v3

    or-long/2addr v1, v3

    goto :goto_2

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x66

    if-gt v3, v4, :cond_1

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    goto :goto_1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {p0}, Lzipkin2/internal/HexCodec;->isntLowerHexLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object p0

    throw p0

    :cond_2
    return-wide v1
.end method
