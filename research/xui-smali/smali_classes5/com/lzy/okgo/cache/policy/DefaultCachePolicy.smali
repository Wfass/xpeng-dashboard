.class public Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "DefaultCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/policy/BaseCachePolicy<",
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

    .line 38
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    .local p1, "request":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;+Lcom/lzy/okgo/request/base/Request;>;"
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 39
    return-void
.end method


# virtual methods
.method public onAnalysisResponse(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .line 65
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 69
    .local v0, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$3;

    invoke-direct {v2, p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v2}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    .end local v0    # "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1, p2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 78
    .local v0, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;

    invoke-direct {v2, p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$4;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v2}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    .end local v0    # "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    :goto_0
    return v1
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

    .line 54
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    .local p1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    .local p1, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    .local p2, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 111
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;-><init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 98
    .local v0, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->code()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_1

    .line 99
    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 100
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v3

    iget-object v4, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v4}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lzy/okgo/exception/CacheException;->NON_AND_304(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 105
    :cond_1
    :goto_0
    return-object v0

    .line 93
    .end local v0    # "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    return-object v1
.end method
