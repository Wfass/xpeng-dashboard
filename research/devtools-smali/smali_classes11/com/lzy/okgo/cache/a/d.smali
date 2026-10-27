.class public Lcom/lzy/okgo/cache/a/d;
.super Lcom/lzy/okgo/cache/a/a;
.source "FirstCacheRequestPolicy.java"


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

    .line 34
    invoke-direct {p0, p1}, Lcom/lzy/okgo/cache/a/a;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    .line 35
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

    .line 80
    iput-object p2, p0, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    .line 81
    new-instance p2, Lcom/lzy/okgo/cache/a/d$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/a/d$3;-><init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/a/d;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    return-void
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

    .line 50
    new-instance v0, Lcom/lzy/okgo/cache/a/d$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/d$2;-><init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/d;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 57
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

    .line 39
    new-instance v0, Lcom/lzy/okgo/cache/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/d$1;-><init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/d;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
