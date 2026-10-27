.class public Lcom/alibaba/sdk/android/httpdns/i/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/i/d;

.field private a:Lcom/alibaba/sdk/android/httpdns/i/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/httpdns/i/j<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/httpdns/i/d;Lcom/alibaba/sdk/android/httpdns/i/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/httpdns/i/d;",
            "Lcom/alibaba/sdk/android/httpdns/i/j<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/d;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/j;

    return-void
.end method

.method public static a(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/httpdns/i/d;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/d;

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/httpdns/i/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/i/d;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v5, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/d;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/httpdns/i/d;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    instance-of v5, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/i/c$a;

    invoke-direct {v6, p0}, Lcom/alibaba/sdk/android/httpdns/i/c$a;-><init>(Lcom/alibaba/sdk/android/httpdns/i/c;)V

    invoke-virtual {v5, v6}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_2

    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v6}, Lcom/alibaba/sdk/android/httpdns/i/c;->a(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {v7, v3}, Lcom/alibaba/sdk/android/httpdns/i/b;->a(ILjava/lang/String;)Lcom/alibaba/sdk/android/httpdns/i/b;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v3

    goto/16 :goto_2

    :catchall_1
    move-exception v6

    move-object v9, v6

    move-object v6, v5

    move-object v5, v9

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/alibaba/sdk/android/httpdns/i/b;->a(ILjava/lang/String;)Lcom/alibaba/sdk/android/httpdns/i/b;

    move-result-object v6

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    :try_start_5
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v6}, Lcom/alibaba/sdk/android/httpdns/i/c;->a(Ljava/io/BufferedReader;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request success "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->a(Ljava/lang/String;)V

    :cond_4
    iget-object v7, p0, Lcom/alibaba/sdk/android/httpdns/i/c;->a:Lcom/alibaba/sdk/android/httpdns/i/j;

    invoke-interface {v7, v3}, Lcom/alibaba/sdk/android/httpdns/i/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    return-object v3

    :cond_5
    :goto_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v3

    :catchall_2
    move-exception v5

    move-object v6, v3

    goto :goto_1

    :catchall_3
    move-exception v5

    move-object v4, v3

    move-object v6, v4

    :goto_1
    move-object v9, v6

    move-object v6, v3

    move-object v3, v5

    move-object v5, v9

    :goto_2
    :try_start_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fail, cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/alibaba/sdk/android/httpdns/log/HttpDnsLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_8
    :goto_4
    throw v0
.end method
