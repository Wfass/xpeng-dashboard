.class public Lcom/lzy/okgo/cache/policy/NoCachePolicy;
.super Lcom/lzy/okgo/cache/policy/BaseCachePolicy;
.source "NoCachePolicy.java"


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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoCachePolicy;, "Lcom/lzy/okgo/cache/policy/NoCachePolicy<TT;>;"
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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoCachePolicy;, "Lcom/lzy/okgo/cache/policy/NoCachePolicy<TT;>;"
    .local p1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$2;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoCachePolicy;, "Lcom/lzy/okgo/cache/policy/NoCachePolicy<TT;>;"
    .local p1, "success":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$1;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;Lcom/lzy/okgo/model/Response;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

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

    .line 72
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoCachePolicy;, "Lcom/lzy/okgo/cache/policy/NoCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    .local p2, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    iput-object p2, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    .line 73
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;

    invoke-direct {v0, p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy$3;-><init>(Lcom/lzy/okgo/cache/policy/NoCachePolicy;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;
    .locals 4
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
    .local p0, "this":Lcom/lzy/okgo/cache/policy/NoCachePolicy;, "Lcom/lzy/okgo/cache/policy/NoCachePolicy<TT;>;"
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->requestNetworkSync()Lcom/lzy/okgo/model/Response;

    move-result-object v0

    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    return-object v1
.end method
