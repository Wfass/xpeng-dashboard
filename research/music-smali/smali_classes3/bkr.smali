.class public Lbkr;
.super Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;
.source "XPFirstCacheRequestPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method

.method static synthetic a(Lbkr;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    return-object p0
.end method

.method static synthetic b(Lbkr;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    return-object p0
.end method

.method static synthetic c(Lbkr;)Lokhttp3/Call;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->rawCall:Lokhttp3/Call;

    return-object p0
.end method

.method static synthetic d(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic e(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic f(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic g(Lbkr;)Lcom/lzy/okgo/request/base/Request;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->request:Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method static synthetic h(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic i(Lbkr;)Lokhttp3/Call;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->rawCall:Lokhttp3/Call;

    return-object p0
.end method

.method static synthetic j(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic k(Lbkr;)Lokhttp3/Call;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->rawCall:Lokhttp3/Call;

    return-object p0
.end method

.method static synthetic l(Lbkr;)Lcom/lzy/okgo/callback/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    return-object p0
.end method

.method static synthetic m(Lbkr;)V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lbkr;->requestNetworkAsync()V

    return-void
.end method


# virtual methods
.method public onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 6

    const-string v0, "onAnalysisResponse: "

    const-string v1, "XPFirstCacheRequestPoli"

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 62
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/lzy/okgo/model/HttpParams;->MEDIA_TYPE_JSON:Lokhttp3/MediaType;

    invoke-virtual {v3}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v2

    if-nez v2, :cond_1

    return v5

    .line 68
    :cond_1
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 69
    const-class v3, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :try_start_1
    iget-object v2, p0, Lbkr;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getConverter()Lcom/lzy/okgo/convert/Converter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/lzy/okgo/convert/Converter;->convertResponse(Lokhttp3/Response;)Ljava/lang/Object;

    move-result-object v2

    .line 74
    invoke-static {v5, v2, p1, p2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v2

    .line 75
    invoke-virtual {p0, v2}, Lbkr;->onSuccess(Lcom/lzy/okgo/model/Response;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 77
    :try_start_2
    invoke-static {v5, p1, p2, v2}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lbkr;->onError(Lcom/lzy/okgo/model/Response;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_1
    move-exception p1

    .line 83
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v5
.end method

.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Lbkr$1;

    invoke-direct {v0, p0, p1}, Lbkr$1;-><init>(Lbkr;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lbkr;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    iput-object p2, p0, Lbkr;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 92
    new-instance p2, Lbkr$2;

    invoke-direct {p2, p0, p1}, Lbkr$2;-><init>(Lbkr;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, p2}, Lbkr;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
