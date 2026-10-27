.class public Lcom/amap/api/services/a/m;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 584
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    .line 585
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/m;->a:Ljava/lang/String;

    .line 588
    return-void
.end method

.method static I(Landroid/content/Context;)Ljava/security/PublicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const-string p0, "MIICnjCCAgegAwIBAgIJAJ0Pdzos7ZfYMA0GCSqGSIb3DQEBBQUAMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjAeFw0xMzA4MTUwNzU2NTVaFw0yMzA4MTMwNzU2NTVaMGgxCzAJBgNVBAYTAkNOMRMwEQYDVQQIDApTb21lLVN0YXRlMRAwDgYDVQQHDAdCZWlqaW5nMREwDwYDVQQKDAhBdXRvbmF2aTEfMB0GA1UEAwwWY29tLmF1dG9uYXZpLmFwaXNlcnZlcjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEA8eWAyHbFPoFPfdx5AD+D4nYFq4dbJ1p7SIKt19Oz1oivF/6H43v5Fo7s50pD1UF8+Qu4JoUQxlAgOt8OCyQ8DYdkaeB74XKb1wxkIYg/foUwN1CMHPZ9O9ehgna6K4EJXZxR7Y7XVZnbjHZIVn3VpPU/Rdr2v37LjTw+qrABJxMCAwEAAaNQME4wHQYDVR0OBBYEFOM/MLGP8xpVFuVd+3qZkw7uBvOTMB8GA1UdIwQYMBaAFOM/MLGP8xpVFuVd+3qZkw7uBvOTMAwGA1UdEwQFMAMBAf8wDQYJKoZIhvcNAQEFBQADgYEA4LY3g8aAD8JkxAOqUXDDyLuCCGOc2pTIhn0TwMNaVdH4hZlpTeC/wuRD5LJ0z3j+IQ0vLvuQA5uDjVyEOlBrvVIGwSem/1XGUo13DfzgAJ5k1161S5l+sFUo5TxpHOXr8Z5nqJMjieXmhnE/I99GFyHpQmw4cC6rhYUhdhtg+Zk="

    .line 442
    nop

    .line 443
    nop

    .line 444
    nop

    .line 446
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/amap/api/services/a/i;->b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :try_start_1
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 448
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 449
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 450
    if-eqz p0, :cond_1

    if-nez v2, :cond_0

    goto :goto_2

    .line 453
    :cond_0
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 454
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 455
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 460
    nop

    .line 461
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 465
    :goto_0
    nop

    .line 455
    :goto_1
    return-object p0

    .line 451
    :cond_1
    :goto_2
    nop

    .line 460
    nop

    .line 461
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 463
    :catch_1
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 465
    :goto_3
    nop

    .line 451
    :goto_4
    return-object v0

    .line 456
    :catch_2
    move-exception p0

    goto :goto_5

    .line 459
    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_8

    .line 456
    :catch_3
    move-exception p0

    move-object v1, v0

    .line 457
    :goto_5
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 458
    nop

    .line 460
    if-eqz v1, :cond_2

    .line 461
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    .line 463
    :catch_4
    move-exception p0

    .line 464
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 465
    :cond_2
    :goto_6
    nop

    .line 466
    :goto_7
    nop

    .line 467
    return-object v0

    .line 459
    :catchall_1
    move-exception p0

    .line 460
    :goto_8
    if-eqz v1, :cond_3

    .line 461
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 463
    :catch_5
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 465
    :cond_3
    :goto_9
    nop

    .line 459
    :goto_a
    throw p0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 3

    .line 564
    nop

    .line 566
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd HH:mm:ss:SSS"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 567
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 568
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    goto :goto_0

    .line 569
    :catch_0
    move-exception p0

    .line 570
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 573
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 216
    nop

    .line 217
    nop

    .line 219
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 220
    :try_start_1
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 222
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 223
    :goto_0
    if-eqz p0, :cond_0

    .line 224
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 225
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 228
    nop

    .line 249
    nop

    .line 234
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 238
    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    :goto_1
    nop

    .line 242
    :try_start_4
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 246
    goto :goto_2

    .line 243
    :catch_1
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    :goto_2
    nop

    .line 228
    return-object p0

    .line 229
    :catch_2
    move-exception p0

    goto :goto_3

    .line 232
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_6

    .line 229
    :catch_3
    move-exception p0

    move-object v2, v0

    goto :goto_3

    .line 232
    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_6

    .line 229
    :catch_4
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 230
    :goto_3
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 231
    nop

    .line 246
    if-eqz v1, :cond_1

    .line 234
    :try_start_6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 238
    goto :goto_4

    .line 235
    :catch_5
    move-exception p0

    .line 237
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    :cond_1
    :goto_4
    if-eqz v2, :cond_2

    .line 242
    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 246
    goto :goto_5

    .line 243
    :catch_6
    move-exception p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    :cond_2
    :goto_5
    nop

    .line 248
    nop

    .line 249
    return-object v0

    .line 232
    :catchall_2
    move-exception p0

    .line 246
    :goto_6
    if-eqz v1, :cond_3

    .line 234
    :try_start_8
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 238
    goto :goto_7

    .line 235
    :catch_7
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    :cond_3
    :goto_7
    if-eqz v2, :cond_4

    .line 242
    :try_start_9
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 246
    goto :goto_8

    .line 243
    :catch_8
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    :cond_4
    :goto_8
    nop

    .line 232
    throw p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 259
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    const/4 v1, 0x1

    .line 265
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x0

    .line 268
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 271
    :cond_1
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    goto :goto_0

    .line 279
    :cond_2
    goto :goto_2

    .line 276
    :catch_0
    move-exception p0

    .line 277
    const-string v1, "Utils"

    const-string v2, "assembleParams"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 260
    :cond_3
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    .line 58
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 59
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 590
    sget-object v0, Lcom/amap/api/services/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 591
    const-string v0, "                                   \u9274\u6743\u9519\u8bef\u4fe1\u606f                                  "

    invoke-static {v0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/amap/api/services/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA1Package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/amap/api/services/a/d;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "csid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 597
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "gsid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 598
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "json:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 599
    const-string p0, "                                                                               "

    invoke-static {p0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 600
    const-string p0, "\u8bf7\u4ed4\u7ec6\u68c0\u67e5 SHA1Package\u4e0eKey\u7533\u8bf7\u4fe1\u606f\u662f\u5426\u5bf9\u5e94\uff0cKey\u662f\u5426\u5220\u9664\uff0c\u5e73\u53f0\u662f\u5426\u5339\u914d                "

    invoke-static {p0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 601
    const-string p0, "\u5982\u82e5\u786e\u8ba4\u65e0\u8bef\uff0c\u4ecd\u5b58\u5728\u95ee\u9898\uff0c\u8bf7\u5c06\u5168\u90e8log\u4fe1\u606f\u63d0\u4ea4\u5230\u5de5\u5355\u7cfb\u7edf\uff0c\u591a\u8c22\u5408\u4f5c                       "

    invoke-static {p0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 604
    sget-object p0, Lcom/amap/api/services/a/m;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;B[B)V
    .locals 2

    .line 94
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    const/16 v0, 0xff

    and-int/2addr p1, v0

    .line 96
    if-ge p1, v0, :cond_0

    if-lez p1, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 98
    :cond_0
    if-ne p1, v0, :cond_1

    .line 99
    invoke-virtual {p0, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    goto :goto_1

    .line 101
    :catch_0
    move-exception p0

    .line 102
    const-string p1, "Utils"

    const-string p2, "writeField"

    invoke-static {p0, p1, p2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1
    return-void
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 p1, 0x1

    :try_start_0
    new-array p1, p1, [B

    const/4 v0, 0x0

    aput-byte v0, p1, v0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 46
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 49
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    .line 50
    move v0, v1

    :cond_1
    int-to-byte v0, v0

    invoke-static {p1}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amap/api/services/a/m;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    .line 51
    return-void
.end method

.method public static a()[B
    .locals 5

    .line 152
    :try_start_0
    const-string v0, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    .line 157
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    array-length v1, v0

    new-array v1, v1, [B

    .line 161
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 162
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    aput-byte v4, v1, v3

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/amap/api/services/a/i;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 167
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    array-length v1, v0

    new-array v1, v1, [B

    .line 173
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 174
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    :cond_1
    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "Utils"

    const-string v2, "getIV"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 1

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 81
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 108
    if-nez p0, :cond_0

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    invoke-static {p0}, Lcom/amap/api/services/a/m;->a(Ljava/lang/String;)[B

    move-result-object p0

    .line 114
    invoke-static {p0}, Lcom/amap/api/services/a/i;->b([B)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x1a

    add-int/lit8 v1, v1, 0x41

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 124
    const-string p0, ""

    return-object p0

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static d([B)Ljava/lang/String;
    .locals 2

    .line 486
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/m;->q([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 487
    :catch_0
    move-exception p0

    .line 488
    const-string v0, "Utils"

    const-string v1, "HexString"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Ljava/lang/String;)V
    .locals 4

    .line 627
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x4e

    if-ge v0, v2, :cond_1

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x4e

    if-ge v1, v3, :cond_0

    .line 631
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_0
    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 635
    goto :goto_1

    .line 636
    :cond_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/m;->e(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)V

    .line 640
    :goto_1
    return-void
.end method

.method static e([B)Ljava/lang/String;
    .locals 0

    .line 495
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/m;->q([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 496
    :catch_0
    move-exception p0

    .line 497
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 499
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    .line 644
    const-string v0, "authErrLog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void
.end method

.method public static o([B)[B
    .locals 2

    .line 327
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/m;->r([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 328
    :catch_0
    move-exception p0

    .line 329
    const-string v0, "Utils"

    const-string v1, "gZip"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static p([B)[B
    .locals 5

    .line 335
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_9

    .line 338
    :cond_0
    nop

    .line 339
    nop

    .line 340
    nop

    .line 342
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 343
    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    :try_start_2
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "log"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 345
    invoke-virtual {v2, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 346
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 347
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 348
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 349
    nop

    .line 374
    nop

    .line 357
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v2, "Utils"

    const-string v3, "zip1"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    nop

    .line 365
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 370
    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    .line 368
    const-string v1, "Utils"

    const-string v2, "zip2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_1
    nop

    .line 373
    goto :goto_5

    .line 349
    :catch_2
    move-exception p0

    goto :goto_2

    .line 355
    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_6

    .line 349
    :catch_3
    move-exception p0

    move-object v2, v0

    goto :goto_2

    .line 355
    :catchall_1
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    goto :goto_6

    .line 349
    :catch_4
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 351
    :goto_2
    :try_start_5
    const-string v3, "Utils"

    const-string v4, "zip"

    invoke-static {p0, v3, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 352
    nop

    .line 370
    if-eqz v2, :cond_1

    .line 357
    :try_start_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 361
    goto :goto_3

    .line 358
    :catch_5
    move-exception p0

    .line 359
    const-string v2, "Utils"

    const-string v3, "zip1"

    invoke-static {p0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 365
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 370
    goto :goto_4

    .line 366
    :catch_6
    move-exception p0

    .line 368
    const-string v1, "Utils"

    const-string v2, "zip2"

    invoke-static {p0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_2
    :goto_4
    nop

    .line 373
    nop

    .line 374
    move-object p0, v0

    :goto_5
    return-object p0

    .line 355
    :catchall_2
    move-exception p0

    .line 370
    :goto_6
    if-eqz v2, :cond_3

    .line 357
    :try_start_8
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7

    .line 361
    goto :goto_7

    .line 358
    :catch_7
    move-exception v0

    .line 359
    const-string v2, "Utils"

    const-string v3, "zip1"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_3
    :goto_7
    if-eqz v1, :cond_4

    .line 365
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    .line 370
    goto :goto_8

    .line 366
    :catch_8
    move-exception v0

    .line 368
    const-string v1, "Utils"

    const-string v2, "zip2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_4
    :goto_8
    nop

    .line 355
    throw p0

    .line 336
    :cond_5
    :goto_9
    return-object v0
.end method

.method public static q([B)Ljava/lang/String;
    .locals 5

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    if-nez p0, :cond_0

    .line 505
    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 508
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 512
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static r([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 525
    nop

    .line 526
    nop

    .line 527
    nop

    .line 529
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 530
    return-object v0

    .line 533
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 534
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 536
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 537
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    nop

    .line 558
    nop

    .line 543
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception p0

    .line 545
    throw p0

    .line 548
    :goto_0
    nop

    .line 550
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 554
    goto :goto_1

    .line 551
    :catch_1
    move-exception p0

    .line 552
    throw p0

    .line 556
    :goto_1
    nop

    .line 558
    return-object p0

    .line 541
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 538
    :catch_2
    move-exception p0

    goto :goto_2

    .line 541
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 538
    :catch_3
    move-exception p0

    move-object v2, v0

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 541
    :catchall_2
    move-exception p0

    move-object v1, v0

    goto :goto_5

    .line 538
    :catch_4
    move-exception p0

    move-object v2, v0

    .line 539
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 541
    :catchall_3
    move-exception p0

    move-object v1, v0

    :goto_4
    move-object v0, v2

    .line 552
    :goto_5
    if-eqz v0, :cond_1

    .line 543
    :try_start_6
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 546
    goto :goto_6

    .line 544
    :catch_5
    move-exception p0

    .line 545
    throw p0

    .line 548
    :cond_1
    :goto_6
    if-eqz v1, :cond_2

    .line 550
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 554
    goto :goto_7

    .line 551
    :catch_6
    move-exception p0

    .line 552
    throw p0

    .line 541
    :cond_2
    :goto_7
    throw p0
.end method
