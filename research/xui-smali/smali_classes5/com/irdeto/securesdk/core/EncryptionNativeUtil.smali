.class public Lcom/irdeto/securesdk/core/EncryptionNativeUtil;
.super Ljava/lang/Object;
.source "EncryptionNativeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EncryptionNativeUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _encry2String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native _joseDecString(Ljava/lang/String;Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)[B
.end method

.method private static native _joseEncString([BLjava/lang/String;Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;
.end method

.method private static bytes2Hex([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decryptData(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/CryptoException;
        }
    .end annotation

    const-string v0, "AES-DIR"

    new-instance v1, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v1}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->_joseDecString(Ljava/lang/String;Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jose dec errorCode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EncryptionNativeUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/irdeto/securesdk/CryptoException;

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    iget-object v1, v1, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/irdeto/securesdk/CryptoException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static encodePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->bytes2Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Invalid algorithm."

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encry2String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->_encry2String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptData([B)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/CryptoException;
        }
    .end annotation

    const-string v0, "AES-DIR"

    new-instance v1, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v1}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->_joseEncString([BLjava/lang/String;Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "jose enc errorCode = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", message = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EncryptionNativeUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/irdeto/securesdk/CryptoException;

    iget v0, v1, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    iget-object v1, v1, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/irdeto/securesdk/CryptoException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static generateKID()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandom()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static joseDecString(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/CryptoException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->_joseDecString(Ljava/lang/String;Ljava/lang/String;Lcom/irdeto/securesdk/Feedback;)[B

    move-result-object p0

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "jose dec errorCode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EncryptionNativeUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/irdeto/securesdk/CryptoException;

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    iget-object v0, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/CryptoException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static joseEncString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/irdeto/securesdk/CryptoException;
        }
    .end annotation

    new-instance v0, Lcom/irdeto/securesdk/Feedback;

    invoke-direct {v0}, Lcom/irdeto/securesdk/Feedback;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/irdeto/securesdk/core/EncryptionNativeUtil;->_joseEncString([BLjava/lang/String;Lcom/irdeto/securesdk/Feedback;)Ljava/lang/String;

    move-result-object p0

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "jose enc errorCode = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", message = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EncryptionNativeUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/irdeto/securesdk/CryptoException;

    iget p1, v0, Lcom/irdeto/securesdk/Feedback;->errorCode:I

    iget-object v0, v0, Lcom/irdeto/securesdk/Feedback;->message:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/irdeto/securesdk/CryptoException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static md5Encryption(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
