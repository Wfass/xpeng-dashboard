.class public Lcom/lzy/okgo/cache/a/g;
.super Lcom/lzy/okgo/cache/a/a;
.source "RequestFailedCachePolicy.java"


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

    .line 35
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 36
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

    .line 88
    iput-object p2, p0, Lcom/lzy/okgo/cache/a/g;->lA:Lcom/lzy/okgo/b/b;

    .line 89
    new-instance p1, Lcom/lzy/okgo/cache/a/g$4;

    invoke-direct {p1, p0}, Lcom/lzy/okgo/cache/a/g$4;-><init>(Lcom/lzy/okgo/cache/a/g;)V

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/cache/a/g;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public onError(Lcom/lzy/okgo/model/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/g;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/g;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->dd()Lokhttp3/Call;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->getRawResponse()Lokhttp3/Response;

    move-result-object p1

    invoke-static {v0, v1, v2, p1}, Lcom/lzy/okgo/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/lzy/okgo/cache/a/g$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$2;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/g;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v0, Lcom/lzy/okgo/cache/a/g$3;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$3;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/g;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 70
    :goto_0
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

    .line 40
    new-instance v0, Lcom/lzy/okgo/cache/a/g$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/g$1;-><init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/g;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
