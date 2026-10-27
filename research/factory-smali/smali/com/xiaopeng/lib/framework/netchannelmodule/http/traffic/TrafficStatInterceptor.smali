.class public final Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;
.super Ljava/lang/Object;
.source "TrafficStatInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor$1;

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;-><init>()V

    return-void
.end method

.method private countHeadersSize(Lokhttp3/Headers;)J
    .locals 6
    .param p1, "headers"    # Lokhttp3/Headers;

    .line 66
    const-wide/16 v0, 0x0

    .line 68
    .local v0, "size":J
    if-nez p1, :cond_0

    .line 69
    return-wide v0

    .line 72
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 73
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 74
    invoke-virtual {p1, v2}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    return-wide v0
.end method

.method private countRequestBodySize(Lokhttp3/Request;)J
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "size":J
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    if-nez v2, :cond_0

    .line 82
    return-wide v0

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v2

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_0
    return-wide v0
.end method

.method private countRequestSize(Lokhttp3/Request;)V
    .locals 4
    .param p1, "request"    # Lokhttp3/Request;

    .line 46
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countHeadersSize(Lokhttp3/Headers;)J

    move-result-wide v0

    .line 47
    .local v0, "dataSize":J
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countRequestBodySize(Lokhttp3/Request;)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 50
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v2

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseRequest(Ljava/lang/String;J)V

    .line 51
    return-void
.end method

.method private countResponseSize(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "response"    # Lokhttp3/Response;

    .line 54
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countHeadersSize(Lokhttp3/Headers;)J

    move-result-wide v0

    .line 55
    .local v0, "dataSize":J
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 58
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseFailureWithSize(Ljava/lang/String;J)V

    .line 63
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;
    .locals 1

    .line 22
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 6
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 29
    .local v0, "request":Lokhttp3/Request;
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countRequestSize(Lokhttp3/Request;)V

    .line 30
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "domain":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v2, "response":Lokhttp3/Response;
    nop

    .line 37
    nop

    .line 40
    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countResponseSize(Ljava/lang/String;Lokhttp3/Response;)V

    .line 42
    return-object v2

    .line 35
    .end local v2    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    .line 36
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseFailureWithSize(Ljava/lang/String;J)V

    .line 37
    throw v2
.end method
