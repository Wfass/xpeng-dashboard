.class Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;
.super Ljava/lang/Object;
.source "RequestFailedCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    .line 89
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;"
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    .local p0, "this":Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;, "Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;"
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    nop

    .line 101
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->requestNetworkAsync()V

    .line 102
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 98
    .local v1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy$4;->this$0:Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v2, v1}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 99
    return-void
.end method
