.class public Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "RequestFailedCachePolicy.java"


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

    .line 35
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<TT;>;"
    .local p1, "request":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;+Lcom/lzy/okgo/request/base/Request;>;"
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<TT;>;"
    .local p1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getRawCall()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 54
    .local v0, "cacheSuccess":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v1, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$2;

    invoke-direct {v1, p0, v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    .end local v0    # "cacheSuccess":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    :goto_0
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

    .line 40
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<TT;>;"
    .local p1, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
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

    .line 88
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    .local p2, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 89
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;-><init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
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

    .line 75
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 80
    .local v0, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->rawCall:Lokhttp3/Call;

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->getRawResponse()Lokhttp3/Response;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 83
    :cond_0
    return-object v0

    .line 76
    .end local v0    # "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    :catch_0
    move-exception v0

    .line 77
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    return-object v1
.end method
