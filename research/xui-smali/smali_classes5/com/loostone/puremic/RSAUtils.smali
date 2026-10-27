.class public final Lcom/loostone/puremic/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field private static RSA:Ljava/lang/String;

.field public static SIGALGORITHM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "RSA"

    sput-object v0, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    .line 35
    const-string v0, "SHA1WithRSA"

    sput-object v0, Lcom/loostone/puremic/RSAUtils;->SIGALGORITHM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "skey"    # Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 174
    return-object v0

    .line 176
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/loostone/puremic/RSAUtils;->loadPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 177
    .local v1, "privateKey":Ljava/security/PrivateKey;
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/loostone/puremic/RSAUtils;->decryptData([BLjava/security/PrivateKey;)[B

    move-result-object v2

    .line 178
    .local v2, "decryptByte":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 179
    .local v0, "decryptStr":Ljava/lang/String;
    return-object v0

    .line 180
    .end local v0    # "decryptStr":Ljava/lang/String;
    .end local v1    # "privateKey":Ljava/security/PrivateKey;
    .end local v2    # "decryptByte":[B
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    return-object v0
.end method

.method public static Encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "pkey"    # Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/loostone/puremic/RSAUtils;->loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    .line 162
    .local v1, "publicKey":Ljava/security/PublicKey;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2, v1}, Lcom/loostone/puremic/RSAUtils;->encryptData([BLjava/security/PublicKey;)[B

    move-result-object v2

    .line 164
    .local v2, "encryptByte":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 165
    .local v0, "afterencrypt":Ljava/lang/String;
    return-object v0

    .line 166
    .end local v0    # "afterencrypt":Ljava/lang/String;
    .end local v1    # "publicKey":Ljava/security/PublicKey;
    .end local v2    # "encryptByte":[B
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    return-object v0
.end method

.method public static SignData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "skey"    # Ljava/lang/String;

    .line 188
    :try_start_0
    invoke-static {p1}, Lcom/loostone/puremic/RSAUtils;->loadPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    .line 189
    .local v0, "privateKey":Ljava/security/PrivateKey;
    invoke-static {p0, v0}, Lcom/loostone/puremic/RSAUtils;->signData(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 190
    .end local v0    # "privateKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    const/4 v1, 0x0

    return-object v1
.end method

.method public static VerifyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "pkey"    # Ljava/lang/String;

    .line 198
    :try_start_0
    invoke-static {p2}, Lcom/loostone/puremic/RSAUtils;->loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 199
    .local v0, "publicKey":Ljava/security/PublicKey;
    invoke-static {p0, p1, v0}, Lcom/loostone/puremic/RSAUtils;->verifyData(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 200
    .end local v0    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private static decryptData([BLjava/security/PrivateKey;)[B
    .locals 2
    .param p0, "encryptedData"    # [B
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .line 108
    :try_start_0
    sget-object v0, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 109
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 110
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static encryptData([BLjava/security/PublicKey;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/security/PublicKey;

    .line 83
    :try_start_0
    sget-object v0, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 85
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 87
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const/4 v1, 0x0

    return-object v1
.end method

.method public static generateRSAKeyPair()Ljava/security/KeyPair;
    .locals 1

    .line 44
    const/16 v0, 0x400

    invoke-static {v0}, Lcom/loostone/puremic/RSAUtils;->generateRSAKeyPair(I)Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static generateRSAKeyPair(I)Ljava/security/KeyPair;
    .locals 2
    .param p0, "keyLength"    # I

    .line 59
    :try_start_0
    sget-object v0, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 60
    .local v0, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 61
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 62
    .end local v0    # "kpg":Ljava/security/KeyPairGenerator;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 65
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "privateExponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "bigIntModulus":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, "bigIntPrivateExponent":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 275
    .local v2, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    sget-object v3, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 276
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 277
    .local v4, "privateKey":Ljava/security/PrivateKey;
    return-object v4
.end method

.method public static getPrivateKey([B)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 235
    .local v0, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    sget-object v1, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 236
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 237
    .local v2, "privateKey":Ljava/security/PrivateKey;
    return-object v2
.end method

.method public static getPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "modulus"    # Ljava/lang/String;
    .param p1, "publicExponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "bigIntModulus":Ljava/math/BigInteger;
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 254
    .local v1, "bigIntPrivateExponent":Ljava/math/BigInteger;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 255
    .local v2, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    sget-object v3, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 256
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 257
    .local v4, "publicKey":Ljava/security/PublicKey;
    return-object v4
.end method

.method public static getPublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .param p0, "keyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 218
    .local v0, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    sget-object v1, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 219
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 220
    .local v2, "publicKey":Ljava/security/PublicKey;
    return-object v2
.end method

.method public static loadPrivateKey(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/loostone/puremic/RSAUtils;->readKey(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loostone/puremic/RSAUtils;->loadPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 375
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NullPointerException"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 374
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "IOException"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "privateKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 322
    .local v0, "buffer":[B
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 323
    .local v1, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    sget-object v2, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 324
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 331
    .end local v0    # "buffer":[B
    .end local v1    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NullPointer"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 330
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InvalidKey"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 327
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no such Algorithm"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadPublicKey(Ljava/io/InputStream;)Ljava/security/PublicKey;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 349
    :try_start_0
    invoke-static {p0}, Lcom/loostone/puremic/RSAUtils;->readKey(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loostone/puremic/RSAUtils;->loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NullPointerException"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 352
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "IOException"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static loadPublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 292
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 293
    .local v0, "buffer":[B
    sget-object v1, Lcom/loostone/puremic/RSAUtils;->RSA:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 294
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 295
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 302
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "NullPointer"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "InvalidKey"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_2
    move-exception v0

    .line 298
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no such Algorithm"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static printPrivateKeyInfo(Ljava/security/PrivateKey;)V
    .locals 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;

    .line 425
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 426
    .local v0, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------RSAPrivateKey ----------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 427
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivateExponent.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 430
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PrivatecExponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static printPublicKeyInfo(Ljava/security/PublicKey;)V
    .locals 4
    .param p0, "publicKey"    # Ljava/security/PublicKey;

    .line 415
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 416
    .local v0, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "----------RSAPublicKey----------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modulus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 419
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublicExponent.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PublicExponent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private static readKey(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 392
    .local v1, "readLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_1

    .line 395
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 397
    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 405
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static signData(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 122
    .local v0, "data":[B
    sget-object v1, Lcom/loostone/puremic/RSAUtils;->SIGALGORITHM:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 123
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 124
    invoke-virtual {v1, v0}, Ljava/security/Signature;->update([B)V

    .line 125
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v2

    .line 127
    .local v2, "signatureBytes":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 132
    .end local v0    # "data":[B
    .end local v1    # "sig":Ljava/security/Signature;
    .end local v2    # "signatureBytes":[B
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signing failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid key"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 129
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown signature algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/loostone/puremic/RSAUtils;->SIGALGORITHM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static verifyData(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 141
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 143
    .local v1, "signatureBytes":[B
    sget-object v2, Lcom/loostone/puremic/RSAUtils;->SIGALGORITHM:Ljava/lang/String;

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 144
    .local v2, "sig":Ljava/security/Signature;
    invoke-virtual {v2, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 145
    invoke-virtual {v2, v0}, Ljava/security/Signature;->update([B)V

    .line 147
    invoke-virtual {v2, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 152
    .end local v0    # "data":[B
    .end local v1    # "signatureBytes":[B
    .end local v2    # "sig":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/SignatureException;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signing failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Invalid key"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v0

    .line 149
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown signature algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/loostone/puremic/RSAUtils;->SIGALGORITHM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
