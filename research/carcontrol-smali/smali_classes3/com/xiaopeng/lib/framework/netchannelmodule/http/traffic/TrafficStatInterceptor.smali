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

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;-><init>()V

    return-void
.end method

.method private countHeadersSize(Lokhttp3/Headers;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 72
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v3

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

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private countRequestBodySize(Lokhttp3/Request;)J
    .locals 3

    .line 81
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 86
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-wide v1
.end method

.method private countRequestSize(Lokhttp3/Request;)V
    .locals 4

    .line 46
    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countHeadersSize(Lokhttp3/Headers;)J

    move-result-wide v0

    .line 47
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

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseRequest(Ljava/lang/String;J)V

    return-void
.end method

.method private countResponseSize(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 4

    .line 54
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countHeadersSize(Lokhttp3/Headers;)J

    move-result-wide v0

    .line 55
    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 58
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseSucceedWithSize(Ljava/lang/String;J)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseFailureWithSize(Ljava/lang/String;J)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countRequestSize(Lokhttp3/Request;)V

    .line 30
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 34
    :try_start_0
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    invoke-direct {p0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/traffic/TrafficStatInterceptor;->countResponseSize(Ljava/lang/String;Lokhttp3/Response;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 36
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;->increaseFailureWithSize(Ljava/lang/String;J)V

    .line 37
    throw p1
.end method
