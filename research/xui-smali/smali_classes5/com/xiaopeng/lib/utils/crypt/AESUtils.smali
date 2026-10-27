.class public Lcom/xiaopeng/lib/utils/crypt/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field private static final IV:[B

.field private static final TAG:Ljava/lang/String; = "AESUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->IV:[B

    return-void

    :array_0
    .array-data 1
        -0x46t
        -0x6at
        -0x38t
        0x64t
        -0x51t
        0x27t
        -0x41t
        0x1dt
        0x4ft
        0x57t
        0x47t
        -0x74t
        0x1at
        0x45t
        -0x4bt
        0x36t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "password"
        }
    .end annotation

    .line 298
    move-object v0, p1

    .line 299
    .local v0, "key_string":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 300
    .local v1, "keyBytes":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 301
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 302
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 304
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/crypt/ConvertUtils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 306
    .local v4, "result":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 308
    .end local v0    # "key_string":Ljava/lang/String;
    .end local v1    # "keyBytes":[B
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "result":[B
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "decryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceFile",
            "decryptFile",
            "sKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 59
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 61
    .local v2, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 62
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 63
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 64
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v2, v5

    .line 65
    const/high16 v5, 0x100000

    new-array v5, v5, [B

    .line 67
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    if-ltz v6, :cond_0

    .line 68
    invoke-virtual {v2, v5, v4, v7}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    const/4 v4, 0x1

    .line 80
    nop

    .line 81
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 83
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 85
    :goto_1
    nop

    .line 87
    :goto_2
    nop

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 90
    :catch_1
    move-exception v6

    .line 91
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 92
    :goto_3
    nop

    .line 73
    :goto_4
    return v4

    .line 79
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "buffer":[B
    .end local v7    # "r":I
    :catchall_0
    move-exception v3

    goto :goto_b

    .line 76
    :catch_2
    move-exception v3

    .line 77
    .local v3, "error":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v3    # "error":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_1

    .line 81
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 83
    :catch_3
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 85
    :cond_1
    :goto_5
    nop

    .line 87
    :goto_6
    if-eqz v1, :cond_2

    .line 88
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 90
    :catch_4
    move-exception v3

    .line 91
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 92
    :cond_2
    :goto_7
    goto :goto_a

    .line 74
    :catch_5
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 81
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 83
    :catch_6
    move-exception v3

    .line 84
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 85
    :cond_3
    :goto_8
    nop

    .line 87
    :goto_9
    if-eqz v1, :cond_2

    .line 88
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 95
    :goto_a
    return v4

    .line 79
    :goto_b
    nop

    .line 80
    if-eqz v0, :cond_4

    .line 81
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    .line 83
    :catch_7
    move-exception v4

    .line 84
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 85
    :cond_4
    :goto_c
    nop

    .line 87
    :goto_d
    if-eqz v1, :cond_5

    .line 88
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    .line 90
    :catch_8
    move-exception v4

    .line 91
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 92
    :cond_5
    :goto_e
    nop

    .line 93
    :goto_f
    throw v3
.end method

.method public static decryptByKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "raw",
            "keyAlias"
        }
    .end annotation

    .line 424
    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 427
    .local v1, "data":[B
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 430
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    const-string v3, "AES/ECB/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 431
    .local v3, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 432
    invoke-virtual {v3, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 434
    .local v0, "decryptData":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 435
    .end local v0    # "decryptData":[B
    .end local v1    # "data":[B
    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 440
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "password"
        }
    .end annotation

    .line 369
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 370
    .local v0, "keyBytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 371
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 372
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 373
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 374
    .local v3, "result":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 375
    .end local v0    # "keyBytes":[B
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 376
    .local v0, "var7":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "password"
        }
    .end annotation

    .line 205
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 206
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 207
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 208
    .local v2, "byteContent":[B
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 210
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 212
    .local v3, "result":[B
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/crypt/ConvertUtils;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 213
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "byteContent":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sourceFile",
            "encryptFile",
            "sKey"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 109
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 111
    .local v2, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p2, v4}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 112
    .local v5, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 113
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    .line 114
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v1, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v2, v6

    .line 115
    const/high16 v6, 0x100000

    new-array v6, v6, [B

    .line 117
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "r":I
    if-ltz v7, :cond_0

    .line 118
    invoke-virtual {v2, v6, v3, v8}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    nop

    .line 130
    nop

    .line 131
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 133
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 135
    :goto_1
    nop

    .line 137
    :goto_2
    nop

    .line 138
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 140
    :catch_1
    move-exception v3

    .line 141
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 142
    :goto_3
    nop

    .line 123
    :goto_4
    return v4

    .line 129
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "buffer":[B
    .end local v8    # "r":I
    :catchall_0
    move-exception v3

    goto :goto_b

    .line 126
    :catch_2
    move-exception v4

    .line 127
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .end local v4    # "error":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_1

    .line 131
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 133
    :catch_3
    move-exception v4

    .line 134
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 135
    :cond_1
    :goto_5
    nop

    .line 137
    :goto_6
    if-eqz v1, :cond_2

    .line 138
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 140
    :catch_4
    move-exception v4

    .line 141
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 142
    :cond_2
    :goto_7
    goto :goto_a

    .line 124
    :catch_5
    move-exception v4

    .line 125
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 130
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 131
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 133
    :catch_6
    move-exception v4

    .line 134
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 135
    :cond_3
    :goto_8
    nop

    .line 137
    :goto_9
    if-eqz v1, :cond_2

    .line 138
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 145
    :goto_a
    return v3

    .line 129
    :goto_b
    nop

    .line 130
    if-eqz v0, :cond_4

    .line 131
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    .line 133
    :catch_7
    move-exception v4

    .line 134
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 135
    :cond_4
    :goto_c
    nop

    .line 137
    :goto_d
    if-eqz v1, :cond_5

    .line 138
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    .line 140
    :catch_8
    move-exception v4

    .line 141
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 142
    :cond_5
    :goto_e
    nop

    .line 143
    :goto_f
    throw v3
.end method

.method public static encrypt(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputStream",
            "encryptFile",
            "sKey"
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 160
    .local v1, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 161
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 162
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v0, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v1, v5

    .line 163
    const/high16 v5, 0x100000

    new-array v5, v5, [B

    .line 165
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    if-ltz v6, :cond_0

    .line 166
    invoke-virtual {v1, v5, v2, v7}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 171
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    nop

    .line 177
    if-eqz p0, :cond_1

    .line 178
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 182
    :cond_1
    :goto_1
    nop

    .line 184
    :goto_2
    nop

    .line 185
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 187
    :catch_1
    move-exception v2

    .line 188
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 189
    :goto_3
    nop

    .line 172
    :goto_4
    return v3

    .line 176
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "buffer":[B
    .end local v7    # "r":I
    :catchall_0
    move-exception v2

    goto :goto_9

    .line 173
    :catch_2
    move-exception v3

    .line 174
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz p0, :cond_2

    .line 178
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 180
    :catch_3
    move-exception v3

    .line 181
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 182
    :cond_2
    :goto_5
    nop

    .line 184
    :goto_6
    if-eqz v0, :cond_3

    .line 185
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 187
    :catch_4
    move-exception v3

    .line 188
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 189
    :cond_3
    :goto_7
    nop

    .line 192
    :goto_8
    return v2

    .line 176
    :goto_9
    nop

    .line 177
    if-eqz p0, :cond_4

    .line 178
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 180
    :catch_5
    move-exception v3

    .line 181
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 182
    :cond_4
    :goto_a
    nop

    .line 184
    :goto_b
    if-eqz v0, :cond_5

    .line 185
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    .line 187
    :catch_6
    move-exception v3

    .line 188
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 189
    :cond_5
    :goto_c
    nop

    .line 190
    :goto_d
    throw v2
.end method

.method public static encryptByKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "raw"    # Ljava/lang/String;
    .param p1, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "raw",
            "keyAlias"
        }
    .end annotation

    .line 391
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 392
    const-string v0, "AESUtils"

    const-string v2, "encryptByKeystore: the data to be encrypted is empty!"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    return-object v1

    .line 398
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 401
    .local v0, "secretKey":Ljavax/crypto/SecretKey;
    const-string v2, "AES/ECB/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 402
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 405
    .local v3, "encryptedData":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 406
    .end local v0    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "encryptedData":[B
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 411
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    return-object v1
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "sourceFilePath",
            "destFilePath"
        }
    .end annotation

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_12

    .line 232
    :cond_0
    const/4 v0, 0x0

    .line 233
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 234
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 235
    .local v3, "isFlag":Z
    const/4 v4, 0x0

    .line 237
    .local v4, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 239
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 240
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 242
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 245
    :cond_2
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 246
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 247
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v7

    .line 249
    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v0, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v4, v7

    .line 250
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 251
    .local v7, "cache":[B
    move v8, v1

    .line 252
    .local v8, "nRead":I
    :goto_0
    invoke-virtual {v4, v7}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 253
    invoke-virtual {v2, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 257
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    const/4 v1, 0x1

    .line 264
    .end local v3    # "isFlag":Z
    .end local v5    # "outFile":Ljava/io/File;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "cache":[B
    .end local v8    # "nRead":I
    .local v1, "isFlag":Z
    nop

    .line 265
    :try_start_1
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 267
    :catch_0
    move-exception v3

    .line 268
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 269
    :goto_1
    nop

    .line 271
    :goto_2
    nop

    .line 272
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 274
    :catch_1
    move-exception v3

    .line 275
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 276
    :goto_3
    nop

    .line 278
    :goto_4
    nop

    .line 279
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 281
    :catch_2
    move-exception v3

    .line 282
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 283
    :cond_4
    :goto_5
    goto :goto_a

    .line 263
    .end local v1    # "isFlag":Z
    .local v3, "isFlag":Z
    :catchall_0
    move-exception v1

    goto :goto_b

    .line 259
    :catch_3
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    const/4 v1, 0x0

    .line 264
    .end local v3    # "isFlag":Z
    .local v1, "isFlag":Z
    if-eqz v4, :cond_5

    .line 265
    :try_start_5
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 267
    :catch_4
    move-exception v3

    .line 268
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 269
    :cond_5
    :goto_6
    nop

    .line 271
    :goto_7
    if-eqz v2, :cond_6

    .line 272
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 274
    :catch_5
    move-exception v3

    .line 275
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 276
    :cond_6
    :goto_8
    nop

    .line 278
    :goto_9
    if-eqz v0, :cond_4

    .line 279
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 285
    :goto_a
    return v1

    .line 263
    .end local v1    # "isFlag":Z
    .local v3, "isFlag":Z
    :goto_b
    nop

    .line 264
    if-eqz v4, :cond_7

    .line 265
    :try_start_8
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    .line 267
    :catch_6
    move-exception v5

    .line 268
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 269
    :cond_7
    :goto_c
    nop

    .line 271
    :goto_d
    if-eqz v2, :cond_8

    .line 272
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    .line 274
    :catch_7
    move-exception v5

    .line 275
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 276
    :cond_8
    :goto_e
    nop

    .line 278
    :goto_f
    if-eqz v0, :cond_9

    .line 279
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_10

    .line 281
    :catch_8
    move-exception v5

    .line 282
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 283
    :cond_9
    :goto_10
    nop

    .line 284
    :goto_11
    throw v1

    .line 230
    .end local v0    # "in":Ljava/io/FileInputStream;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "isFlag":Z
    .end local v4    # "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :cond_a
    :goto_12
    return v1
.end method

.method public static encryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "password"
        }
    .end annotation

    .line 349
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 350
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 351
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 352
    .local v2, "byteContent":[B
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 353
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 354
    .local v3, "result":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 355
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "byteContent":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4
    .param p0, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyAlias"
        }
    .end annotation

    .line 451
    const-string v0, "AES"

    const-string v1, "ECB"

    const-string v2, "PKCS7Padding"

    const/16 v3, 0x80

    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method private static getSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 7
    .param p0, "keyAlias"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "blockMode"    # Ljava/lang/String;
    .param p3, "padding"    # Ljava/lang/String;
    .param p4, "keySize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyAlias",
            "algorithm",
            "blockMode",
            "padding",
            "keySize"
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    move-object v1, v0

    .line 476
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    :try_start_0
    const-string v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 477
    .local v2, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 479
    invoke-virtual {v2, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    nop

    .line 481
    invoke-virtual {v2, p0, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    .line 482
    .local v0, "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    if-eqz v0, :cond_0

    .line 483
    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v1, v3

    .line 484
    const-string v3, "AESUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecretKey: saved secretKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 486
    :cond_0
    const-string v3, "AESUtils"

    const-string v4, "Failed to get secret key entry!"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    .end local v0    # "secretKeyEntry":Ljava/security/KeyStore$SecretKeyEntry;
    :goto_0
    goto :goto_2

    .line 490
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    .line 491
    const-string v0, "AndroidKeyStore"

    .line 492
    invoke-static {p1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 495
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    new-instance v3, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    .line 497
    invoke-virtual {v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 498
    invoke-virtual {v3, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v6

    .line 499
    invoke-virtual {v3, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 500
    invoke-virtual {v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v3

    .line 501
    invoke-virtual {v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v3

    .line 502
    .local v3, "keyGenParameterSpec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v0, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 503
    .end local v3    # "keyGenParameterSpec":Landroid/security/keystore/KeyGenParameterSpec;
    goto :goto_1

    .line 504
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "params":Ljava/lang/String;
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    .line 506
    .local v3, "keyGenerator":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v3, p4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 509
    .end local v0    # "params":Ljava/lang/String;
    move-object v0, v3

    .end local v3    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .local v0, "keyGenerator":Ljavax/crypto/KeyGenerator;
    :goto_1
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    move-object v1, v3

    .line 510
    const-string v3, "AESUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecretKey: new secretKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    .end local v0    # "keyGenerator":Ljavax/crypto/KeyGenerator;
    .end local v2    # "keyStore":Ljava/security/KeyStore;
    :goto_2
    goto :goto_3

    .line 512
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AESUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get secret key, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method

.method private static initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "cipherMode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sKey",
            "cipherMode"
        }
    .end annotation

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 326
    .local v1, "codeFormat":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 327
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    move-object v0, v3

    .line 329
    invoke-virtual {v0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "codeFormat":[B
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 335
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_1

    .line 332
    :catch_1
    move-exception v1

    .line 333
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 330
    :catch_2
    move-exception v1

    .line 331
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 336
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 337
    :goto_1
    return-object v0
.end method
