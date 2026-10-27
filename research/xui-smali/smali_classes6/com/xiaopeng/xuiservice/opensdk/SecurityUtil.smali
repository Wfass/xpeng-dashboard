.class public Lcom/xiaopeng/xuiservice/opensdk/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64Decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "base64"    # Ljava/lang/String;

    .line 36
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # [B

    .line 32
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ecPublicKey()Ljava/security/PublicKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/security/spec/ECPoint;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "98536239937570091381349016063140841027202266507983536246632853046696126459053"

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "77751423219411590423181027840614453877034068748914689313600065475378352029712"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 48
    .local v0, "w":Ljava/security/spec/ECPoint;
    new-instance v1, Ljava/security/spec/EllipticCurve;

    new-instance v2, Ljava/security/spec/ECFieldFp;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853951"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573530086143415290314195533631308867097853948"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "41058363725152142129326129780047268409114441015993725554835256314039467401291"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 56
    .local v1, "curve":Ljava/security/spec/EllipticCurve;
    new-instance v2, Ljava/security/spec/ECPoint;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "48439561293906451759052585252797914202762949526041747995844080717082404635286"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "36134250956749795798585127919587881956611106672985015071877198253568414405109"

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 60
    .local v2, "g":Ljava/security/spec/ECPoint;
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "115792089210356248762697446949407573529996955224135760342422259061068512044369"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, "n":Ljava/math/BigInteger;
    const/4 v4, 0x1

    .line 62
    .local v4, "h":I
    new-instance v5, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v5, v1, v2, v3, v4}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    .line 63
    .local v5, "ecParameterSpec":Ljava/security/spec/ECParameterSpec;
    new-instance v6, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v6, v0, v5}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 64
    .local v6, "ecPublicKeySpec":Ljava/security/spec/ECPublicKeySpec;
    const-string v7, "EC"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v7

    .line 65
    .local v7, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v7, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v8

    return-object v8
.end method

.method public static verifyAppKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appKey"    # Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    const-string v1, "SHA256withECDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 20
    .local v1, "signature":Ljava/security/Signature;
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/SecurityUtil;->ecPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 21
    .local v2, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {v1, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->update([B)V

    .line 23
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/opensdk/SecurityUtil;->base64Decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 24
    .end local v1    # "signature":Ljava/security/Signature;
    .end local v2    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    return v0

    .line 15
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return v0
.end method
