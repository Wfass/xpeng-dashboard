.class public final Lcom/alibaba/mtl/log/d/e;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/mtl/log/d/e$a;
    }
.end annotation


# static fields
.field private static cW:Lcom/alibaba/mtl/log/d/x;

.field private static cX:Lcom/alibaba/mtl/log/d/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "http.keepAlive"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/mtl/log/d/e;->cW:Lcom/alibaba/mtl/log/d/x;

    .line 58
    sput-object v0, Lcom/alibaba/mtl/log/d/e;->cX:Lcom/alibaba/mtl/log/d/w;

    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/util/Map;Z)Lcom/alibaba/mtl/log/d/e$a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/alibaba/mtl/log/d/e$a;"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p2

    .line 66
    new-instance v4, Lcom/alibaba/mtl/log/d/e$a;

    invoke-direct {v4}, Lcom/alibaba/mtl/log/d/e$a;-><init>()V

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    return-object v4

    .line 71
    :cond_0
    invoke-static {}, Lcom/ut/mini/internal/CustomDNS;->instance()Lcom/ut/mini/internal/CustomDNS;

    move-result-object v0

    move-object/from16 v5, p1

    invoke-virtual {v0, v5}, Lcom/ut/mini/internal/CustomDNS;->resolveUrl(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 72
    nop

    .line 73
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    if-eqz v0, :cond_1

    array-length v10, v0

    if-lt v10, v9, :cond_1

    .line 74
    aget-object v5, v0, v8

    .line 75
    aget-object v0, v0, v7

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    :goto_0
    nop

    .line 82
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11

    .line 90
    nop

    .line 93
    if-eqz v5, :cond_24

    .line 95
    :try_start_1
    instance-of v11, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v11, :cond_7

    .line 96
    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 97
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 98
    return-object v4

    .line 101
    :cond_2
    sget-object v11, Lcom/alibaba/mtl/log/d/e;->cW:Lcom/alibaba/mtl/log/d/x;

    if-eqz v11, :cond_3

    sget-object v11, Lcom/alibaba/mtl/log/d/e;->cW:Lcom/alibaba/mtl/log/d/x;

    invoke-virtual {v11}, Lcom/alibaba/mtl/log/d/x;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 102
    :cond_3
    const-string v11, "UrlWrapper"

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "new SslSocketFactory"

    aput-object v13, v12, v8

    invoke-static {v11, v12}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v11, Lcom/alibaba/mtl/log/d/x;

    invoke-direct {v11, v10}, Lcom/alibaba/mtl/log/d/x;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/alibaba/mtl/log/d/e;->cW:Lcom/alibaba/mtl/log/d/x;

    .line 105
    :cond_4
    move-object v11, v5

    check-cast v11, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v12, Lcom/alibaba/mtl/log/d/e;->cW:Lcom/alibaba/mtl/log/d/x;

    invoke-virtual {v11, v12}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 107
    sget-object v11, Lcom/alibaba/mtl/log/d/e;->cX:Lcom/alibaba/mtl/log/d/w;

    if-eqz v11, :cond_5

    sget-object v11, Lcom/alibaba/mtl/log/d/e;->cX:Lcom/alibaba/mtl/log/d/w;

    invoke-virtual {v11}, Lcom/alibaba/mtl/log/d/w;->getHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 108
    :cond_5
    const-string v11, "UrlWrapper"

    new-array v12, v7, [Ljava/lang/Object;

    const-string v13, "new HostnameVerifier"

    aput-object v13, v12, v8

    invoke-static {v11, v12}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v11, Lcom/alibaba/mtl/log/d/w;

    invoke-direct {v11, v10}, Lcom/alibaba/mtl/log/d/w;-><init>(Ljava/lang/String;)V

    sput-object v11, Lcom/alibaba/mtl/log/d/e;->cX:Lcom/alibaba/mtl/log/d/w;

    .line 111
    :cond_6
    move-object v10, v5

    check-cast v10, Ljavax/net/ssl/HttpsURLConnection;

    sget-object v11, Lcom/alibaba/mtl/log/d/e;->cX:Lcom/alibaba/mtl/log/d/w;

    invoke-virtual {v10, v11}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_10

    .line 115
    :cond_7
    nop

    .line 117
    const/4 v10, 0x3

    if-eq v1, v9, :cond_8

    if-ne v1, v10, :cond_9

    .line 118
    :cond_8
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 120
    :cond_9
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 122
    if-eq v1, v9, :cond_b

    if-ne v1, v10, :cond_a

    goto :goto_1

    .line 125
    :cond_a
    :try_start_2
    const-string v11, "GET"

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_b
    :goto_1
    const-string v11, "POST"

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_f

    .line 130
    :goto_2
    nop

    .line 131
    invoke-virtual {v5, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 132
    const/16 v11, 0x2710

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 133
    const v11, 0xea60

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 134
    const-string v11, "Connection"

    const-string v12, "close"

    invoke-virtual {v5, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p3, :cond_c

    .line 136
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip,deflate"

    invoke-virtual {v5, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 140
    const-string v11, "Host"

    invoke-virtual {v5, v11, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_d
    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 145
    nop

    .line 147
    if-eq v1, v9, :cond_f

    if-ne v1, v10, :cond_e

    goto :goto_3

    .line 210
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 149
    :cond_f
    :goto_3
    if-ne v1, v9, :cond_10

    .line 150
    const-string v0, "Content-Type"

    const-string v11, "multipart/form-data; boundary=GJircTeP"

    invoke-virtual {v5, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 151
    :cond_10
    if-ne v1, v10, :cond_11

    .line 152
    const-string v0, "Content-Type"

    const-string v11, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_11
    :goto_4
    nop

    .line 156
    if-eqz v2, :cond_18

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 157
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 161
    invoke-interface {v0, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 163
    invoke-static {}, Lcom/alibaba/mtl/log/d/g;->aP()Lcom/alibaba/mtl/log/d/g;

    move-result-object v0

    invoke-virtual {v0, v12, v7}, Lcom/alibaba/mtl/log/d/g;->a([Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 165
    array-length v13, v12

    move v14, v8

    :goto_5
    if-ge v14, v13, :cond_16

    aget-object v0, v12, v14

    .line 166
    if-ne v1, v9, :cond_13

    .line 167
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 168
    if-eqz v15, :cond_12

    .line 170
    :try_start_3
    const-string v6, "--GJircTeP\r\nContent-Disposition: form-data; name=\"%s\"; filename=\"%s\"\r\nContent-Type: application/octet-stream \r\n\r\n"

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v0, v10, v8

    aput-object v0, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 171
    invoke-virtual {v11, v15}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 172
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 175
    goto :goto_6

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 177
    :cond_12
    :goto_6
    goto :goto_8

    :cond_13
    const/4 v6, 0x3

    if-ne v1, v6, :cond_15

    .line 178
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 179
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-lez v10, :cond_14

    .line 181
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "&"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    .line 182
    :catch_1
    move-exception v0

    .line 183
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 184
    :goto_7
    goto :goto_8

    .line 187
    :cond_14
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    goto :goto_8

    .line 188
    :catch_2
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 165
    :cond_15
    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x3

    goto/16 :goto_5

    .line 195
    :cond_16
    if-ne v1, v9, :cond_17

    .line 196
    :try_start_6
    const-string v0, "--GJircTeP--\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    .line 198
    :catch_3
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 200
    :cond_17
    :goto_9
    nop

    .line 201
    :goto_a
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 203
    move-object v6, v0

    goto :goto_b

    :cond_18
    const/4 v6, 0x0

    :goto_b
    if-eqz v6, :cond_19

    .line 204
    array-length v0, v6

    goto :goto_c

    .line 206
    :cond_19
    move v0, v8

    :goto_c
    const-string v2, "Content-Length"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_d
    nop

    .line 212
    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 214
    if-eq v1, v9, :cond_1a

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1b

    :cond_1a
    if-eqz v6, :cond_1b

    array-length v0, v6

    if-lez v0, :cond_1b

    .line 215
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 216
    :try_start_8
    invoke-virtual {v1, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 217
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_e

    .line 224
    :catchall_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_1b

    .line 219
    :catch_4
    move-exception v0

    move-object v6, v1

    goto/16 :goto_19

    .line 224
    :cond_1b
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_1c

    .line 226
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 229
    goto :goto_f

    .line 227
    :catch_5
    move-exception v0

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :goto_f
    nop

    .line 234
    :cond_1c
    :try_start_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v4, Lcom/alibaba/mtl/log/d/e$a;->F:I

    .line 235
    const-string v0, "UtAnalytics"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "responseCode:"

    aput-object v2, v1, v8

    iget v2, v4, Lcom/alibaba/mtl/log/d/e$a;->F:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 239
    goto :goto_10

    .line 236
    :catch_6
    move-exception v0

    .line 238
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    :goto_10
    nop

    .line 243
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    if-eqz p3, :cond_1d

    :try_start_b
    const-string v0, "gzip"

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 246
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_11

    .line 265
    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto :goto_17

    .line 261
    :catch_7
    move-exception v0

    const/4 v6, 0x0

    goto :goto_15

    .line 248
    :cond_1d
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 250
    :goto_11
    move-object v6, v0

    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 251
    const/16 v0, 0x800

    new-array v2, v0, [B

    .line 253
    :goto_12
    invoke-virtual {v6, v2, v8, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1e

    .line 254
    invoke-virtual {v1, v2, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_12

    .line 265
    :cond_1e
    nop

    .line 267
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 270
    :goto_13
    goto :goto_14

    .line 268
    :catch_8
    move-exception v0

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 273
    :goto_14
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 274
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v4, Lcom/alibaba/mtl/log/d/e$a;->data:[B

    .line 277
    :cond_1f
    goto :goto_1e

    .line 261
    :catch_9
    move-exception v0

    .line 262
    :goto_15
    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 263
    nop

    .line 265
    if-eqz v6, :cond_20

    .line 267
    :try_start_f
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 270
    goto :goto_16

    .line 268
    :catch_a
    move-exception v0

    .line 269
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :cond_20
    :goto_16
    return-object v4

    .line 265
    :catchall_2
    move-exception v0

    move-object v1, v0

    :goto_17
    if-eqz v6, :cond_21

    .line 267
    :try_start_10
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 270
    goto :goto_18

    .line 268
    :catch_b
    move-exception v0

    .line 269
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    :cond_21
    :goto_18
    throw v1

    .line 224
    :catchall_3
    move-exception v0

    move-object v1, v0

    const/4 v6, 0x0

    goto :goto_1c

    .line 219
    :catch_c
    move-exception v0

    const/4 v6, 0x0

    .line 220
    :goto_19
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    const-string v1, "UtAnalytics"

    const-string v2, "http"

    invoke-static {v1, v2, v0}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 222
    nop

    .line 224
    if-eqz v6, :cond_22

    .line 226
    :try_start_12
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 229
    goto :goto_1a

    .line 227
    :catch_d
    move-exception v0

    .line 228
    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :cond_22
    :goto_1a
    return-object v4

    .line 224
    :catchall_4
    move-exception v0

    :goto_1b
    move-object v1, v0

    :goto_1c
    if-eqz v6, :cond_23

    .line 226
    :try_start_13
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 229
    goto :goto_1d

    .line 227
    :catch_e
    move-exception v0

    .line 228
    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 230
    :cond_23
    :goto_1d
    throw v1

    .line 127
    :catch_f
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 129
    return-object v4

    .line 113
    :catch_10
    move-exception v0

    .line 114
    return-object v4

    .line 278
    :cond_24
    const-string v0, "UtAnalytics"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "conn"

    aput-object v2, v1, v8

    aput-object v5, v1, v7

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :goto_1e
    return-object v4

    .line 87
    :catch_11
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    return-object v4

    .line 84
    :catch_12
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 86
    return-object v4
.end method
