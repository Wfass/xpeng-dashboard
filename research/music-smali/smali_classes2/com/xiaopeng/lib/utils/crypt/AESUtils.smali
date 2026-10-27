.class public Lcom/xiaopeng/lib/utils/crypt/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field private static final IV:[B

.field private static final TAG:Ljava/lang/String; = "AESUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 48
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
    .locals 2

    const-string v0, "AES"

    :try_start_0
    const-string v1, "UTF-8"

    .line 299
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 300
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 301
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 302
    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 304
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/crypt/ConvertUtils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 306
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 63
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/high16 p2, 0x100000

    .line 65
    new-array p2, p2, [B

    .line 67
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 68
    invoke-virtual {p1, p2, v1, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    .line 81
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 84
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return p1

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_a

    :catch_4
    move-exception p1

    move-object p0, v2

    :goto_3
    move-object v2, v0

    goto :goto_5

    :catch_5
    move-exception p1

    move-object p0, v2

    :goto_4
    move-object v2, v0

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p0, v2

    move-object v0, p0

    goto :goto_a

    :catch_6
    move-exception p1

    move-object p0, v2

    .line 77
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_1

    .line 81
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_6
    if-eqz p0, :cond_3

    .line 88
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_9

    :catch_8
    move-exception p1

    move-object p0, v2

    .line 75
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_2

    .line 81
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_8
    if-eqz p0, :cond_3

    .line 88
    :try_start_a
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    return v1

    :catchall_3
    move-exception p1

    move-object v0, v2

    :goto_a
    if-eqz v0, :cond_4

    .line 81
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p2

    .line 84
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_b
    if-eqz p0, :cond_5

    .line 88
    :try_start_c
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    :cond_5
    :goto_c
    throw p1
.end method

.method public static decryptByKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    .line 424
    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 427
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v1, "AES/ECB/PKCS7Padding"

    .line 430
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 431
    invoke-virtual {v1, v0, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 432
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 434
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    .line 437
    :goto_0
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AES"

    :try_start_0
    const-string v1, "UTF-8"

    .line 369
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 370
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 371
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const/4 v0, 0x2

    .line 372
    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x0

    .line 373
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 374
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 376
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AES"

    .line 205
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 206
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const-string v0, "utf-8"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 210
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/crypt/ConvertUtils;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-static {p2, v1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 112
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 113
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    :try_start_2
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/high16 p2, 0x100000

    .line 115
    new-array p2, p2, [B

    .line 117
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 118
    invoke-virtual {p1, p2, v0, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 138
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_a

    :catch_4
    move-exception p1

    move-object p0, v2

    :goto_3
    move-object v2, v3

    goto :goto_5

    :catch_5
    move-exception p1

    move-object p0, v2

    :goto_4
    move-object v2, v3

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p0, v2

    move-object v3, p0

    goto :goto_a

    :catch_6
    move-exception p1

    move-object p0, v2

    .line 127
    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v2, :cond_1

    .line 131
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_6
    if-eqz p0, :cond_3

    .line 138
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_9

    :catch_8
    move-exception p1

    move-object p0, v2

    .line 125
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_2

    .line 131
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_8

    :catch_9
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_8
    if-eqz p0, :cond_3

    .line 138
    :try_start_a
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_9

    :catch_a
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    return v0

    :catchall_3
    move-exception p1

    move-object v3, v2

    :goto_a
    if-eqz v3, :cond_4

    .line 131
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p2

    .line 134
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_b
    if-eqz p0, :cond_5

    .line 138
    :try_start_c
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    :cond_5
    :goto_c
    throw p1
.end method

.method public static encrypt(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    :try_start_0
    invoke-static {p2, v1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 161
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :try_start_1
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, v3, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/high16 p2, 0x100000

    .line 163
    new-array p2, p2, [B

    .line 165
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 166
    invoke-virtual {p1, p2, v0, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 171
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 178
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v3, v2

    goto :goto_6

    :catch_3
    move-exception p1

    .line 174
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz p0, :cond_2

    .line 178
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    .line 185
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    return v0

    :goto_6
    if-eqz p0, :cond_4

    .line 178
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_7
    if-eqz v3, :cond_5

    .line 185
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_7
    move-exception p0

    .line 188
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 190
    :cond_5
    :goto_8
    throw p1
.end method

.method public static encryptByKeystore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 391
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "AESUtils"

    const-string p1, "encryptByKeystore: the data to be encrypted is empty!"

    .line 392
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 398
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    const-string v0, "AES/ECB/PKCS7Padding"

    .line 401
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    .line 402
    invoke-virtual {v0, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 403
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x2

    .line 405
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    goto :goto_0

    :catch_4
    move-exception p0

    .line 408
    :goto_0
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    return-object v1
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_c

    :cond_0
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 237
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 240
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 242
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 245
    :cond_2
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 246
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 247
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    :try_start_2
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p2, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 p0, 0x400

    .line 250
    :try_start_3
    new-array p0, p0, [B

    .line 252
    :goto_0
    invoke-virtual {v3, p0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 253
    invoke-virtual {p1, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 257
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :try_start_4
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    :goto_2
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7

    :catch_2
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, v2

    goto :goto_8

    :catch_5
    move-exception p0

    move-object p1, v2

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    goto :goto_8

    :catch_6
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    .line 260
    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v2, :cond_4

    .line 265
    :try_start_8
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_4

    :catch_7
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    .line 272
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_5

    :catch_8
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz p2, :cond_6

    .line 279
    :try_start_a
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_6

    :catch_9
    move-exception p0

    .line 282
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    move v0, v1

    :goto_7
    return v0

    :catchall_3
    move-exception p0

    :goto_8
    if-eqz v2, :cond_7

    .line 265
    :try_start_b
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    if-eqz p1, :cond_8

    .line 272
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_a

    :catch_b
    move-exception p1

    .line 275
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_a
    if-eqz p2, :cond_9

    .line 279
    :try_start_d
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_b

    :catch_c
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    :cond_9
    :goto_b
    throw p0

    :cond_a
    :goto_c
    return v1
.end method

.method public static encryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "AES"

    .line 349
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 350
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    const-string v0, "utf-8"

    .line 351
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x1

    .line 352
    invoke-virtual {p1, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 353
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    const/4 p1, 0x0

    .line 354
    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4

    const-string v0, "AES"

    const-string v1, "ECB"

    const-string v2, "PKCS7Padding"

    const/16 v3, 0x80

    .line 451
    invoke-static {p0, v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->getSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private static getSecretKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .locals 6

    const-string v0, "/"

    const-string v1, "AndroidKeyStore"

    const-string v2, "AESUtils"

    const/4 v3, 0x0

    .line 476
    :try_start_0
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 477
    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 479
    invoke-virtual {v4, p0}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    invoke-virtual {v4, p0, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object p0

    check-cast p0, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz p0, :cond_0

    .line 483
    invoke-virtual {p0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 484
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSecretKey: saved secretKey = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string p0, "Failed to get secret key entry!"

    .line 486
    invoke-static {v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 490
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 492
    invoke-static {p1, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    .line 495
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const/4 p0, 0x1

    new-array v1, p0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v1, v4

    .line 497
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    .line 498
    invoke-virtual {p2, p4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p2

    new-array p0, p0, [Ljava/lang/String;

    aput-object p3, p0, v4

    .line 499
    invoke-virtual {p2, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    .line 500
    invoke-virtual {p0, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    .line 501
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    .line 502
    invoke-virtual {p1, p0}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 504
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 505
    invoke-static {p0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    .line 506
    invoke-virtual {p1, p4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 509
    :goto_0
    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSecretKey: new secretKey = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :catch_3
    move-exception p0

    goto :goto_1

    :catch_4
    move-exception p0

    goto :goto_1

    :catch_5
    move-exception p0

    goto :goto_1

    :catch_6
    move-exception p0

    .line 515
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to get secret key, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method private static initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 3

    const-string v0, "AES"

    const/4 v1, 0x0

    .line 325
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 326
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 327
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 329
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 335
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 331
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    return-object v1
.end method
