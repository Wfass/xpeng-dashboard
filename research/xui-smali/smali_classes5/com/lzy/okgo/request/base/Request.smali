.class public abstract Lcom/lzy/okgo/request/base/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Lcom/lzy/okgo/request/base/Request;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x638f96e7c9b0eb5cL


# instance fields
.field protected baseUrl:Ljava/lang/String;

.field protected cacheKey:Ljava/lang/String;

.field protected cacheMode:Lcom/lzy/okgo/cache/CacheMode;

.field protected transient cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected cacheTime:J

.field protected transient call:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient callback:Lcom/lzy/okgo/callback/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected transient client:Lokhttp3/OkHttpClient;

.field protected transient converter:Lcom/lzy/okgo/convert/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected headers:Lcom/lzy/okgo/model/HttpHeaders;

.field protected transient mRequest:Lokhttp3/Request;

.field protected params:Lcom/lzy/okgo/model/HttpParams;

.field protected retryCount:I

.field protected transient tag:Ljava/lang/Object;

.field protected transient uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 74
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/lzy/okgo/model/HttpParams;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpParams;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    .line 65
    new-instance v0, Lcom/lzy/okgo/model/HttpHeaders;

    invoke-direct {v0}, Lcom/lzy/okgo/model/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    .line 75
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v0

    .line 79
    .local v0, "go":Lcom/lzy/okgo/OkGo;
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getAcceptLanguage()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "acceptLanguage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Accept-Language"

    invoke-virtual {p0, v2, v1}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 82
    :cond_0
    invoke-static {}, Lcom/lzy/okgo/model/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "userAgent":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "User-Agent"

    invoke-virtual {p0, v3, v2}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 85
    :cond_1
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCommonParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzy/okgo/request/base/Request;->params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;

    .line 86
    :cond_2
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCommonHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lzy/okgo/request/base/Request;->headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;

    .line 88
    :cond_3
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getRetryCount()I

    move-result v3

    iput v3, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 89
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v3

    iput-object v3, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 90
    invoke-virtual {v0}, Lcom/lzy/okgo/OkGo;->getCacheTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 91
    return-void
.end method


# virtual methods
.method public adapt()Lcom/lzy/okgo/adapter/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    return-object v0
.end method

