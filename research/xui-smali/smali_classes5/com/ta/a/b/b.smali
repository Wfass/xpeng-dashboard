.class public Lcom/ta/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ta/a/b/d;

.field private static a:Lcom/ta/a/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    .line 44
    sput-object v0, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ta/a/b/a;
    .locals 15

    move-object/from16 v1, p1

    .line 50
    new-instance v2, Lcom/ta/a/b/a;

    invoke-direct {v2}, Lcom/ta/a/b/a;-><init>()V

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-object v2

    .line 58
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    move-object v4, p0

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    return-object v2

    .line 63
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 65
    instance-of v5, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_4

    .line 66
    sget-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    if-nez v5, :cond_2

    .line 67
    new-instance v5, Lcom/ta/a/b/f;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/ta/a/b/f;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    .line 69
    :cond_2
    sget-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    if-nez v5, :cond_3

    .line 70
    new-instance v5, Lcom/ta/a/b/d;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/ta/a/b/d;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    .line 72
    :cond_3
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/f;

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 73
    move-object v0, v4

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v5, Lcom/ta/a/b/b;->a:Lcom/ta/a/b/d;

    invoke-virtual {v0, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_12

    .line 84
    :cond_4
    nop

    .line 86
    if-eqz v4, :cond_11

    .line 87
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 88
    if-eqz p2, :cond_5

    .line 89
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 91
    :try_start_1
    const-string v0, "POST"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v1, ""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 94
    return-object v2

    .line 98
    :cond_5
    :try_start_2
    const-string v0, "GET"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_11

    .line 102
    nop

    .line 104
    :goto_0
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 105
    const/16 v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 107
    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 108
    const-string v0, "Content-Type"

    const-string v6, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v4, v0, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v0, "x-audid-appkey"

    const-string v7, ""

    invoke-virtual {v4, v0, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 117
    :try_start_3
    const-string v7, "x-audid-appname"

    const-string v8, "UTF-8"

    invoke-static {v0, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 121
    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 124
    :cond_6
    :goto_1
    const-string v0, "x-audid-sdk"

    const-string v7, "2.5.3-mini"

    invoke-virtual {v4, v0, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "2.5.3-mini"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v7, "x-audid-timestamp"

    invoke-virtual {v4, v7, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v7, ""

    new-array v8, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "timestamp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/a/c/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v6, "signature"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v7, 0x2

    invoke-static {v0, v7}, Lcom/ta/utdid2/a/a/a;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 137
    nop

    .line 139
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 140
    if-eqz v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 141
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 142
    :try_start_5
    invoke-virtual {v9, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 150
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    goto/16 :goto_13

    .line 145
    :catch_2
    move-exception v0

    move-object v8, v9

    goto/16 :goto_11

    .line 150
    :cond_7
    move-object v9, v8

    :goto_2
    if-eqz v9, :cond_8

    .line 152
    :try_start_6
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 155
    :goto_3
    goto :goto_4

    .line 153
    :catch_3
    move-exception v0

    .line 154
    const-string v1, ""

    new-array v9, v5, [Ljava/lang/Object;

    move-object v10, v0

    aput-object v10, v9, v3

    invoke-static {v1, v9}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 160
    :cond_8
    :goto_4
    :try_start_7
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v2, Lcom/ta/a/b/a;->a:I

    .line 161
    const-string v0, "signature"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/b/a;->a:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 165
    goto :goto_5

    .line 162
    :catch_4
    move-exception v0

    .line 164
    const-string v1, ""

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v3

    invoke-static {v1, v9}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :goto_5
    :try_start_8
    const-string v0, "x-audid-timestamp"

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Lcom/ta/a/b/a;->timestamp:J

    .line 170
    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "repsonse.timestamp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v2, Lcom/ta/a/b/a;->timestamp:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v3

    invoke-static {v0, v1}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ta/a/a;->a()J

    move-result-wide v0

    .line 172
    iget-wide v9, v2, Lcom/ta/a/b/a;->timestamp:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_a

    iget-wide v9, v2, Lcom/ta/a/b/a;->timestamp:J

    const-wide/32 v11, 0x1b7740

    add-long v13, v0, v11

    cmp-long v9, v9, v13

    if-gtz v9, :cond_9

    iget-wide v9, v2, Lcom/ta/a/b/a;->timestamp:J

    sub-long/2addr v0, v11

    cmp-long v0, v9, v0

    if-gez v0, :cond_a

    .line 175
    :cond_9
    invoke-static {}, Lcom/ta/a/a;->a()Lcom/ta/a/a;

    move-result-object v0

    iget-wide v9, v2, Lcom/ta/a/b/a;->timestamp:J

    invoke-virtual {v0, v9, v10}, Lcom/ta/a/a;->a(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 179
    :cond_a
    goto :goto_6

    .line 177
    :catch_5
    move-exception v0

    .line 181
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iput-wide v0, v2, Lcom/ta/a/b/a;->b:J

    .line 183
    nop

    .line 184
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    const/4 v6, -0x1

    const/16 v7, 0x800

    :try_start_9
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 187
    :try_start_a
    new-array v0, v7, [B

    .line 189
    :goto_7
    invoke-virtual {v9, v0, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-eq v8, v6, :cond_b

    .line 190
    invoke-virtual {v1, v0, v3, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_7

    .line 206
    :cond_b
    nop

    .line 208
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 211
    :goto_8
    goto :goto_c

    .line 209
    :catch_6
    move-exception v0

    .line 210
    const-string v4, ""

    new-array v5, v5, [Ljava/lang/Object;

    move-object v6, v0

    aput-object v6, v5, v3

    :goto_9
    invoke-static {v4, v5}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 206
    :catchall_1
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    goto/16 :goto_f

    .line 192
    :catch_7
    move-exception v0

    move-object v8, v9

    goto :goto_a

    .line 206
    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_f

    .line 192
    :catch_8
    move-exception v0

    .line 193
    :goto_a
    :try_start_c
    const-string v9, ""

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v3

    invoke-static {v9, v10}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 195
    :try_start_d
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 196
    :try_start_e
    new-array v0, v7, [B

    .line 198
    :goto_b
    invoke-virtual {v9, v0, v3, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v6, :cond_c

    .line 199
    invoke-virtual {v1, v0, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_b

    .line 204
    :cond_c
    nop

    .line 206
    nop

    .line 208
    :try_start_f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_8

    .line 209
    :catch_9
    move-exception v0

    .line 210
    const-string v4, ""

    new-array v5, v5, [Ljava/lang/Object;

    move-object v6, v0

    aput-object v6, v5, v3

    goto :goto_9

    .line 214
    :goto_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 215
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v2, Lcom/ta/a/b/a;->data:[B

    goto/16 :goto_15

    .line 201
    :catch_a
    move-exception v0

    move-object v8, v9

    goto :goto_d

    :catch_b
    move-exception v0

    .line 202
    :goto_d
    :try_start_10
    const-string v1, ""

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 203
    nop

    .line 206
    if-eqz v8, :cond_d

    .line 208
    :try_start_11
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    .line 211
    goto :goto_e

    .line 209
    :catch_c
    move-exception v0

    .line 210
    const-string v1, ""

    new-array v4, v5, [Ljava/lang/Object;

    move-object v5, v0

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_d
    :goto_e
    return-object v2

    .line 206
    :goto_f
    if-eqz v8, :cond_e

    .line 208
    :try_start_12
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    .line 211
    goto :goto_10

    .line 209
    :catch_d
    move-exception v0

    .line 210
    new-array v2, v5, [Ljava/lang/Object;

    move-object v4, v0

    aput-object v4, v2, v3

    const-string v0, ""

    invoke-static {v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_e
    :goto_10
    throw v1

    .line 150
    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_13

    .line 145
    :catch_e
    move-exception v0

    .line 146
    :goto_11
    :try_start_13
    const-string v1, ""

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v1, v4}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v6

    iput-wide v0, v2, Lcom/ta/a/b/a;->b:J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 148
    nop

    .line 150
    if-eqz v8, :cond_f

    .line 152
    :try_start_14
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 155
    goto :goto_12

    .line 153
    :catch_f
    move-exception v0

    .line 154
    const-string v1, ""

    new-array v4, v5, [Ljava/lang/Object;

    move-object v5, v0

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_f
    :goto_12
    return-object v2

    .line 150
    :goto_13
    if-eqz v8, :cond_10

    .line 152
    :try_start_15
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 155
    goto :goto_14

    .line 153
    :catch_10
    move-exception v0

    .line 154
    new-array v2, v5, [Ljava/lang/Object;

    move-object v4, v0

    aput-object v4, v2, v3

    const-string v0, ""

    invoke-static {v0, v2}, Lcom/ta/a/c/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    :cond_10
    :goto_14
    throw v1

    .line 99
    :catch_11
    move-exception v0

    .line 100
    const-string v1, ""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 101
    return-object v2

    .line 218
    :cond_11
    :goto_15
    return-object v2

    .line 81
    :catch_12
    move-exception v0

    .line 82
    const-string v1, ""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 83
    return-object v2

    .line 78
    :catch_13
    move-exception v0

    .line 79
    const-string v1, ""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 75
    :catch_14
    move-exception v0

    .line 76
    const-string v1, ""

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/ta/a/c/f;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 77
    return-object v2
.end method
