.class public Landroid/pso/PsoAKS;
.super Ljava/lang/Object;


# static fields
.field public static final DecBlockSize:I = 0x2800

.field private static b:Ljava/security/KeyStore;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/pso/PsoAKS;->a()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "XpengAndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    sput-object v1, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    sget-object v1, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    sput-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    const-string v0, "PsoAKS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore initial failed...\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1
.end method

.method protected a(Ljava/lang/String;Ljava/security/PrivateKey;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    invoke-static {p1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a([B)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method protected a([BLjava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "der to  PublicKey Failed\r\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0x8d

    invoke-direct {p2, v0, p1, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2

    :cond_1
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p2, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    const/16 v0, -0xe

    const-string v1, "PublicKey der input is null"

    invoke-direct {p1, p2, v1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected a(Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA512withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Verify Signature Failed...\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x29

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result p1

    sget-object v1, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    :catch_0
    move-exception p1

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "CBC"

    const-string v3, "NoPadding"

    invoke-virtual {p0, p1, v2, v3}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_9
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aes Cbc Key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Test Failed\r\n("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v1, -0x7b

    invoke-direct {p1, v0, p2, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    sget-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    const-string v0, "1234567890123456"

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v0, "1234567890123456"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v3

    move v3, v4

    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0x%02x,"

    new-array v7, p3, [Ljava/lang/Object;

    aget-byte v8, v2, v3

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return p3

    :cond_1
    return v4
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    invoke-static {p2}, Landroid/pso/Base64Util;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CBC"

    const-string v1, "NoPadding"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Aes Cbc Key Failed\r\n("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0x71

    invoke-direct {p2, v0, p1, v1}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CTR"

    const-string v1, "NoPadding"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Aes Ctr Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Failed\r\n("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, -0x71

    invoke-direct {p2, v0, p1, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p2, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance p2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p2, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    new-instance v0, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v2}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/String;

    aput-object p4, v0, v3

    invoke-virtual {p3, v0}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p3

    sget-object p4, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    invoke-virtual {p4, p1, p2, p3}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    return v1
.end method

.method protected a([B[BLjava/security/PublicKey;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA512withECDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v1, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/SignatureException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bin Signed Data Verify Fail...\r\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x4

    invoke-direct {p1, p3, p2, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected a(Ljava/lang/String;[B[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "CBC"

    const-string v6, "NoPadding"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aes Cbc Encrypt Fail\r\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x1f

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ShortBufferException;,
            Landroid/pso/XpPsoException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [B

    sget-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    array-length v0, p3

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5, p1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p4, p2}, Landroid/pso/PsoAKS;->b(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljavax/crypto/Cipher;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/KeyStoreException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/pso/PsoAKS;->b(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected a([BLjavax/crypto/SecretKey;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "CTR"

    const-string v6, "NoPadding"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/pso/PsoAKS;->a([BLjavax/crypto/SecretKey;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aes Ctr Decrypt Failed...\r\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x3

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected a([BLjavax/crypto/SecretKey;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [B

    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p3, p4, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p3, p1}, Landroid/pso/PsoAKS;->b(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/security/PublicKey;)Ljava/security/Signature;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "SHA256withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Verify Signature Failed...\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x29

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected b([B)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "X.509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method protected b(Ljava/lang/String;[B)Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const-string v0, "CBC"

    const-string v1, "NoPadding"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/pso/PsoAKS;->c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    return-object p1
.end method

.method protected b()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    sget-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/pso/PsoAKS;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/pso/XpPsoException;

    iget-object v2, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Keystore initial failed...\r\n("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x63

    invoke-direct {v1, v2, v0, v3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v1
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AES"

    const-string v1, "XpengAndroidKeyStore"

    invoke-static {v0, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    new-instance v1, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string p1, "CBC"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string v1, "NoPadding"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create Ramdon Aes Cbc Key failed...\r\n("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, -0x48

    invoke-direct {v0, v1, p1, v2}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw v0
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    const-string v2, "CTR"

    const-string v3, "NoPadding"

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/pso/PsoAKS;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    return v1

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v1, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Aes Ctr Key Test "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Failed\r\n("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, -0x7c

    invoke-direct {p1, v1, p2, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method

.method protected b(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    :try_start_0
    const-string v0, "CBC"

    const-string v1, "NoPadding"

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save Aes Cbc Key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Failed\r\n("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, -0x71

    invoke-direct {p2, v0, p1, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PsoAKS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is invalid .... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string p4, "1234567890123456"

    const-string v1, "UTF-8"

    invoke-virtual {p4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "0x%02x,"

    new-array v6, p3, [Ljava/lang/Object;

    aget-byte v7, v1, v2

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Landroid/pso/Base64Util;->encodeToString([B)Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p2, v2, p1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return p3

    :cond_2
    return v3
.end method

.method protected b(Ljava/lang/String;[B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/ShortBufferException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;,
            Landroid/pso/XpPsoException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    const-string v4, "CBC"

    const-string v5, "NoPadding"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/pso/PsoAKS;->a(Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljavax/crypto/Cipher;[B)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    array-length v0, p2

    new-array v0, v0, [B

    array-length v1, p2

    const/16 v2, 0x2800

    if-le v2, v1, :cond_0

    array-length v1, p2

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    array-length v1, p2

    div-int/2addr v1, v7

    array-length v2, p2

    rem-int/2addr v2, v7

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-nez v2, :cond_1

    move v2, v8

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int v9, v1, v2

    if-le v9, v3, :cond_5

    move v3, v8

    move v10, v3

    move v11, v10

    :goto_2
    if-ge v10, v9, :cond_6

    add-int v12, v3, v7

    array-length v1, p2

    if-gt v12, v1, :cond_3

    move-object v1, p1

    move-object v2, p2

    move v4, v7

    move-object v5, v0

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v1

    if-lez v1, :cond_2

    add-int/2addr v11, v1

    :cond_2
    move v3, v12

    goto :goto_3

    :cond_3
    array-length v1, p2

    sub-int/2addr v1, v3

    invoke-virtual {p1, p2, v3, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v4, v2

    invoke-static {v2, v8, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v3, v1

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v8, v0, v8, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    return-object v0
.end method

.method protected b([BLjavax/crypto/SecretKey;[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v5, "CTR"

    const-string v6, "NoPadding"

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/pso/PsoAKS;->b([BLjavax/crypto/SecretKey;[BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/ShortBufferException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance p2, Landroid/pso/XpPsoException;

    iget-object p3, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aes Ctr Encrypt Fail\r\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x1f

    invoke-direct {p2, p3, p1, v0}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p2
.end method

.method protected b([BLjavax/crypto/SecretKey;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    array-length v0, p1

    new-array v0, v0, [B

    array-length v0, p3

    const/4 v1, 0x0

    invoke-static {p3, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES/"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0, p3, p1}, Landroid/pso/PsoAKS;->b(Ljavax/crypto/Cipher;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    sget-object v0, Landroid/pso/PsoAKS;->b:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    check-cast p1, Ljavax/crypto/SecretKey;

    array-length v0, p2

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/4 p4, 0x2

    invoke-virtual {p3, p4, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-object p3
.end method

.method protected c(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pso/XpPsoException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "CBC"

    const-string v2, "NoPadding"

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/pso/PsoAKS;->b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_9
    move-exception p1

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz v0, :cond_0

    return v0

    :cond_0
    new-instance p1, Landroid/pso/XpPsoException;

    iget-object v0, p0, Landroid/pso/PsoAKS;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aes Cbc Key Test "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Failed\r\n("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, -0x7b

    invoke-direct {p1, v0, p2, p3}, Landroid/pso/XpPsoException;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    throw p1
.end method
