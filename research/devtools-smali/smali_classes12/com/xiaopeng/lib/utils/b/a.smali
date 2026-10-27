.class public Lcom/xiaopeng/lib/utils/b/a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# direct methods
.method public static Z(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 307
    nop

    .line 308
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 309
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 310
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 311
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 313
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/b/a;->dF(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 315
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 317
    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    .line 84
    nop

    .line 85
    nop

    .line 86
    nop

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p2, v1}, Lcom/xiaopeng/lib/utils/b/a;->v(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p2

    .line 89
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 90
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :try_start_2
    new-instance p1, Ljavax/crypto/CipherOutputStream;

    invoke-direct {p1, p0, p2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 92
    const/high16 p2, 0x100000

    new-array p2, p2, [B

    .line 94
    :goto_0
    invoke-virtual {v3, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    .line 95
    invoke-virtual {p1, p2, v0, v2}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    nop

    .line 107
    nop

    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 110
    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 112
    :goto_1
    nop

    .line 114
    :goto_2
    nop

    .line 115
    :try_start_4
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 117
    :catch_1
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 119
    :goto_3
    nop

    .line 100
    :goto_4
    return v1

    .line 106
    :catchall_0
    move-exception p1

    goto :goto_f

    .line 103
    :catch_2
    move-exception p1

    goto :goto_5

    .line 101
    :catch_3
    move-exception p1

    goto :goto_6

    .line 106
    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_f

    .line 103
    :catch_4
    move-exception p1

    move-object p0, v2

    :goto_5
    move-object v2, v3

    goto :goto_7

    .line 101
    :catch_5
    move-exception p1

    move-object p0, v2

    :goto_6
    move-object v2, v3

    goto :goto_a

    .line 106
    :catchall_2
    move-exception p1

    move-object p0, v2

    move-object v3, p0

    goto :goto_f

    .line 103
    :catch_6
    move-exception p1

    move-object p0, v2

    .line 104
    :goto_7
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 107
    if-eqz v2, :cond_1

    .line 108
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_8

    .line 110
    :catch_7
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 112
    :cond_1
    :goto_8
    nop

    .line 114
    :goto_9
    if-eqz p0, :cond_3

    .line 115
    :try_start_7
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_d

    .line 101
    :catch_8
    move-exception p1

    move-object p0, v2

    .line 102
    :goto_a
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 107
    if-eqz v2, :cond_2

    .line 108
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_b

    .line 110
    :catch_9
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 112
    :cond_2
    :goto_b
    nop

    .line 114
    :goto_c
    if-eqz p0, :cond_3

    .line 115
    :try_start_a
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_d

    .line 117
    :catch_a
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    goto :goto_e

    .line 119
    :cond_3
    :goto_d
    nop

    .line 122
    :goto_e
    return v0

    .line 106
    :catchall_3
    move-exception p1

    move-object v3, v2

    .line 107
    :goto_f
    if-eqz v3, :cond_4

    .line 108
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_10

    .line 110
    :catch_b
    move-exception p2

    .line 111
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 112
    :cond_4
    :goto_10
    nop

    .line 114
    :goto_11
    if-eqz p0, :cond_5

    .line 115
    :try_start_c
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_12

    .line 117
    :catch_c
    move-exception p0

    .line 118
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 119
    :cond_5
    :goto_12
    nop

    .line 120
    :goto_13
    throw p1
.end method

.method public static aa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 378
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 379
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 380
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 381
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 382
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 383
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 384
    :catch_0
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    const/4 p0, 0x0

    return-object p0
.end method

.method public static dF(Ljava/lang/String;)[B
    .locals 6

    .line 290
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    .line 291
    new-array v2, v0, [B

    .line 292
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 293
    mul-int v4, v1, v3

    add-int/lit8 v5, v4, 0x2

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
    :cond_0
    return-object v2
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_15

    .line 209
    :cond_0
    nop

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 214
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_2

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 217
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    .line 219
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 222
    :cond_2
    invoke-static {p0, v0}, Lcom/xiaopeng/lib/utils/b/a;->v(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object p0

    .line 223
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 224
    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 226
    :try_start_2
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, p2, p0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 227
    const/16 p0, 0x400

    :try_start_3
    new-array p0, p0, [B

    .line 228
    nop

    .line 229
    :goto_0
    invoke-virtual {v3, p0}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 230
    invoke-virtual {p1, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 233
    :cond_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 234
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 235
    nop

    .line 241
    nop

    .line 242
    :try_start_4
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 246
    :goto_1
    nop

    .line 248
    :goto_2
    nop

    .line 249
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 251
    :catch_1
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 253
    :goto_3
    nop

    .line 255
    :goto_4
    nop

    .line 256
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    .line 258
    :catch_2
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    goto :goto_d

    .line 260
    :goto_5
    goto :goto_d

    .line 240
    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_e

    .line 236
    :catch_3
    move-exception p0

    move-object v2, v3

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_6

    .line 240
    :catchall_1
    move-exception p0

    move-object p1, v2

    goto :goto_e

    .line 236
    :catch_5
    move-exception p0

    move-object p1, v2

    goto :goto_6

    .line 240
    :catchall_2
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    goto :goto_e

    .line 236
    :catch_6
    move-exception p0

    move-object p1, v2

    move-object p2, p1

    .line 237
    :goto_6
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 238
    nop

    .line 241
    if-eqz v2, :cond_4

    .line 242
    :try_start_8
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    .line 244
    :catch_7
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 246
    :cond_4
    :goto_7
    nop

    .line 248
    :goto_8
    if-eqz p1, :cond_5

    .line 249
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_9

    .line 251
    :catch_8
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 253
    :cond_5
    :goto_9
    nop

    .line 255
    :goto_a
    if-eqz p2, :cond_6

    .line 256
    :try_start_a
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_b

    .line 258
    :catch_9
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    goto :goto_c

    .line 260
    :cond_6
    :goto_b
    nop

    .line 262
    :goto_c
    move v0, v1

    :goto_d
    return v0

    .line 240
    :catchall_3
    move-exception p0

    .line 241
    :goto_e
    if-eqz v2, :cond_7

    .line 242
    :try_start_b
    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_f

    .line 244
    :catch_a
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 246
    :cond_7
    :goto_f
    nop

    .line 248
    :goto_10
    if-eqz p1, :cond_8

    .line 249
    :try_start_c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_11

    .line 251
    :catch_b
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 253
    :cond_8
    :goto_11
    nop

    .line 255
    :goto_12
    if-eqz p2, :cond_9

    .line 256
    :try_start_d
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_13

    .line 258
    :catch_c
    move-exception p1

    .line 259
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 260
    :cond_9
    :goto_13
    nop

    .line 261
    :goto_14
    throw p0

    .line 207
    :cond_a
    :goto_15
    return v1
.end method

.method private static v(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 3

    .line 332
    nop

    .line 334
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 335
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 336
    const-string p0, "AES"

    invoke-static {p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    .line 338
    :try_start_1
    invoke-virtual {p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 343
    :catch_0
    move-exception p1

    goto :goto_0

    .line 341
    :catch_1
    move-exception p1

    goto :goto_1

    .line 339
    :catch_2
    move-exception p1

    goto :goto_2

    .line 343
    :catch_3
    move-exception p1

    move-object p0, v0

    .line 344
    :goto_0
    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_4

    .line 341
    :catch_4
    move-exception p1

    move-object p0, v0

    .line 342
    :goto_1
    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_3

    .line 339
    :catch_5
    move-exception p1

    move-object p0, v0

    .line 340
    :goto_2
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 345
    :goto_3
    nop

    .line 346
    :goto_4
    return-object p0
.end method
