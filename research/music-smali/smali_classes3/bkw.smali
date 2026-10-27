.class public Lbkw;
.super Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;
.source "XpRequestFailCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy<",
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

    .line 18
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-void
.end method


# virtual methods
.method public prepareCache()Lcom/lzy/okgo/cache/CacheEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v1, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->getParams()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/lzy/okgo/utils/HttpUtils;->createUrlFromParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheKey(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 27
    :cond_0
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 31
    :cond_1
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v2

    .line 32
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v2, v0, :cond_2

    .line 34
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager;->getInstance()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iput-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    .line 35
    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v1, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-static {v0, v1, v2}, Lcom/lzy/okgo/utils/HeaderParser;->addCacheHeaders(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V

    .line 36
    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    iget-object v0, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheTime()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/lzy/okgo/cache/CacheEntity;->checkExpire(Lcom/lzy/okgo/cache/CacheMode;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->setExpire(Z)V

    .line 39
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager;->getInstance()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lbkw;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/db/CacheManager;->remove(Ljava/lang/String;)Z

    .line 43
    :cond_2
    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->isExpire()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getResponseHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    .line 46
    :cond_4
    iget-object v0, p0, Lbkw;->cacheEntity:Lcom/lzy/okgo/cache/CacheEntity;

    return-object v0
.end method
