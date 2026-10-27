.class Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;
.super Ljava/lang/Object;
.source "DefaultCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    .line 111
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;"
    iput-object p1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 114
    .local p0, "this":Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;, "Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;"
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v0, v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    iget-object v1, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v1, v1, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/callback/Callback;->onStart(Lcom/lzy/okgo/request/base/Request;)V

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->prepareRawCall()Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    nop

    .line 123
    iget-object v0, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    invoke-virtual {v0}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->requestNetworkAsync()V

    .line 124
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->rawCall:Lokhttp3/Call;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lcom/lzy/okgo/model/Response;->error(ZLokhttp3/Call;Lokhttp3/Response;Ljava/lang/Throwable;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    .line 120
    .local v1, "error":Lcom/lzy/okgo/model/Response;, "Lcom/lzy/okgo/model/Response<TT;>;"
    iget-object v2, p0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy$5;->this$0:Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v2, v2, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;->mCallback:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v2, v1}, Lcom/lzy/okgo/callback/Callback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 121
    return-void
.end method
