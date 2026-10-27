.class public abstract Lcom/lzy/okgo/cache/a/a;
.super Ljava/lang/Object;
.source "BaseCachePolicy.java"

# interfaces
.implements Lcom/lzy/okgo/cache/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/cache/a/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected volatile canceled:Z

.field protected volatile currentRetryCount:I

.field protected executed:Z

.field protected lA:Lcom/lzy/okgo/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected lB:Lcom/lzy/okgo/cache/CacheEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected lz:Lokhttp3/Call;

.field protected request:Lcom/lzy/okgo/request/base/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/request/base/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/request/base/Request<",
            "TT;+",
            "Lcom/lzy/okgo/request/base/Request;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/lzy/okgo/cache/a/a;->currentRetryCount:I

    .line 57
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/lzy/okgo/cache/a/a;Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lzy/okgo/cache/a/a;->a(Lokhttp3/Headers;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lokhttp3/Headers;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "TT;)V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->lu:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    return-void

    .line 184
    :cond_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v0, v1}, Lcom/lzy/okgo/f/a;->a(Lokhttp3/Headers;Ljava/lang/Object;Lcom/lzy/okgo/cache/CacheMode;Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    .line 187
    if-nez p1, :cond_2

    .line 189
    invoke-static {}, Lcom/lzy/okgo/d/b;->cV()Lcom/lzy/okgo/d/b;

    move-result-object p1

    iget-object p2, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {p2}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lzy/okgo/d/b;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {}, Lcom/lzy/okgo/d/b;->cV()Lcom/lzy/okgo/d/b;

    move-result-object p2

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/lzy/okgo/d/b;->a(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;

    .line 194
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Call;Lokhttp3/Response;)Z
    .locals 0

    .line 62
    const/4 p1, 0x0

    return p1
.end method

.method public cR()Lcom/lzy/okgo/cache/CacheEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->di()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v2}, Lcom/lzy/okgo/request/base/Request;->dh()Lcom/lzy/okgo/model/HttpParams;

    move-result-object v2

    iget-object v2, v2, Lcom/lzy/okgo/model/HttpParams;->urlParamsMap:Ljava/util/LinkedHashMap;

    invoke-static {v1, v2}, Lcom/lzy/okgo/f/b;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->aP(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->lu:Lcom/lzy/okgo/cache/CacheMode;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->a(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->cH()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v2

    .line 76
    sget-object v0, Lcom/lzy/okgo/cache/CacheMode;->lu:Lcom/lzy/okgo/cache/CacheMode;

    if-eq v2, v0, :cond_2

    .line 78
    invoke-static {}, Lcom/lzy/okgo/d/b;->cV()Lcom/lzy/okgo/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/d/b;->aF(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    .line 79
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-static {v0, v1, v2}, Lcom/lzy/okgo/f/a;->a(Lcom/lzy/okgo/request/base/Request;Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/cache/CacheMode;)V

    .line 80
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->cI()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Lcom/lzy/okgo/cache/CacheEntity;->a(Lcom/lzy/okgo/cache/CacheMode;JJ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/cache/CacheEntity;->w(Z)V

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->cQ()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->cO()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    if-nez v0, :cond_4

    .line 86
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lB:Lcom/lzy/okgo/cache/CacheEntity;

    return-object v0
.end method

.method public declared-synchronized cS()Lokhttp3/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->executed:Z

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->executed:Z

    .line 95
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->dd()Lokhttp3/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lz:Lokhttp3/Call;

    .line 96
    iget-boolean v0, p0, Lcom/lzy/okgo/cache/a/a;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lz:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lz:Lokhttp3/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 93
    :cond_1
    :try_start_1
    const-string v0, "Already executed!"

    invoke-static {v0}, Lcom/lzy/okgo/exception/HttpException;->aH(Ljava/lang/String;)Lcom/lzy/okgo/exception/HttpException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected cT()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/a;->lz:Lokhttp3/Call;

    new-instance v1, Lcom/lzy/okgo/cache/a/a$1;

    invoke-direct {v1, p0}, Lcom/lzy/okgo/cache/a/a$1;-><init>(Lcom/lzy/okgo/cache/a/a;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 174
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 197
    invoke-static {}, Lcom/lzy/okgo/a;->cE()Lcom/lzy/okgo/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/a;->cF()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
