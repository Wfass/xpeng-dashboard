.class public Lcom/lzy/okgo/cache/a/f;
.super Lcom/lzy/okgo/cache/a/a;
.source "NoneCacheRequestPolicy.java"


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

    .line 79
    iput-object p2, p0, Lcom/lzy/okgo/cache/a/f;->lA:Lcom/lzy/okgo/b/b;

    .line 80
    new-instance p2, Lcom/lzy/okgo/cache/a/f$3;

    invoke-direct {p2, p0, p1}, Lcom/lzy/okgo/cache/a/f$3;-><init>(Lcom/lzy/okgo/cache/a/f;Lcom/lzy/okgo/cache/CacheEntity;)V

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/cache/a/f;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
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

    .line 51
    new-instance v0, Lcom/lzy/okgo/cache/a/f$2;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/f$2;-><init>(Lcom/lzy/okgo/cache/a/f;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/f;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
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
    new-instance v0, Lcom/lzy/okgo/cache/a/f$1;

    invoke-direct {v0, p0, p1}, Lcom/lzy/okgo/cache/a/f$1;-><init>(Lcom/lzy/okgo/cache/a/f;Lcom/lzy/okgo/model/a;)V

    invoke-virtual {p0, v0}, Lcom/lzy/okgo/cache/a/f;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
