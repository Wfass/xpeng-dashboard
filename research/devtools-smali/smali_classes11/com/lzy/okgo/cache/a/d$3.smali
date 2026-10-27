.class Lcom/lzy/okgo/cache/a/d$3;
.super Ljava/lang/Object;
.source "FirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/d;->a(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic lG:Lcom/lzy/okgo/cache/a/d;

.field final synthetic lH:Lcom/lzy/okgo/cache/CacheEntity;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/d;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/d$3;->lH:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/d;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/b/b;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 87
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/a/d;->cS()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    nop

    .line 93
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$3;->lH:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v1, :cond_0

    .line 94
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lzy/okgo/cache/a/d$3;->lH:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v2}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v3, v3, Lcom/lzy/okgo/cache/a/d;->lz:Lokhttp3/Call;

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/a;->a(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/b/b;->onCacheSuccess(Lcom/lzy/okgo/model/a;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/a/d;->cT()V

    .line 98
    return-void

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v3, v3, Lcom/lzy/okgo/cache/a/d;->lz:Lokhttp3/Call;

    invoke-static {v2, v3, v0, v1}, Lcom/lzy/okgo/model/a;->a(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/a;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/lzy/okgo/cache/a/d$3;->lG:Lcom/lzy/okgo/cache/a/d;

    iget-object v1, v1, Lcom/lzy/okgo/cache/a/d;->lA:Lcom/lzy/okgo/b/b;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/b/b;->onError(Lcom/lzy/okgo/model/a;)V

    .line 91
    return-void
.end method
