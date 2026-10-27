.class public Lbkl;
.super Ljava/lang/Object;
.source "LoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 13

    .line 29
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const/4 v3, 0x3

    .line 34
    new-array v4, v3, [Ljava/lang/Object;

    .line 35
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-string/jumbo v5, "\u53d1\u9001\u8bf7\u6c42 %s on %s%n%s"

    .line 34
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "test"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    .line 45
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-interface {v0}, Lokio/BufferedSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v11, 0x100000

    .line 47
    invoke-virtual {p1, v11, v12}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v0

    const/4 v4, 0x4

    .line 50
    new-array v4, v4, [Ljava/lang/Object;

    .line 51
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v11

    aput-object v11, v4, v6

    .line 52
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    sub-long/2addr v9, v1

    long-to-double v0, v9

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v8

    .line 54
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    aput-object v0, v4, v3

    const-string/jumbo v0, "\u63a5\u6536\u54cd\u5e94: [%s] %n\u8fd4\u56dejson:\u3010%s\u3011 %.1fms%n%s"

    .line 50
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p1
.end method
