.class public final Lcom/xiaopeng/datalog/utils/AnonymizationUtil;
.super Ljava/lang/Object;
.source "AnonymizationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnonymizationUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytes2Hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    .line 51
    .local v3, "aByte":B
    and-int/lit16 v4, v3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 54
    const-string v5, "0"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .end local v3    # "aByte":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v4    # "temp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static doAnonymizationInteger(Ljava/lang/String;)J
    .locals 3
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "anonymousStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->md5ToLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static doAnonymizationStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 17
    invoke-static {p0}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "sha256Result":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 32
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 33
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 34
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 35
    .local v1, "digest":[B
    invoke-static {v1}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 36
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "digest":[B
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AnonymizationUtil"

    const-string v2, "getSHA256: "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static md5ToLong(Ljava/lang/String;)J
    .locals 3
    .param p0, "md5Str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "md5Str"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 63
    .local v0, "bigInt":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    return-wide v1
.end method
