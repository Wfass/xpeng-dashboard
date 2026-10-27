.class public Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "NoneCacheRequestPolicy.java"


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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;, "Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy<TT;>;"
    .local p1, "request":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;+Lcom/lzy/okgo/request/base/Request;>;"
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/BaseCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 36
    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;, "Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy<TT;>;"
    .local p1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;, "Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy<TT;>;"
    .local p1, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 79
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;, "Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    .local p2, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 80
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
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

    .line 63
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;, "Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    const/4 v1, 0x0

    .line 68
    .local v1, "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    if-eqz p1, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v3, v4, v0}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 71
    :cond_0
    if-nez v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 74
    :cond_1
    return-object v1

    .line 64
    .end local v1    # "response":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    :catch_0
    move-exception v1

    .line 65
    .local v1, "throwable":Ljava/lang/Throwable;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;->rawCall:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    return-object v0
.end method
