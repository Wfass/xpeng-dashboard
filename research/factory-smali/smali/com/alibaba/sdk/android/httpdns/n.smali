.class public Lcom/alibaba/sdk/android/httpdns/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private d:I

.field private d:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:J

    iput p1, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:I

    return-void
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:J

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/p;->a()Lcom/alibaba/sdk/android/httpdns/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/httpdns/p;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v2, 0x3a98

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/n$1;

    invoke-direct {v3, p0}, Lcom/alibaba/sdk/android/httpdns/n$1;-><init>(Lcom/alibaba/sdk/android/httpdns/n;)V

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_0
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " expect 200. response body is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    new-instance v4, Lcom/alibaba/sdk/android/httpdns/g;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/alibaba/sdk/android/httpdns/g;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/h;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/g;->getErrorCode()I

    move-result v5

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/httpdns/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v5, v4}, Lcom/alibaba/sdk/android/httpdns/h;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catchall_0
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_9

    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_7

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/alibaba/sdk/android/httpdns/q;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/alibaba/sdk/android/httpdns/q;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/p;->a()Lcom/alibaba/sdk/android/httpdns/p;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:J

    sub-long/2addr v5, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/alibaba/sdk/android/httpdns/p;->a(Lcom/alibaba/sdk/android/httpdns/q;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v0

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v0

    goto :goto_6

    :cond_4
    move-object v2, v0

    move-object v3, v2

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_8

    :goto_4
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_5
    move-object v0, v2

    move-object v2, v3

    goto :goto_9

    :catch_4
    move-exception v2

    move-object v1, v0

    move-object v3, v1

    :goto_6
    move-object v0, v2

    move-object v2, v3

    :goto_7
    :try_start_8
    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/p;->a()Lcom/alibaba/sdk/android/httpdns/p;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/alibaba/sdk/android/httpdns/p;->c(Ljava/lang/Throwable;)V

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/n;->d:I

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/n;->b()[Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v2, :cond_9

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_a
    :goto_8
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    if-eqz v2, :cond_c

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_b

    :cond_c
    :goto_a
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_c

    :goto_b
    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/i;->a(Ljava/lang/Throwable;)V

    :cond_d
    :goto_c
    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/n;->b()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
