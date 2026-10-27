.class public Lcom/ta/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/a/b/d;

.field private static a:Lcom/ta/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "http.keepAlive"

    const-string/jumbo v1, "true"

    .line 40
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    .line 44
    sput-object v0, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/a/b/a;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, ""

    .line 50
    new-instance v2, Lcom/ta/a/b/a;

    invoke-direct {v2}, Lcom/ta/a/b/a;-><init>()V

    .line 51
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x0

    .line 58
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v2

    .line 63
    :cond_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 65
    instance-of v6, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_4

    .line 66
    sget-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    if-nez v6, :cond_2

    .line 67
    new-instance v6, Lcom/ta/a/b/f;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/ta/a/b/f;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    .line 69
    :cond_2
    sget-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    if-nez v6, :cond_3

    .line 70
    new-instance v6, Lcom/ta/a/b/d;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/ta/a/b/d;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    .line 72
    :cond_3
    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 73
    move-object v4, v5

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v6, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    invoke-virtual {v4, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :cond_4
    if-eqz v5, :cond_11

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_5

    .line 89
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :try_start_1
    const-string v6, "POST"

    .line 91
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 93
    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :cond_5
    :try_start_2
    const-string v6, "GET"

    .line 98
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_f

    .line 104
    :goto_0
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/16 v6, 0x2710

    .line 105
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 107
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    .line 108
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Charset"

    const-string v7, "UTF-8"

    .line 109
    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "x-audid-appkey"

    .line 112
    invoke-virtual {v5, v8, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :try_start_3
    const-string/jumbo v9, "x-audid-appname"

    .line 117
    invoke-static {v8, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_6
    const-string/jumbo v7, "x-audid-sdk"

    const-string v8, "2.5.3-mini"

    .line 124
    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ta/a/a;->a()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "x-audid-timestamp"

    .line 128
    invoke-virtual {v5, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-array v9, v4, [Ljava/lang/Object;

    .line 129
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "timestamp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v1, v9}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ta/a/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/ta/utdid2/a/a/a;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "signature"

    invoke-virtual {v5, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v6, 0x0

    .line 139
    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    if-eqz v0, :cond_7

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 141
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 142
    :try_start_5
    invoke-virtual {v11, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v6, v11

    goto/16 :goto_c

    :cond_7
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_8

    .line 152
    :try_start_6
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v11, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v11, v0, v3

    .line 154
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_8
    :goto_2
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v2, Lcom/ta/a/b/a;->a:I

    .line 161
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/b/a;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v3

    .line 164
    invoke-static {v1, v7}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_3
    :try_start_8
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/ta/a/b/a;->timestamp:J

    new-array v0, v4, [Ljava/lang/Object;

    .line 170
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "repsonse.timestamp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v11, v2, Lcom/ta/a/b/a;->timestamp:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->a()J

    move-result-wide v7

    .line 172
    iget-wide v11, v2, Lcom/ta/a/b/a;->timestamp:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_a

    iget-wide v11, v2, Lcom/ta/a/b/a;->timestamp:J

    const-wide/32 v13, 0x1b7740

    add-long v15, v7, v13

    cmp-long v0, v11, v15

    if-gtz v0, :cond_9

    iget-wide v11, v2, Lcom/ta/a/b/a;->timestamp:J

    sub-long/2addr v7, v13

    cmp-long v0, v11, v7

    if-gez v0, :cond_a

    .line 175
    :cond_9
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    iget-wide v7, v2, Lcom/ta/a/b/a;->timestamp:J

    invoke-virtual {v0, v7, v8}, Lcom/ta/a/a;->a(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 181
    :catch_4
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/a/b/a;->b:J

    .line 184
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v8, -0x1

    const/16 v9, 0x800

    .line 186
    :try_start_9
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    new-array v0, v9, [B

    .line 189
    :goto_4
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-eq v6, v8, :cond_b

    .line 190
    invoke-virtual {v7, v0, v3, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_4

    .line 208
    :cond_b
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 210
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v6, v10

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v6, v10

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catch_7
    move-exception v0

    :goto_5
    :try_start_c
    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v3

    .line 193
    invoke-static {v1, v10}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 195
    :try_start_d
    new-instance v10, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    new-array v0, v9, [B

    .line 198
    :goto_6
    invoke-virtual {v10, v0, v3, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v8, :cond_c

    .line 199
    invoke-virtual {v7, v0, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_6

    .line 208
    :cond_c
    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 210
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :goto_7
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 215
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/b/a;->data:[B

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v6, v10

    goto :goto_8

    :catch_a
    move-exception v0

    :goto_8
    :try_start_10
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 202
    invoke-static {v1, v5}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    if-eqz v6, :cond_d

    .line 208
    :try_start_11
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_9

    :catch_b
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 210
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_9
    return-object v2

    :goto_a
    if-eqz v6, :cond_e

    .line 208
    :try_start_12
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_b

    :catch_c
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 210
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_e
    :goto_b
    throw v2

    :catchall_3
    move-exception v0

    :goto_c
    :try_start_13
    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 146
    invoke-static {v1, v5}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v9

    iput-wide v7, v2, Lcom/ta/a/b/a;->b:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    if-eqz v6, :cond_f

    .line 152
    :try_start_14
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 154
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_d
    return-object v2

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_10

    .line 152
    :try_start_15
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    move-object v5, v0

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v5, v0, v3

    .line 154
    invoke-static {v1, v0}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_10
    :goto_e
    throw v2

    :catch_f
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 100
    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_11
    :goto_f
    return-object v2

    :catchall_5
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_10
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 79
    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2

    :catch_11
    move-exception v0

    new-array v3, v3, [Ljava/lang/Object;

    .line 76
    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v2
.end method
