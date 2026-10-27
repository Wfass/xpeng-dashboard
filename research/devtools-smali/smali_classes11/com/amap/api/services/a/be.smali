.class public Lcom/amap/api/services/a/be;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


# static fields
.field private static fI:Lcom/amap/api/services/a/bf;


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private fJ:Ljavax/net/ssl/SSLContext;

.field private fK:Ljava/net/Proxy;

.field private fL:Lcom/amap/api/services/a/bb$a;

.field private fM:Ljavax/net/ssl/HostnameVerifier;

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/services/a/be;-><init>(IILjava/net/Proxy;Z)V

    .line 104
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 6

    .line 74
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/services/a/be;-><init>(IILjava/net/Proxy;ZLcom/amap/api/services/a/bb$a;)V

    .line 75
    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;ZLcom/amap/api/services/a/bb$a;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/a/be;->g:Z

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amap/api/services/a/be;->h:J

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/services/a/be;->i:J

    .line 495
    new-instance v0, Lcom/amap/api/services/a/be$1;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/be$1;-><init>(Lcom/amap/api/services/a/be;)V

    iput-object v0, p0, Lcom/amap/api/services/a/be;->fM:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput p1, p0, Lcom/amap/api/services/a/be;->b:I

    .line 83
    iput p2, p0, Lcom/amap/api/services/a/be;->c:I

    .line 84
    iput-object p3, p0, Lcom/amap/api/services/a/be;->fK:Ljava/net/Proxy;

    .line 85
    iput-boolean p4, p0, Lcom/amap/api/services/a/be;->d:Z

    .line 86
    iput-object p5, p0, Lcom/amap/api/services/a/be;->fL:Lcom/amap/api/services/a/bb$a;

    .line 87
    invoke-direct {p0}, Lcom/amap/api/services/a/be;->a()V

    .line 88
    if-eqz p4, :cond_0

    .line 91
    :try_start_0
    const-string p1, "TLS"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    .line 92
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 93
    iput-object p1, p0, Lcom/amap/api/services/a/be;->fJ:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    const-string p2, "HttpUtil"

    const-string p3, "HttpUtil"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/bj;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    nop

    .line 350
    nop

    .line 351
    nop

    .line 352
    nop

    .line 354
    nop

    .line 355
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 358
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 362
    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 363
    const-string v3, ""

    .line 364
    if-eqz v1, :cond_0

    .line 365
    const-string v5, "gsid"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 366
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 367
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 370
    :cond_0
    new-instance v1, Lcom/amap/api/services/a/au;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amap/api/services/a/be;->j:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw v1

    .line 377
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 378
    :try_start_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 379
    :try_start_2
    new-instance v5, Ljava/io/PushbackInputStream;

    const/4 v6, 0x2

    invoke-direct {v5, v3, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 381
    :try_start_3
    new-array v6, v6, [B

    .line 382
    invoke-virtual {v5, v6}, Ljava/io/PushbackInputStream;->read([B)I

    .line 383
    invoke-virtual {v5, v6}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 395
    aget-byte v7, v6, v4

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    const/16 v7, -0x75

    if-ne v6, v7, :cond_2

    .line 396
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 401
    move-object v0, v6

    goto :goto_0

    .line 398
    :cond_2
    nop

    .line 401
    move-object v0, v5

    .line 403
    :goto_0
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 404
    :goto_1
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    .line 405
    invoke-virtual {v2, v6, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 407
    :cond_3
    sget-object v4, Lcom/amap/api/services/a/be;->fI:Lcom/amap/api/services/a/bf;

    if-eqz v4, :cond_4

    .line 408
    sget-object v4, Lcom/amap/api/services/a/be;->fI:Lcom/amap/api/services/a/bf;

    invoke-interface {v4}, Lcom/amap/api/services/a/bf;->a()V

    .line 410
    :cond_4
    new-instance v4, Lcom/amap/api/services/a/bj;

    invoke-direct {v4}, Lcom/amap/api/services/a/bj;-><init>()V

    .line 411
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/amap/api/services/a/bj;->a:[B

    .line 412
    iput-object v1, v4, Lcom/amap/api/services/a/bj;->b:Ljava/util/Map;

    .line 413
    iget-object v1, p0, Lcom/amap/api/services/a/be;->j:Ljava/lang/String;

    iput-object v1, v4, Lcom/amap/api/services/a/bj;->c:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    nop

    .line 418
    nop

    .line 420
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 425
    goto :goto_2

    .line 421
    :catch_0
    move-exception v1

    .line 422
    const-string v2, "HttpUrlUtil"

    const-string v6, "parseResult"

    invoke-static {v1, v2, v6}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_2
    if-eqz v3, :cond_5

    .line 429
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 434
    goto :goto_3

    .line 430
    :catch_1
    move-exception v1

    .line 431
    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_5
    :goto_3
    nop

    .line 438
    :try_start_6
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 444
    goto :goto_4

    .line 439
    :catch_2
    move-exception v1

    .line 440
    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_4
    nop

    .line 448
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 454
    goto :goto_5

    .line 449
    :catch_3
    move-exception v0

    .line 450
    const-string v1, "HttpUrlUtil"

    const-string v2, "parseResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :goto_5
    if-eqz p1, :cond_6

    .line 458
    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 464
    goto :goto_6

    .line 459
    :catch_4
    move-exception p1

    .line 460
    const-string v0, "HttpUrlUtil"

    const-string v1, "parseResult"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_6
    :goto_6
    nop

    .line 414
    return-object v4

    .line 418
    :catchall_0
    move-exception v1

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_a

    .line 415
    :catch_5
    move-exception v1

    move-object v9, v2

    move-object v2, v0

    move-object v0, v9

    goto :goto_9

    .line 418
    :catchall_1
    move-exception v1

    move-object v5, v0

    goto :goto_7

    .line 415
    :catch_6
    move-exception v1

    move-object v5, v0

    goto :goto_8

    .line 418
    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v5, v3

    :goto_7
    move-object v0, v2

    move-object v2, v5

    goto :goto_a

    .line 415
    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v5, v3

    :goto_8
    move-object v0, v2

    move-object v2, v5

    goto :goto_9

    .line 418
    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v5, v3

    goto :goto_a

    .line 415
    :catch_8
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v5, v3

    .line 416
    :goto_9
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 418
    :catchall_4
    move-exception v1

    .line 464
    :goto_a
    if-eqz v0, :cond_7

    .line 420
    :try_start_a
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    .line 425
    goto :goto_b

    .line 421
    :catch_9
    move-exception v0

    .line 422
    const-string v4, "HttpUrlUtil"

    const-string v6, "parseResult"

    invoke-static {v0, v4, v6}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_7
    :goto_b
    if-eqz v3, :cond_8

    .line 429
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    .line 434
    goto :goto_c

    .line 430
    :catch_a
    move-exception v0

    .line 431
    const-string v3, "HttpUrlUtil"

    const-string v4, "parseResult"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_8
    :goto_c
    if-eqz v5, :cond_9

    .line 438
    :try_start_c
    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    .line 444
    goto :goto_d

    .line 439
    :catch_b
    move-exception v0

    .line 440
    const-string v3, "HttpUrlUtil"

    const-string v4, "parseResult"

    invoke-static {v0, v3, v4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_9
    :goto_d
    if-eqz v2, :cond_a

    .line 448
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c

    .line 454
    goto :goto_e

    .line 449
    :catch_c
    move-exception v0

    .line 450
    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_a
    :goto_e
    if-eqz p1, :cond_b

    .line 458
    :try_start_e
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d

    .line 464
    goto :goto_f

    .line 459
    :catch_d
    move-exception p1

    .line 460
    const-string v0, "HttpUrlUtil"

    const-string v2, "parseResult"

    invoke-static {p1, v0, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_b
    :goto_f
    nop

    .line 418
    throw v1
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
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

    .line 509
    if-eqz p0, :cond_3

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 516
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 517
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 518
    if-nez v1, :cond_0

    .line 519
    const-string v1, ""

    .line 521
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 522
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    :cond_1
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 532
    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 56
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/be;->j:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v1, "HttpUrlUtil"

    const-string v2, "initCSID"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void
.end method

.method public static a(Lcom/amap/api/services/a/bf;)V
    .locals 0

    .line 69
    sput-object p0, Lcom/amap/api/services/a/be;->fI:Lcom/amap/api/services/a/bf;

    .line 70
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    .line 475
    if-eqz p1, :cond_0

    .line 476
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    nop

    .line 478
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    invoke-virtual {p2, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    goto :goto_0

    .line 482
    :cond_0
    :try_start_0
    const-string p1, "csid"

    iget-object v0, p0, Lcom/amap/api/services/a/be;->j:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    goto :goto_1

    .line 483
    :catch_0
    move-exception p1

    .line 484
    const-string v0, "HttpUrlUtil"

    const-string v1, "addHeaders"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :goto_1
    iget p1, p0, Lcom/amap/api/services/a/be;->b:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 487
    iget p1, p0, Lcom/amap/api/services/a/be;->c:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 489
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/amap/api/services/a/bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/amap/api/services/a/bj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 253
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 255
    if-eqz p3, :cond_0

    array-length p2, p3

    if-lez p2, :cond_0

    .line 256
    new-instance p2, Ljava/io/DataOutputStream;

    .line 257
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 259
    invoke-virtual {p2, p3}, Ljava/io/DataOutputStream;->write([B)V

    .line 260
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V

    .line 262
    :cond_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 263
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/be;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 289
    :catch_0
    move-exception p1

    .line 290
    nop

    .line 291
    const-string p2, "HttpUrlUtil"

    const-string p3, "makePostReqeust"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 285
    :catch_1
    move-exception p1

    .line 286
    nop

    .line 287
    const-string p2, "HttpUrlUtil"

    const-string p3, "makePostReqeust"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    throw p1

    .line 281
    :catch_2
    move-exception p1

    .line 282
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 279
    :catch_3
    move-exception p1

    .line 280
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 276
    :catch_4
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 278
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :catch_5
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/net/SocketException;->printStackTrace()V

    .line 275
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 270
    :catch_6
    move-exception p1

    .line 271
    invoke-virtual {p1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 272
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 267
    :catch_7
    move-exception p1

    .line 268
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 269
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 264
    :catch_8
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/net/ConnectException;->printStackTrace()V

    .line 266
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {}, Lcom/amap/api/services/a/g;->a()V

    .line 300
    nop

    .line 301
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcom/amap/api/services/a/be;->fL:Lcom/amap/api/services/a/bb$a;

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/amap/api/services/a/be;->fL:Lcom/amap/api/services/a/bb$a;

    iget-object v1, p0, Lcom/amap/api/services/a/be;->fK:Ljava/net/Proxy;

    invoke-interface {p1, v1, v0}, Lcom/amap/api/services/a/bb$a;->a(Ljava/net/Proxy;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_0

    .line 305
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 306
    iget-object p1, p0, Lcom/amap/api/services/a/be;->fK:Ljava/net/Proxy;

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/amap/api/services/a/be;->fK:Ljava/net/Proxy;

    invoke-virtual {v0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    goto :goto_1

    .line 310
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 315
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/amap/api/services/a/be;->d:Z

    if-eqz v0, :cond_3

    .line 316
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 317
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v1, p0, Lcom/amap/api/services/a/be;->fJ:Ljavax/net/ssl/SSLContext;

    .line 318
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 319
    iget-object v1, p0, Lcom/amap/api/services/a/be;->fM:Ljavax/net/ssl/HostnameVerifier;

    .line 320
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    .line 322
    :cond_3
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 327
    :goto_2
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_4

    .line 328
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/amap/api/services/a/be;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    .line 331
    const/4 p2, 0x1

    if-eqz p3, :cond_5

    .line 332
    const-string p3, "POST"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 333
    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 334
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 335
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    goto :goto_3

    .line 337
    :cond_5
    const-string p3, "GET"

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 341
    :goto_3
    return-object p1
.end method

.method a(J)V
    .locals 0

    .line 111
    iput-wide p1, p0, Lcom/amap/api/services/a/be;->i:J

    .line 112
    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amap/api/services/a/bd$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amap/api/services/a/bd$a;",
            ")V"
        }
    .end annotation

    .line 120
    nop

    .line 121
    nop

    .line 123
    if-nez p4, :cond_0

    .line 171
    nop

    .line 185
    nop

    .line 124
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p3}, Lcom/amap/api/services/a/be;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    if-eqz p3, :cond_1

    .line 131
    const-string p1, "?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/services/a/be;->i:J

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 137
    const-string v1, "RANGE"

    invoke-virtual {p1, v1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 141
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    .line 142
    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-eq p2, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, p3

    :goto_0
    const/16 v3, 0xce

    if-eq p2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, p3

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 143
    new-instance v1, Lcom/amap/api/services/a/au;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-interface {p4, v1}, Lcom/amap/api/services/a/bd$a;->a(Ljava/lang/Throwable;)V

    .line 148
    :cond_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 149
    const/16 v0, 0x400

    :try_start_2
    new-array v1, v0, [B

    .line 151
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/amap/api/services/a/be;->g:Z

    if-nez v2, :cond_7

    invoke-virtual {p2, v1, p3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_7

    iget-wide v3, p0, Lcom/amap/api/services/a/be;->h:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/amap/api/services/a/be;->i:J

    iget-wide v5, p0, Lcom/amap/api/services/a/be;->h:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 153
    :cond_5
    if-ne v2, v0, :cond_6

    .line 154
    iget-wide v3, p0, Lcom/amap/api/services/a/be;->i:J

    invoke-interface {p4, v1, v3, v4}, Lcom/amap/api/services/a/bd$a;->a([BJ)V

    goto :goto_3

    .line 156
    :cond_6
    new-array v3, v2, [B

    .line 157
    invoke-static {v1, p3, v3, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-wide v4, p0, Lcom/amap/api/services/a/be;->i:J

    invoke-interface {p4, v3, v4, v5}, Lcom/amap/api/services/a/bd$a;->a([BJ)V

    .line 160
    :goto_3
    iget-wide v3, p0, Lcom/amap/api/services/a/be;->i:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/amap/api/services/a/be;->i:J

    goto :goto_2

    .line 163
    :cond_7
    iget-boolean p3, p0, Lcom/amap/api/services/a/be;->g:Z

    if-eqz p3, :cond_8

    .line 164
    invoke-interface {p4}, Lcom/amap/api/services/a/bd$a;->c()V

    goto :goto_4

    .line 166
    :cond_8
    invoke-interface {p4}, Lcom/amap/api/services/a/bd$a;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :goto_4
    if-eqz p2, :cond_9

    .line 173
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    :goto_5
    goto :goto_6

    .line 178
    :catch_0
    move-exception p2

    .line 180
    const-string p3, "HttpUrlUtil"

    const-string p4, "makeDownloadGetRequest"

    invoke-static {p2, p3, p4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 174
    :catch_1
    move-exception p2

    .line 176
    const-string p3, "HttpUrlUtil"

    const-string p4, "makeDownloadGetRequest"

    invoke-static {p2, p3, p4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 185
    :cond_9
    :goto_6
    if-eqz p1, :cond_b

    .line 187
    :try_start_4
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_a

    .line 171
    :catchall_0
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    goto :goto_c

    .line 168
    :catch_2
    move-exception p3

    move-object v0, p2

    move-object p2, p3

    goto :goto_7

    :catch_3
    move-exception p2

    goto :goto_7

    .line 171
    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    goto :goto_c

    .line 168
    :catch_4
    move-exception p1

    move-object p2, p1

    move-object p1, v0

    .line 169
    :goto_7
    :try_start_5
    invoke-interface {p4, p2}, Lcom/amap/api/services/a/bd$a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 171
    if-eqz v0, :cond_a

    .line 173
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 182
    :goto_8
    goto :goto_9

    .line 178
    :catch_5
    move-exception p2

    .line 180
    const-string p3, "HttpUrlUtil"

    const-string p4, "makeDownloadGetRequest"

    invoke-static {p2, p3, p4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 174
    :catch_6
    move-exception p2

    .line 176
    const-string p3, "HttpUrlUtil"

    const-string p4, "makeDownloadGetRequest"

    invoke-static {p2, p3, p4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 185
    :cond_a
    :goto_9
    if-eqz p1, :cond_b

    .line 187
    :try_start_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 192
    :goto_a
    goto :goto_b

    .line 188
    :catch_7
    move-exception p1

    .line 190
    const-string p2, "HttpUrlUtil"

    const-string p3, "makeDownloadGetRequest"

    invoke-static {p1, p2, p3}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 197
    :cond_b
    :goto_b
    return-void

    .line 171
    :catchall_2
    move-exception p2

    :goto_c
    if-eqz v0, :cond_c

    .line 173
    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 182
    :goto_d
    goto :goto_e

    .line 178
    :catch_8
    move-exception p3

    .line 180
    const-string p4, "HttpUrlUtil"

    const-string v0, "makeDownloadGetRequest"

    invoke-static {p3, p4, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 174
    :catch_9
    move-exception p3

    .line 176
    const-string p4, "HttpUrlUtil"

    const-string v0, "makeDownloadGetRequest"

    invoke-static {p3, p4, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 185
    :cond_c
    :goto_e
    if-eqz p1, :cond_d

    .line 187
    :try_start_9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 192
    goto :goto_f

    .line 188
    :catch_a
    move-exception p1

    .line 190
    const-string p3, "HttpUrlUtil"

    const-string p4, "makeDownloadGetRequest"

    invoke-static {p1, p3, p4}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_d
    :goto_f
    throw p2
.end method

.method b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/amap/api/services/a/bj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amap/api/services/a/bj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/a/au;
        }
    .end annotation

    .line 211
    :try_start_0
    invoke-static {p3}, Lcom/amap/api/services/a/be;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    if-eqz p3, :cond_0

    .line 215
    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/amap/api/services/a/be;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 220
    invoke-direct {p0, p1}, Lcom/amap/api/services/a/be;->a(Ljava/net/HttpURLConnection;)Lcom/amap/api/services/a/bj;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 240
    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 242
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :catch_1
    move-exception p1

    .line 239
    throw p1

    .line 236
    :catch_2
    move-exception p1

    .line 237
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :catch_3
    move-exception p1

    .line 235
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :catch_4
    move-exception p1

    .line 233
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :catch_5
    move-exception p1

    .line 230
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :catch_6
    move-exception p1

    .line 227
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :catch_7
    move-exception p1

    .line 225
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :catch_8
    move-exception p1

    .line 223
    new-instance p1, Lcom/amap/api/services/a/au;

    const-string p2, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {p1, p2}, Lcom/amap/api/services/a/au;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(J)V
    .locals 0

    .line 115
    iput-wide p1, p0, Lcom/amap/api/services/a/be;->h:J

    .line 116
    return-void
.end method
