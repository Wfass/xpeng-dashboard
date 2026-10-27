.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .line 41
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 42
    .local v0, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 44
    .local v1, "md":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 47
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "shaHex":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 51
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .end local v5    # "shaHex":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 54
    .end local v0    # "mdInst":Ljava/security/MessageDigest;
    .end local v1    # "md":[B
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 57
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    return-object v0
.end method

.method public static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "decript"    # Ljava/lang/String;

    .line 17
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 18
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 20
    .local v1, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 23
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "shaHex":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 27
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    .end local v5    # "shaHex":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 29
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 30
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "messageDigest":[B
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 33
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string v0, ""

    return-object v0
.end method
