.class Lbkr$2$1;
.super Ljava/lang/Object;
.source "XPFirstCacheRequestPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkr$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkr$2;


# direct methods
.method constructor <init>(Lbkr$2;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lbkr$2$1;->a:Lbkr$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 107
    iget-object v0, p0, Lbkr$2$1;->a:Lbkr$2;

    iget-object v0, v0, Lbkr$2;->a:Lcom/lzy/okgo/cache/CacheEntity;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lbkr$2$1;->a:Lbkr$2;

    iget-object v0, v0, Lbkr$2;->a:Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/CacheEntity;->getData()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lbkr$2$1;->a:Lbkr$2;

    iget-object v1, v1, Lbkr$2;->b:Lbkr;

    invoke-static {v1}, Lbkr;->k(Lbkr;)Lokhttp3/Call;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/lzy/okgo/model/Response;->success(ZLjava/lang/Object;Lokhttp3/Call;Lokhttp3/Response;)Lcom/lzy/okgo/model/Response;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    .line 111
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->setFromCache(Z)Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;

    .line 112
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lbkr$2$1;->a:Lbkr$2;

    iget-object v1, v1, Lbkr$2;->b:Lbkr;

    invoke-static {v1}, Lbkr;->l(Lbkr;)Lcom/lzy/okgo/callback/Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lzy/okgo/callback/Callback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 117
    :cond_0
    new-instance v0, Lbkr$2$1$1;

    invoke-direct {v0, p0}, Lbkr$2$1$1;-><init>(Lbkr$2$1;)V

    invoke-static {v0}, Lbko;->a(Ljava/lang/Runnable;)V

    return-void
.end method
