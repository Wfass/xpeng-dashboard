.class Lbkr$2;
.super Ljava/lang/Object;
.source "XPFirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkr;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/cache/CacheEntity;

.field final synthetic b:Lbkr;


# direct methods
.method constructor <init>(Lbkr;Lcom/lzy/okgo/cache/CacheEntity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lbkr$2;->b:Lbkr;

    iput-object p2, p0, Lbkr$2;->a:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 95
    iget-object v0, p0, Lbkr$2;->b:Lbkr;

    invoke-static {v0}, Lbkr;->h(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v0

    iget-object v1, p0, Lbkr$2;->b:Lbkr;

    invoke-static {v1}, Lbkr;->g(Lbkr;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 98
    :try_start_0
    iget-object v0, p0, Lbkr$2;->b:Lbkr;

    invoke-virtual {v0}, Lbkr;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    new-instance v0, Lbkr$2$1;

    invoke-direct {v0, p0}, Lbkr$2$1;-><init>(Lbkr$2;)V

    const-wide/16 v1, 0x12c

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lbkr$2;->b:Lbkr;

    invoke-static {v2}, Lbkr;->i(Lbkr;)Lokhttp3/Call;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lbkr$2;->b:Lbkr;

    invoke-static {v1}, Lbkr;->j(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    return-void
.end method
