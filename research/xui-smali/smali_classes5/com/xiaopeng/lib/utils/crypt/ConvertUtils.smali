.class public Lcom/xiaopeng/lib/utils/crypt/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 15
    const-string v0, "0123456789ABCDEF"

    .line 16
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 17
    const-string v1, ""

    return-object v1

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 19
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 20
    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hexStr"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 34
    .local v0, "len":I
    new-array v2, v0, [B

    .line 35
    .local v2, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 36
    mul-int v4, v1, v3

    mul-int v5, v1, v3

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 35
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method
