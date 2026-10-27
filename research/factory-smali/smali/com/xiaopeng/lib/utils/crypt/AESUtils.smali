.class public Lcom/xiaopeng/lib/utils/crypt/AESUtils;
.super Ljava/lang/Object;
.source "AESUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 307
    move-object v0, p1

    .line 308
    .local v0, "key_string":Ljava/lang/String;
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 309
    .local v1, "keyBytes":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 310
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 311
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 313
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->parseHexStr2Byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 315
    .local v4, "result":[B
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 317
    .end local v0    # "key_string":Ljava/lang/String;
    .end local v1    # "keyBytes":[B
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "result":[B
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static decrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "decryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 36
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 38
    .local v2, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 39
    .local v3, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 40
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v5

    .line 41
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v2, v5

    .line 42
    const/high16 v5, 0x100000

    new-array v5, v5, [B

    .line 44
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    if-ltz v6, :cond_0

    .line 45
    invoke-virtual {v2, v5, v4, v7}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const/4 v4, 0x1

    .line 57
    nop

    .line 58
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v6

    .line 61
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 62
    :goto_1
    nop

    .line 64
    :goto_2
    nop

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 67
    :catch_1
    move-exception v6

    .line 68
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 69
    :goto_3
    nop

    .line 50
    :goto_4
    return v4

    .line 56
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "buffer":[B
    .end local v7    # "r":I
    :catchall_0
    move-exception v3

    goto :goto_b

    .line 53
    :catch_2
    move-exception v3

    .line 54
    .local v3, "error":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .end local v3    # "error":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_1

    .line 58
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 60
    :catch_3
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 62
    :cond_1
    :goto_5
    nop

    .line 64
    :goto_6
    if-eqz v1, :cond_2

    .line 65
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 67
    :catch_4
    move-exception v3

    .line 68
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 69
    :cond_2
    :goto_7
    goto :goto_a

    .line 51
    :catch_5
    move-exception v3

    .line 52
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 57
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 58
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 60
    :catch_6
    move-exception v3

    .line 61
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 62
    :cond_3
    :goto_8
    nop

    .line 64
    :goto_9
    if-eqz v1, :cond_2

    .line 65
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 72
    :goto_a
    return v4

    .line 56
    :goto_b
    nop

    .line 57
    if-eqz v0, :cond_4

    .line 58
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    .line 60
    :catch_7
    move-exception v4

    .line 61
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 62
    :cond_4
    :goto_c
    nop

    .line 64
    :goto_d
    if-eqz v1, :cond_5

    .line 65
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    .line 67
    :catch_8
    move-exception v4

    .line 68
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 69
    :cond_5
    :goto_e
    nop

    .line 70
    :goto_f
    throw v3
.end method

.method public static decryptWithBase64(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 378
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 379
    .local v0, "keyBytes":[B
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 380
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 381
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 382
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 383
    .local v3, "result":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 384
    .end local v0    # "keyBytes":[B
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 385
    .local v0, "var7":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const/4 v1, 0x0

    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .line 182
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 183
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 184
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 185
    .local v2, "byteContent":[B
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 187
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 189
    .local v3, "result":[B
    invoke-static {v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 190
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "byteContent":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static encrypt(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 9
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 86
    .local v1, "outputStream":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 88
    .local v2, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p2, v4}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 89
    .local v5, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v6

    .line 90
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v6

    .line 91
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v1, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v2, v6

    .line 92
    const/high16 v6, 0x100000

    new-array v6, v6, [B

    .line 94
    .local v6, "buffer":[B
    :goto_0
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "r":I
    if-ltz v7, :cond_0

    .line 95
    invoke-virtual {v2, v6, v3, v8}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v2}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    nop

    .line 107
    nop

    .line 108
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 112
    :goto_1
    nop

    .line 114
    :goto_2
    nop

    .line 115
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 117
    :catch_1
    move-exception v3

    .line 118
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 119
    :goto_3
    nop

    .line 100
    :goto_4
    return v4

    .line 106
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "buffer":[B
    .end local v8    # "r":I
    :catchall_0
    move-exception v3

    goto :goto_b

    .line 103
    :catch_2
    move-exception v4

    .line 104
    .local v4, "error":Ljava/lang/OutOfMemoryError;
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .end local v4    # "error":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_1

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 110
    :catch_3
    move-exception v4

    .line 111
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 112
    :cond_1
    :goto_5
    nop

    .line 114
    :goto_6
    if-eqz v1, :cond_2

    .line 115
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 117
    :catch_4
    move-exception v4

    .line 118
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 119
    :cond_2
    :goto_7
    goto :goto_a

    .line 101
    :catch_5
    move-exception v4

    .line 102
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 107
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 108
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_8

    .line 110
    :catch_6
    move-exception v4

    .line 111
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 112
    :cond_3
    :goto_8
    nop

    .line 114
    :goto_9
    if-eqz v1, :cond_2

    .line 115
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    .line 122
    :goto_a
    return v3

    .line 106
    :goto_b
    nop

    .line 107
    if-eqz v0, :cond_4

    .line 108
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_c

    .line 110
    :catch_7
    move-exception v4

    .line 111
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 112
    :cond_4
    :goto_c
    nop

    .line 114
    :goto_d
    if-eqz v1, :cond_5

    .line 115
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    .line 117
    :catch_8
    move-exception v4

    .line 118
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 119
    :cond_5
    :goto_e
    nop

    .line 120
    :goto_f
    throw v3
.end method

.method public static encrypt(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "encryptFile"    # Ljava/io/File;
    .param p2, "sKey"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "outputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 137
    .local v1, "cipherOutputStream":Ljavax/crypto/CipherOutputStream;
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p2, v3}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 138
    .local v4, "cipher":Ljavax/crypto/Cipher;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 139
    new-instance v5, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v5, v0, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    move-object v1, v5

    .line 140
    const/high16 v5, 0x100000

    new-array v5, v5, [B

    .line 142
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "r":I
    if-ltz v6, :cond_0

    .line 143
    invoke-virtual {v1, v5, v2, v7}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->flush()V

    .line 148
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    nop

    .line 154
    if-eqz p0, :cond_1

    .line 155
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 159
    :cond_1
    :goto_1
    nop

    .line 161
    :goto_2
    nop

    .line 162
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 164
    :catch_1
    move-exception v2

    .line 165
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 166
    :goto_3
    nop

    .line 149
    :goto_4
    return v3

    .line 153
    .end local v4    # "cipher":Ljavax/crypto/Cipher;
    .end local v5    # "buffer":[B
    .end local v7    # "r":I
    :catchall_0
    move-exception v2

    goto :goto_9

    .line 150
    :catch_2
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz p0, :cond_2

    .line 155
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .line 157
    :catch_3
    move-exception v3

    .line 158
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 159
    :cond_2
    :goto_5
    nop

    .line 161
    :goto_6
    if-eqz v0, :cond_3

    .line 162
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 164
    :catch_4
    move-exception v3

    .line 165
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 167
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_8

    .line 166
    :cond_3
    :goto_7
    nop

    .line 169
    :goto_8
    return v2

    .line 153
    :goto_9
    nop

    .line 154
    if-eqz p0, :cond_4

    .line 155
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_a

    .line 157
    :catch_5
    move-exception v3

    .line 158
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_b

    .line 159
    :cond_4
    :goto_a
    nop

    .line 161
    :goto_b
    if-eqz v0, :cond_5

    .line 162
    :try_start_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_c

    .line 164
    :catch_6
    move-exception v3

    .line 165
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 166
    :cond_5
    :goto_c
    nop

    .line 167
    :goto_d
    throw v2
.end method

.method public static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "sourceFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_12

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 211
    .local v2, "out":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 212
    .local v3, "isFlag":Z
    const/4 v4, 0x0

    .line 214
    .local v4, "cipherInputStream":Ljavax/crypto/CipherInputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v5, "outFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 217
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 219
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 222
    :cond_2
    const/4 v6, 0x1

    invoke-static {p0, v6}, Lcom/xiaopeng/lib/utils/crypt/AESUtils;->initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 223
    .local v6, "cipher":Ljavax/crypto/Cipher;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 224
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v7

    .line 226
    new-instance v7, Ljavax/crypto/CipherInputStream;

    invoke-direct {v7, v0, v6}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    move-object v4, v7

    .line 227
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 228
    .local v7, "cache":[B
    move v8, v1

    .line 229
    .local v8, "nRead":I
    :goto_0
    invoke-virtual {v4, v7}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 230
    invoke-virtual {v2, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const/4 v1, 0x1

    .line 241
    .end local v3    # "isFlag":Z
    .end local v5    # "outFile":Ljava/io/File;
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "cache":[B
    .end local v8    # "nRead":I
    .local v1, "isFlag":Z
    nop

    .line 242
    :try_start_1
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception v3

    .line 245
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 246
    :goto_1
    nop

    .line 248
    :goto_2
    nop

    .line 249
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 251
    :catch_1
    move-exception v3

    .line 252
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 253
    :goto_3
    nop

    .line 255
    :goto_4
    nop

    .line 256
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 258
    :catch_2
    move-exception v3

    .line 259
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 260
    :cond_4
    :goto_5
    goto :goto_a

    .line 240
    .end local v1    # "isFlag":Z
    .local v3, "isFlag":Z
    :catchall_0
    move-exception v1

    goto :goto_b

    .line 236
    :catch_3
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    const/4 v1, 0x0

    .line 241
    .end local v3    # "isFlag":Z
    .local v1, "isFlag":Z
    if-eqz v4, :cond_5

    .line 242
    :try_start_5
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 244
    :catch_4
    move-exception v3

    .line 245
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 246
    :cond_5
    :goto_6
    nop

    .line 248
    :goto_7
    if-eqz v2, :cond_6

    .line 249
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    .line 251
    :catch_5
    move-exception v3

    .line 252
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_9

    .line 253
    :cond_6
    :goto_8
    nop

    .line 255
    :goto_9
    if-eqz v0, :cond_4

    .line 256
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_5

    .line 262
    :goto_a
    return v1

    .line 240
    .end local v1    # "isFlag":Z
    .local v3, "isFlag":Z
    :goto_b
    nop

    .line 241
    if-eqz v4, :cond_7

    .line 242
    :try_start_8
    invoke-virtual {v4}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_c

    .line 244
    :catch_6
    move-exception v5

    .line 245
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_d

    .line 246
    :cond_7
    :goto_c
    nop

    .line 248
    :goto_d
    if-eqz v2, :cond_8

    .line 249
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_e

    .line 251
    :catch_7
    move-exception v5

    .line 252
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_f

    .line 253
    :cond_8
    :goto_e
    nop

    .line 255
    :goto_f
    if-eqz v0, :cond_9

    .line 256
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_10

    .line 258
    :catch_8
    move-exception v5

    .line 259
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_11

    .line 260
    :cond_9
    :goto_10
    nop

    .line 261
    :goto_11
    throw v1

    .line 207
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

    .line 358
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 359
    .local v0, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 360
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 361
    .local v2, "byteContent":[B
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 362
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 363
    .local v3, "result":[B
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 364
    .end local v0    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "byteContent":[B
    .end local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    const/4 v1, 0x0

    return-object v1
.end method

.method private static initAESCipher(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 4
    .param p0, "sKey"    # Ljava/lang/String;
    .param p1, "cipherMode"    # I

    .line 332
    const/4 v0, 0x0

    .line 334
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 335
    .local v1, "codeFormat":[B
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 336
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    move-object v0, v3

    .line 338
    invoke-virtual {v0, p1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "codeFormat":[B
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/InvalidKeyException;
    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_0

    .line 339
    :catch_2
    move-exception v1

    .line 340
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 345
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    nop

    .line 346
    :goto_1
    return-object v0
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5
    .param p0, "buf"    # [B

    .line 272
    const-string v0, "0123456789ABCDEF"

    .line 273
    .local v0, "HEX":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 274
    const-string v1, ""

    return-object v1

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    array-length v3, p0

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 276
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 277
    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "0123456789ABCDEF"

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    .line 278
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 277
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6
    .param p0, "hexStr"    # Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 291
    .local v0, "len":I
    new-array v2, v0, [B

    .line 292
    .local v2, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 293
    mul-int v4, v1, v3

    mul-int v5, v1, v3

    add-int/2addr v5, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 294
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method
