.class public final Lcom/android/car/utils/EncryptUtils;
.super Ljava/lang/Object;
.source "EncryptUtils.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1189
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/car/utils/EncryptUtils;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static base64Decode([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 1234
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static base64Encode([B)[B
    .locals 1
    .param p0, "input"    # [B

    .line 1230
    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static bytes2HexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 1193
    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    .line 1194
    :cond_0
    array-length v0, p0

    .line 1195
    .local v0, "len":I
    if-gtz v0, :cond_1

    const-string v1, ""

    return-object v1

    .line 1196
    :cond_1
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 1197
    .local v1, "ret":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1198
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    sget-object v5, Lcom/android/car/utils/EncryptUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v3

    .line 1199
    .end local v3    # "j":I
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "j":I
    sget-object v5, Lcom/android/car/utils/EncryptUtils;->HEX_DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 1197
    .end local v4    # "j":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static decrypt3DES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 813
    const-string v2, "DESede"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptAES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 919
    const-string v2, "AES"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64AES([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 885
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64DES([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 673
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64RSA([B[BILjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "privateKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 1027
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptBase64_3DES([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 779
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->base64Decode([B)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptDES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 707
    const-string v2, "DES"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 796
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 902
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 690
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptHexStringRSA(Ljava/lang/String;[BILjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "privateKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 1043
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->decryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptRSA([B[BILjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "privateKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 1059
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/car/utils/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 762
    const-string v2, "DESede"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2Base64([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 728
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encrypt3DES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 745
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encrypt3DES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 868
    const-string v2, "AES"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2Base64([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 834
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptAES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 851
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptAES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES([B[BLjava/lang/String;[B)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 656
    const-string v2, "DES"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/car/utils/EncryptUtils;->symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2Base64([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 622
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptDES2HexString([B[BLjava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "iv"    # [B

    .line 639
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptDES([B[BLjava/lang/String;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 408
    const-string v0, "HmacMD5"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 385
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacMD5ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 385
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacMD5ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 397
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacMD5([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 442
    const-string v0, "HmacSHA1"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA1ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 419
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA1ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 419
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacSHA1ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 431
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA1([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 476
    const-string v0, "HmacSHA224"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA224ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 453
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA224ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacSHA224ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 465
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA224([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 510
    const-string v0, "HmacSHA256"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA256ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 487
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA256ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 487
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacSHA256ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 499
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA256([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 544
    const-string v0, "HmacSHA384"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA384ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 521
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA384ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 521
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacSHA384ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 533
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA384([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512([B[B)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 578
    const-string v0, "HmacSHA512"

    invoke-static {p0, p1, v0}, Lcom/android/car/utils/EncryptUtils;->hmacTemplate([B[BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptHmacSHA512ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .line 555
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA512ToString([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 555
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptHmacSHA512ToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 567
    invoke-static {p0, p1}, Lcom/android/car/utils/EncryptUtils;->encryptHmacSHA512([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 68
    const-string v0, "MD2"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 47
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 58
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptMD2([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 130
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 172
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 173
    :cond_0
    move-object v1, v0

    .line 176
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 177
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 178
    .local v2, "md":Ljava/security/MessageDigest;
    new-instance v3, Ljava/security/DigestInputStream;

    invoke-direct {v3, v1, v2}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    .line 179
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    const/high16 v4, 0x40000

    new-array v4, v4, [B

    .line 181
    .local v4, "buffer":[B
    :cond_1
    invoke-virtual {v3, v4}, Ljava/security/DigestInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_1

    .line 183
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v5

    move-object v2, v5

    .line 184
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    nop

    .line 191
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 195
    :goto_0
    nop

    .line 184
    :goto_1
    return-object v5

    .line 189
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v4    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    nop

    .line 190
    if-eqz v1, :cond_2

    .line 191
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 193
    :catch_2
    move-exception v3

    .line 194
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 195
    :cond_2
    :goto_2
    nop

    .line 187
    :goto_3
    return-object v0

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4
    nop

    .line 190
    if-eqz v1, :cond_3

    .line 191
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 193
    :catch_3
    move-exception v2

    .line 194
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 195
    :cond_3
    :goto_5
    throw v0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 151
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 162
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 140
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "file":Ljava/io/File;
    :goto_0
    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 78
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "salt"    # Ljava/lang/String;

    .line 90
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 91
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_1
    if-nez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 103
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # [B
    .param p1, "salt"    # [B

    .line 114
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    .line 115
    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 118
    .local v0, "dataSalt":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 119
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 120
    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptMD5([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptRSA([B[BILjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 1011
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/car/utils/EncryptUtils;->rsaTemplate([B[BILjava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptRSA2Base64([B[BILjava/lang/String;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 979
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->base64Encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptRSA2HexString([B[BILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;

    .line 995
    invoke-static {p0, p1, p2, p3}, Lcom/android/car/utils/EncryptUtils;->encryptRSA([B[BILjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 227
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 206
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 206
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 217
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA1([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 258
    const-string v0, "SHA224"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 237
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 248
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA224([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 289
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 268
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 279
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA256([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 320
    const-string v0, "SHA-384"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 299
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 310
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA384([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512([B)[B
    .locals 1
    .param p0, "data"    # [B

    .line 351
    const-string v0, "SHA-512"

    invoke-static {p0, v0}, Lcom/android/car/utils/EncryptUtils;->hashTemplate([BLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .line 330
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 330
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .line 341
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->encryptSHA512([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/utils/EncryptUtils;->bytes2HexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashTemplate([BLjava/lang/String;)[B
    .locals 3
    .param p0, "data"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 365
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 366
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 367
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 369
    return-object v0

    .line 362
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static hex2Dec(C)I
    .locals 1
    .param p0, "hexChar"    # C

    .line 1220
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 1221
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 1222
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 1223
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1225
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static hexString2Bytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "hexString"    # Ljava/lang/String;

    .line 1205
    invoke-static {p0}, Lcom/android/car/utils/EncryptUtils;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1206
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1207
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1209
    add-int/lit8 v0, v0, 0x1

    .line 1211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1212
    .local v1, "hexBytes":[C
    shr-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    .line 1213
    .local v2, "ret":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1214
    shr-int/lit8 v4, v3, 0x1

    aget-char v5, v1, v3

    invoke-static {v5}, Lcom/android/car/utils/EncryptUtils;->hex2Dec(C)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v3, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/android/car/utils/EncryptUtils;->hex2Dec(C)I

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 1213
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1216
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method private static hmacTemplate([B[BLjava/lang/String;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 592
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 595
    .local v1, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    invoke-static {p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 596
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 597
    invoke-virtual {v2, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 598
    .end local v1    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "mac":Ljavax/crypto/Mac;
    :catch_0
    move-exception v1

    .line 599
    .local v1, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 600
    return-object v0

    .line 592
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static isSpace(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1238
    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1239
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1240
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1241
    const/4 v0, 0x0

    return v0

    .line 1239
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1244
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_2
    return v0
.end method

.method private static joins([B[B)[B
    .locals 4
    .param p0, "prefix"    # [B
    .param p1, "suffix"    # [B

    .line 1183
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 1184
    .local v0, "ret":[B
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1185
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1186
    return-object v0
.end method

.method public static rc4([B[B)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "key"    # [B

    .line 1143
    if-eqz p0, :cond_5

    array-length v0, p0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_3

    .line 1144
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    const/16 v1, 0x100

    if-gt v0, v1, :cond_4

    .line 1147
    new-array v0, v1, [B

    .line 1148
    .local v0, "iS":[B
    new-array v2, v1, [B

    .line 1149
    .local v2, "iK":[B
    array-length v3, p1

    .line 1150
    .local v3, "keyLen":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1151
    int-to-byte v6, v5

    aput-byte v6, v0, v5

    .line 1152
    rem-int v6, v5, v3

    aget-byte v6, p1, v6

    aput-byte v6, v2, v5

    .line 1150
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1154
    .end local v5    # "i":I
    :cond_1
    const/4 v5, 0x0

    .line 1156
    .local v5, "j":I
    move v6, v5

    move v5, v4

    .local v5, "i":I
    .local v6, "j":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 1157
    aget-byte v7, v0, v5

    add-int/2addr v7, v6

    aget-byte v8, v2, v5

    add-int/2addr v7, v8

    and-int/lit16 v6, v7, 0xff

    .line 1158
    aget-byte v7, v0, v6

    .line 1159
    .local v7, "tmp":B
    aget-byte v8, v0, v5

    aput-byte v8, v0, v6

    .line 1160
    aput-byte v7, v0, v5

    .line 1156
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1163
    .end local v5    # "i":I
    .end local v7    # "tmp":B
    :cond_2
    array-length v1, p0

    new-array v1, v1, [B

    .line 1164
    .local v1, "ret":[B
    const/4 v5, 0x0

    .line 1165
    .restart local v5    # "i":I
    nop

    .local v4, "counter":I
    :goto_2
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 1166
    add-int/lit8 v7, v5, 0x1

    and-int/lit16 v5, v7, 0xff

    .line 1167
    aget-byte v7, v0, v5

    add-int/2addr v7, v6

    and-int/lit16 v6, v7, 0xff

    .line 1168
    aget-byte v7, v0, v6

    .line 1169
    .restart local v7    # "tmp":B
    aget-byte v8, v0, v5

    aput-byte v8, v0, v6

    .line 1170
    aput-byte v7, v0, v5

    .line 1171
    aget-byte v8, v0, v5

    aget-byte v9, v0, v6

    add-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    .line 1172
    .local v8, "t":I
    aget-byte v9, v0, v8

    .line 1173
    .local v9, "k":I
    aget-byte v10, p0, v4

    xor-int/2addr v10, v9

    int-to-byte v10, v10

    aput-byte v10, v1, v4

    .line 1165
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1175
    .end local v4    # "counter":I
    .end local v7    # "tmp":B
    .end local v8    # "t":I
    .end local v9    # "k":I
    :cond_3
    return-object v1

    .line 1145
    .end local v0    # "iS":[B
    .end local v1    # "ret":[B
    .end local v2    # "iK":[B
    .end local v3    # "keyLen":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be between 1 and 256 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_5
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static rsaTemplate([B[BILjava/lang/String;Z)[B
    .locals 14
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "keySize"    # I
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "isEncrypt"    # Z

    move-object v1, p0

    move-object v2, p1

    .line 1077
    const/4 v3, 0x0

    if-eqz v1, :cond_8

    array-length v0, v1

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    array-length v0, v2

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 1082
    :cond_0
    if-eqz p4, :cond_1

    .line 1083
    :try_start_0
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1084
    .local v0, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .end local v0    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    move-object v0, v4

    .line 1085
    .local v0, "rsaKey":Ljava/security/Key;
    goto :goto_0

    .line 1130
    .end local v0    # "rsaKey":Ljava/security/Key;
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 1128
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 1126
    :catch_2
    move-exception v0

    goto/16 :goto_5

    .line 1124
    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 1122
    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 1120
    :catch_5
    move-exception v0

    goto/16 :goto_8

    .line 1086
    :cond_1
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 1087
    .local v0, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v4

    .end local v0    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    move-object v0, v4

    .line 1089
    .local v0, "rsaKey":Ljava/security/Key;
    :goto_0
    if-nez v0, :cond_2

    return-object v3

    .line 1090
    :cond_2
    invoke-static/range {p3 .. p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 1091
    .local v4, "cipher":Ljavax/crypto/Cipher;
    if-eqz p4, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    :goto_1
    invoke-virtual {v4, v5, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1092
    array-length v5, v1

    .line 1093
    .local v5, "len":I
    div-int/lit8 v6, p2, 0x8

    .line 1094
    .local v6, "maxLen":I
    if-eqz p4, :cond_4

    .line 1095
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 1096
    .local v7, "lowerTrans":Ljava/lang/String;
    const-string v8, "pkcs1padding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1097
    add-int/lit8 v6, v6, -0xb

    .line 1100
    .end local v7    # "lowerTrans":Ljava/lang/String;
    :cond_4
    div-int v7, v5, v6

    .line 1101
    .local v7, "count":I
    if-lez v7, :cond_7

    .line 1102
    const/4 v8, 0x0

    new-array v9, v8, [B

    .line 1103
    .local v9, "ret":[B
    new-array v10, v6, [B

    .line 1104
    .local v10, "buff":[B
    const/4 v11, 0x0

    .line 1105
    .local v11, "index":I
    move-object v12, v9

    move v9, v8

    .local v9, "i":I
    .local v12, "ret":[B
    :goto_2
    if-ge v9, v7, :cond_5

    .line 1106
    invoke-static {v1, v11, v10, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1107
    invoke-virtual {v4, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/car/utils/EncryptUtils;->joins([B[B)[B

    move-result-object v13

    move-object v12, v13

    .line 1108
    add-int/2addr v11, v6

    .line 1105
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1110
    .end local v9    # "i":I
    :cond_5
    if-eq v11, v5, :cond_6

    .line 1111
    sub-int v9, v5, v11

    .line 1112
    .local v9, "restLen":I
    new-array v13, v9, [B

    move-object v10, v13

    .line 1113
    invoke-static {v1, v11, v10, v8, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1114
    invoke-virtual {v4, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-static {v12, v8}, Lcom/android/car/utils/EncryptUtils;->joins([B[B)[B

    move-result-object v8

    move-object v12, v8

    .line 1116
    .end local v9    # "restLen":I
    :cond_6
    return-object v12

    .line 1118
    .end local v10    # "buff":[B
    .end local v11    # "index":I
    .end local v12    # "ret":[B
    :cond_7
    invoke-virtual {v4, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 1130
    .end local v0    # "rsaKey":Ljava/security/Key;
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "len":I
    .end local v6    # "maxLen":I
    .end local v7    # "count":I
    :goto_3
    nop

    .line 1131
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_a

    .line 1128
    :goto_4
    nop

    .line 1129
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    goto :goto_9

    .line 1126
    :goto_5
    nop

    .line 1127
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    goto :goto_9

    .line 1124
    :goto_6
    nop

    .line 1125
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/InvalidKeyException;
    goto :goto_9

    .line 1122
    :goto_7
    nop

    .line 1123
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_9

    .line 1120
    :goto_8
    nop

    .line 1121
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1132
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_9
    nop

    .line 1133
    :goto_a
    return-object v3

    .line 1078
    :cond_8
    :goto_b
    return-object v3
.end method

.method private static symmetricTemplate([B[BLjava/lang/String;Ljava/lang/String;[BZ)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "iv"    # [B
    .param p5, "isEncrypt"    # Z

    .line 938
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    .line 941
    :cond_0
    :try_start_0
    const-string v1, "DES"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v1, p1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 943
    .local v1, "desKey":Ljavax/crypto/spec/DESKeySpec;
    invoke-static {p2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 944
    .local v2, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v2, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .end local v1    # "desKey":Ljavax/crypto/spec/DESKeySpec;
    .end local v2    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    move-object v1, v3

    .line 945
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    goto :goto_0

    .line 946
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 948
    .restart local v1    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 949
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p4, :cond_4

    array-length v5, p4

    if-nez v5, :cond_2

    goto :goto_1

    .line 952
    :cond_2
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 953
    .local v5, "params":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p5, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v2, v3, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .end local v5    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_2

    .line 950
    :cond_4
    :goto_1
    if-eqz p5, :cond_5

    move v3, v4

    nop

    :cond_5
    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 955
    :goto_2
    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 956
    .end local v1    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v1

    .line 957
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 958
    return-object v0

    .line 938
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_3
    return-object v0
.end method
