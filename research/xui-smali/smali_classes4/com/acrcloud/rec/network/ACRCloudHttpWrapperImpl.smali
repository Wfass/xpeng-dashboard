.class public Lcom/acrcloud/rec/network/ACRCloudHttpWrapperImpl;
.super Ljava/lang/Object;
.source "ACRCloudHttpWrapperImpl.java"

# interfaces
.implements Lcom/acrcloud/rec/network/IACRCloudHttpWrapper;


# static fields
.field public static final BOUNDARY:Ljava/lang/String; = "--*****2015.03.30.acrcloud.rec.copyright*****\r\n"

.field public static final BOUNDARYSTR:Ljava/lang/String; = "*****2015.03.30.acrcloud.rec.copyright*****"

.field public static final HTTP_METHOD_GET:Ljava/lang/String; = "GET"

.field public static final HTTP_METHOD_POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "ACRCloudHttpWrapperImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/acrcloud/rec/utils/ACRCloudException;
        }
    .end annotation

    .line 147
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 148
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 150
    .local v1, "in":Ljava/io/BufferedReader;
    if-eqz p2, :cond_1

    .line 151
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v2, "tParams":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 154
    .local v5, "value":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .end local v2    # "tParams":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 181
    :catchall_0
    move-exception v2

    goto :goto_6

    .line 176
    :catch_0
    move-exception v2

    goto :goto_5

    .line 161
    :cond_1
    :goto_1
    const-string v2, "ACRCloudHttpWrapperImpl"

    invoke-static {v2, p1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "realUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 165
    .local v3, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 166
    invoke-virtual {v3, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 167
    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 170
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 173
    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    goto :goto_2

    .line 182
    .end local v2    # "realUrl":Ljava/net/URL;
    .end local v3    # "connection":Ljava/net/HttpURLConnection;
    .end local v5    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 183
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 185
    :catch_1
    move-exception v2

    .line 186
    .local v2, "e2":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    .end local v2    # "e2":Ljava/lang/Exception;
    goto :goto_4

    .line 187
    :goto_3
    nop

    .line 189
    :goto_4
    return-object v0

    .line 176
    :goto_5
    nop

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/acrcloud/rec/utils/ACRCloudException;

    const/16 v4, 0xbb8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 178
    .local v3, "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_6
    nop

    .line 182
    if-eqz v1, :cond_3

    .line 183
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 185
    :catch_2
    move-exception v3

    .line 186
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .end local v3    # "e2":Ljava/lang/Exception;
    goto :goto_8

    .line 187
    :cond_3
    :goto_7
    nop

    .line 188
    :goto_8
    throw v2
.end method

.method public doPost(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 16
    .param p1, "posturl"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/acrcloud/rec/utils/ACRCloudException;
        }
    .end annotation

    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 26
    move/from16 v3, p3

    const/4 v4, 0x0

    .line 27
    .local v4, "url":Ljava/net/URL;
    const-string v5, ""

    .line 28
    .local v5, "res":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v6, v0

    .line 31
    .local v6, "conn":Ljava/net/HttpURLConnection;
    const/16 v7, 0xbb8

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v4, v8

    .line 33
    const-string v8, "ACRCloudHttpWrapperImpl"

    invoke-static {v8, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    move-object v6, v8

    .line 36
    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 37
    invoke-virtual {v6, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 38
    const-string v8, "POST"

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 39
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 41
    const-string v8, "Accept-Charset"

    const-string v9, "utf-8"

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v8, "Connection"

    const-string v9, "keep-alive"

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v8, "Content-type"

    const-string v9, "multipart/form-data;boundary=*****2015.03.30.acrcloud.rec.copyright*****"

    invoke-virtual {v6, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 48
    nop

    .line 50
    move-object v8, v0

    .line 52
    .local v8, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 53
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v9

    .line 54
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v9, "reqData":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_4

    .line 56
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 57
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 58
    .local v12, "value":Ljava/lang/Object;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 59
    instance-of v13, v12, Ljava/lang/String;

    if-nez v13, :cond_1

    instance-of v13, v12, Ljava/lang/Integer;

    if-eqz v13, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    instance-of v13, v12, [B

    if-eqz v13, :cond_2

    .line 71
    const-string v13, "--*****2015.03.30.acrcloud.rec.copyright*****\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v13, "Content-Disposition:form-data;"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "name=\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "\";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v13, "filename=\"janet.sig\"\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v13, "Content-Type:application/octet-stream"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v13, "\r\n\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 78
    move-object v13, v12

    check-cast v13, [B

    check-cast v13, [B

    invoke-virtual {v8, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 79
    const-string v13, "\r\n"

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 60
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    const-string v13, "--*****2015.03.30.acrcloud.rec.copyright*****\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v13, "Content-Disposition:form-data;name=\""

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v13, "\"\r\n\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v13, "\r\n"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v13, "ACRCloudHttpWrapperImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 81
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 82
    :cond_3
    const-string v10, "--*****2015.03.30.acrcloud.rec.copyright*****--\r\n\r\n"

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    .end local v9    # "reqData":Ljava/lang/StringBuilder;
    :cond_4
    nop

    .line 93
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lcom/acrcloud/rec/utils/ACRCloudException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    move-object v7, v9

    .line 98
    .local v7, "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v7

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_3
    nop

    .line 102
    move-object v9, v0

    .line 104
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 105
    .local v0, "response":I
    const-string v10, "ACRCloudHttpWrapperImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/16 v10, 0xc8

    if-ne v0, v10, :cond_7

    .line 107
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    .line 108
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v9, v10

    .line 109
    const-string v10, ""

    .line 110
    .local v10, "tmpRes":Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    if-eqz v11, :cond_6

    .line 111
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 112
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    goto :goto_4

    .line 115
    :cond_6
    const-string v11, "ACRCloudHttpWrapperImpl"

    invoke-static {v11, v5}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v10    # "tmpRes":Ljava/lang/String;
    nop

    .line 127
    .end local v0    # "response":I
    nop

    .line 128
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 129
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Lcom/acrcloud/rec/utils/ACRCloudException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    move-object v7, v10

    .line 131
    .restart local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v7

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_5
    nop

    .line 134
    return-object v5

    .line 118
    .local v0, "response":I
    :cond_7
    :try_start_5
    new-instance v10, Lcom/acrcloud/rec/utils/ACRCloudException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "server response code error, code="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 119
    .local v10, "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    .end local v0    # "response":I
    .end local v10    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :catchall_0
    move-exception v0

    goto :goto_6

    .line 122
    :catch_2
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v10, Lcom/acrcloud/rec/utils/ACRCloudException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 124
    .restart local v10    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_6
    nop

    .line 127
    if-eqz v9, :cond_8

    .line 128
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 129
    :catch_3
    move-exception v0

    move-object v10, v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    new-instance v10, Lcom/acrcloud/rec/utils/ACRCloudException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Http error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    move-object v7, v10

    .line 131
    .restart local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v7

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :cond_8
    :goto_7
    nop

    .line 133
    throw v0

    .line 91
    .end local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v0

    goto :goto_8

    .line 87
    :catch_4
    move-exception v0

    .line 88
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    new-instance v9, Lcom/acrcloud/rec/utils/ACRCloudException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 89
    .local v9, "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v9

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    .end local v9    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :catch_5
    move-exception v0

    .line 85
    .local v0, "e":Ljava/net/SocketTimeoutException;
    new-instance v9, Lcom/acrcloud/rec/utils/ACRCloudException;

    const/16 v10, 0x7d5

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    .line 86
    .restart local v9    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 91
    .end local v0    # "e":Ljava/net/SocketTimeoutException;
    .end local v9    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :goto_8
    nop

    .line 92
    if-eqz v8, :cond_9

    .line 93
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_9

    .line 96
    :catch_6
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    new-instance v9, Lcom/acrcloud/rec/utils/ACRCloudException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v7, v10}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    move-object v7, v9

    .line 98
    .restart local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v7

    .line 99
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    :cond_9
    :goto_9
    nop

    .line 100
    throw v0

    .line 45
    .end local v8    # "out":Ljava/io/BufferedOutputStream;
    :catch_7
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/acrcloud/rec/utils/ACRCloudException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lcom/acrcloud/rec/utils/ACRCloudException;-><init>(ILjava/lang/String;)V

    move-object v7, v8

    .line 47
    .restart local v7    # "acrcExcept":Lcom/acrcloud/rec/utils/ACRCloudException;
    throw v7
.end method
