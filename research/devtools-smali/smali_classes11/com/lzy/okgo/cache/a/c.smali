.class public Lcom/lzy/okgo/cache/a/c;
.super Lcom/lzy/okgo/cache/a/a;
.source "DefaultCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/cache/a/a<",
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
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/b/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;",
            "Lcom/lzy/okgo/b/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 110
    iput-object p2, p0, Lcom/lzy/okgo/cache/a/c;->lA:Lcom/lzy/okgo/b/b;

    .line 111
    new-instance p1, Lcom/lzy/okgo/cache/a/c$5;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/a/c$5;-><init>(Lcom/lzy/okgo/cache/a/c;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public a(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 2

    .line 65
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/c;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/c;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lzy/okgo/exception/CacheException;->aG(Ljava/lang/String;)Lcom/lzy/okgo/exception/CacheException;

    move-result-object v0

    invoke-static {v1, p1, p2, v0}, Lcom/lzy/okgo/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 69
    new-instance p2, Lcom/lzy/okgo/cache/a/c$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/a/c$3;-><init>(Lcom/lzy/okgo/cache/a/c;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/c;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0, p1, p2}, Lcom/lzy/okgo/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/lzy/okgo/cache/a/c$4;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/a/c$4;-><init>(Lcom/lzy/okgo/cache/a/c;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 86
    :goto_0
    return v1
.end method

.method public onError(Lcom/lzy/okgo/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/lzy/okgo/cache/a/c$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/c$2;-><init>(Lcom/lzy/okgo/cache/a/c;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    return-void
.end method

.method public onSuccess(Lcom/lzy/okgo/model/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/lzy/okgo/cache/a/c$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/c$1;-><init>(Lcom/lzy/okgo/cache/a/c;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/c;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method
