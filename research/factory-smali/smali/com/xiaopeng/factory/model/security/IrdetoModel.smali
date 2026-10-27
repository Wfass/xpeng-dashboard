.class public Lcom/xiaopeng/factory/model/security/IrdetoModel;
.super Ljava/lang/Object;
.source "IrdetoModel.java"


# static fields
.field public static final CERT_PATH:Ljava/lang/String; = "/mnt/vendor/private/sec/xp0109.png"

.field private static final CYPTO_IV:Ljava/lang/String; = "00000000000000000000000000000000"

.field private static final CYPTO_KEY:Ljava/lang/String; = "6368656e677a69636172303130393137"

.field public static final OLD_CERT_PATH:Ljava/lang/String; = "/private/xp0109.png"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesCbcEncrypt([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p0, "sSrc"    # [B
    .param p1, "sKey"    # Ljava/lang/String;
    .param p2, "ivParameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 50
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-static {p1}, Lcom/xiaopeng/factory/model/security/IrdetoModel;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    .local v1, "raw":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 52
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {p2}, Lcom/xiaopeng/factory/model/security/IrdetoModel;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 53
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 54
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 55
    .local v4, "encrypted":[B
    return-object v4
.end method

.method public static cryptoDecode([B)[B
    .locals 3
    .param p0, "data"    # [B

    .line 27
    :try_start_0
    const-string v0, "IR_CRYPTO_AES_CBC_DECRYPT"

    .line 28
    .local v0, "type":Ljava/lang/String;
    const-string v1, "aes_id1"

    const-string v2, "00000000000000000000000000000000"

    invoke-static {v0, v1, v2, p0}, Lcom/irdeto/securesdk/isf;->isfCryptoOperate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 29
    .end local v0    # "type":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static cryptoEncode([B)[B
    .locals 2
    .param p0, "data"    # [B

    .line 38
    :try_start_0
    const-string v0, "6368656e677a69636172303130393137"

    const-string v1, "00000000000000000000000000000000"

    invoke-static {p0, v0, v1}, Lcom/xiaopeng/factory/model/security/IrdetoModel;->aesCbcEncrypt([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 60
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 61
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 62
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 63
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 61
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
