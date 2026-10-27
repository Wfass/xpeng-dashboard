.class Lbkr$1;
.super Ljava/lang/Object;
.source "XPFirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkr;->onError(Lcom/lzy/okgo/model/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/model/Response;

.field final synthetic b:Lbkr;


# direct methods
.method constructor <init>(Lbkr;Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lbkr$1;->b:Lbkr;

    iput-object p2, p0, Lbkr$1;->a:Lcom/lzy/okgo/model/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 38
    iget-object v0, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v0}, Lbkr;->a(Lbkr;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 39
    iget-object v1, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v1}, Lbkr;->b(Lbkr;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v2}, Lbkr;->c(Lbkr;)Lokhttp3/Call;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    .line 42
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v0}, Lbkr;->d(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v0

    iget-object v1, p0, Lbkr$1;->a:Lcom/lzy/okgo/model/Response;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v0}, Lbkr;->e(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v0

    iget-object v1, p0, Lbkr$1;->a:Lcom/lzy/okgo/model/Response;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lbkr$1;->b:Lbkr;

    invoke-static {v0}, Lbkr;->f(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/lzy/okgo/callback/Callback;->onFinish()V

    return-void
.end method