.method public adapt(Lcom/lzy/okgo/adapter/AdapterParam;Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Lcom/lzy/okgo/adapter/AdapterParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/AdapterParam;",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p2, "adapter":Lcom/lzy/okgo/adapter/CallAdapter;, "Lcom/lzy/okgo/adapter/CallAdapter<TT;TE;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    .line 375
    .local v0, "innerCall":Lcom/lzy/okgo/adapter/Call;, "Lcom/lzy/okgo/adapter/Call<TT;>;"
    if-nez v0, :cond_0

    .line 376
    new-instance v1, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v1, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    move-object v0, v1

    .line 378
    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public adapt(Lcom/lzy/okgo/adapter/CallAdapter;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lzy/okgo/adapter/CallAdapter<",
            "TT;TE;>;)TE;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "adapter":Lcom/lzy/okgo/adapter/CallAdapter;, "Lcom/lzy/okgo/adapter/CallAdapter<TT;TE;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    .line 366
    .local v0, "innerCall":Lcom/lzy/okgo/adapter/Call;, "Lcom/lzy/okgo/adapter/Call<TT;>;"
    if-nez v0, :cond_0

    .line 367
    new-instance v1, Lcom/lzy/okgo/adapter/CacheCall;

    invoke-direct {v1, p0}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    move-object v0, v1

    .line 369
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/lzy/okgo/adapter/CallAdapter;->adapt(Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/adapter/AdapterParam;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public addUrlParams(Ljava/lang/String;Ljava/util/List;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TR;"
        }
    .end annotation

    .line 240
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->putUrlParams(Ljava/lang/String;Ljava/util/List;)V

    .line 241
    return-object p0
.end method

.method public cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    const-string v0, "cacheKey == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .param p1, "cacheMode"    # Lcom/lzy/okgo/cache/CacheMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheMode;",
            ")TR;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    .line 133
    return-object p0
.end method

.method public cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "cachePolicy":Lcom/lzy/okgo/cache/policy/CachePolicy;, "Lcom/lzy/okgo/cache/policy/CachePolicy<TT;>;"
    const-string v0, "cachePolicy == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 141
    return-object p0
.end method

.method public cacheTime(J)Lcom/lzy/okgo/request/base/Request;
    .locals 2
    .param p1, "cacheTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TR;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, -0x1

    .line 156
    :cond_0
    iput-wide p1, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    .line 157
    return-object p0
.end method

.method public call(Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "call":Lcom/lzy/okgo/adapter/Call;, "Lcom/lzy/okgo/adapter/Call<TT;>;"
    const-string v0, "call == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->call:Lcom/lzy/okgo/adapter/Call;

    .line 119
    return-object p0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            ")TR;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    const-string v0, "OkHttpClient == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 111
    return-object p0
.end method

.method public converter(Lcom/lzy/okgo/convert/Converter;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;)TR;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "converter":Lcom/lzy/okgo/convert/Converter;, "Lcom/lzy/okgo/convert/Converter<TT;>;"
    const-string v0, "converter == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 126
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 127
    return-object p0
.end method

.method public execute()Lokhttp3/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 383
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->getRawCall()Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 388
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 390
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 391
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->adapt()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 392
    .local v0, "call":Lcom/lzy/okgo/adapter/Call;, "Lcom/lzy/okgo/adapter/Call<TT;>;"
    invoke-interface {v0, p1}, Lcom/lzy/okgo/adapter/Call;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 393
    return-void
.end method

.method public abstract generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
.end method

.method protected abstract generateRequestBody()Lokhttp3/RequestBody;
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 289
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 305
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheMode()Lcom/lzy/okgo/cache/CacheMode;
    .locals 1

    .line 297
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheMode:Lcom/lzy/okgo/cache/CacheMode;

    return-object v0
.end method

.method public getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->cachePolicy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 309
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-wide v0, p0, Lcom/lzy/okgo/request/base/Request;->cacheTime:J

    return-wide v0
.end method

.method public getConverter()Lcom/lzy/okgo/convert/Converter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/convert/Converter<",
            "TT;>;"
        }
    .end annotation

    .line 326
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    iput-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    const-string v1, "converter == null, do you forget to call Request#converter(Converter<T>) ?"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->converter:Lcom/lzy/okgo/convert/Converter;

    return-object v0
.end method

.method public getFileParam(Ljava/lang/String;)Lcom/lzy/okgo/model/HttpParams$FileWrapper;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 271
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->fileParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 272
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/model/HttpParams$FileWrapper;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/model/HttpParams$FileWrapper;

    return-object v1

    .line 273
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 281
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    return-object v0
.end method

.method public abstract getMethod()Lcom/lzy/okgo/model/HttpMethod;
.end method

.method public getParams()Lcom/lzy/okgo/model/HttpParams;
    .locals 1

    .line 277
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object v0
.end method

.method public getRawCall()Lokhttp3/Call;
    .locals 3

    .line 342
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/request/base/Request;->generateRequestBody()Lokhttp3/RequestBody;

    move-result-object v0

    .line 343
    .local v0, "requestBody":Lokhttp3/RequestBody;
    if-eqz v0, :cond_0

    .line 344
    new-instance v1, Lcom/lzy/okgo/request/base/ProgressRequestBody;

    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    invoke-direct {v1, v0, v2}, Lcom/lzy/okgo/request/base/ProgressRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/lzy/okgo/callback/Callback;)V

    .line 345
    .local v1, "progressRequestBody":Lcom/lzy/okgo/request/base/ProgressRequestBody;, "Lcom/lzy/okgo/request/base/ProgressRequestBody<TT;>;"
    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/base/ProgressRequestBody;->setInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v2

    iput-object v2, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 347
    .end local v1    # "progressRequestBody":Lcom/lzy/okgo/request/base/ProgressRequestBody;, "Lcom/lzy/okgo/request/base/ProgressRequestBody<TT;>;"
    goto :goto_0

    .line 348
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lzy/okgo/request/base/Request;->generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/OkGo;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/lzy/okgo/request/base/Request;->client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    return-object v1
.end method

.method public getRequest()Lokhttp3/Request;
    .locals 1

    .line 317
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->mRequest:Lokhttp3/Request;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 313
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget v0, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 293
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 285
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 264
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    iget-object v0, v0, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 265
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 266
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public headers(Lcom/lzy/okgo/model/HttpHeaders;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "headers"    # Lcom/lzy/okgo/model/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpHeaders;",
            ")TR;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->put(Lcom/lzy/okgo/model/HttpHeaders;)V

    .line 163
    return-object p0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object p0
.end method

.method public params(Lcom/lzy/okgo/model/HttpParams;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "params"    # Lcom/lzy/okgo/model/HttpParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/HttpParams;",
            ")TR;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->put(Lcom/lzy/okgo/model/HttpParams;)V

    .line 187
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;C[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C[Z)TR;"
        }
    .end annotation

    .line 228
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;C[Z)V

    .line 229
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;D[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D[Z)TR;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;D[Z)V

    .line 217
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[Z)TR;"
        }
    .end annotation

    .line 210
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;F[Z)V

    .line 211
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[Z)TR;"
        }
    .end annotation

    .line 204
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;I[Z)V

    .line 205
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;J[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J[Z)TR;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;J[Z)V

    .line 223
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[Z)TR;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 199
    return-object p0
.end method

.method public varargs params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z[Z)TR;"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/lang/String;Z[Z)V

    .line 235
    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p2, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)TR;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/model/HttpParams;->put(Ljava/util/Map;[Z)V

    .line 193
    return-object p0
.end method

.method public removeAllHeaders()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpHeaders;->clear()V

    .line 181
    return-object p0
.end method

.method public removeAllParams()Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/HttpParams;->clear()V

    .line 253
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->headers:Lcom/lzy/okgo/model/HttpHeaders;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->remove(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iget-object v0, p0, Lcom/lzy/okgo/request/base/Request;->params:Lcom/lzy/okgo/model/HttpParams;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpParams;->remove(Ljava/lang/String;)V

    .line 247
    return-object p0
.end method

.method public retryCount(I)Lcom/lzy/okgo/request/base/Request;
    .locals 2
    .param p1, "retryCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TR;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    if-ltz p1, :cond_0

    .line 102
    iput p1, p0, Lcom/lzy/okgo/request/base/Request;->retryCount:I

    .line 103
    return-object p0

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "retryCount must > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Lcom/lzy/okgo/callback/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 321
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    .local p1, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 322
    return-void
.end method

.method public tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->tag:Ljava/lang/Object;

    .line 96
    return-object p0
.end method

.method public uploadInterceptor(Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;)Lcom/lzy/okgo/request/base/Request;
    .locals 0
    .param p1, "uploadInterceptor"    # Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;",
            ")TR;"
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;TR;>;"
    iput-object p1, p0, Lcom/lzy/okgo/request/base/Request;->uploadInterceptor:Lcom/lzy/okgo/request/base/ProgressRequestBody$UploadInterceptor;

    .line 259
    return-object p0
.end method
