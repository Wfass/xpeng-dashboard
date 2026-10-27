.class public Lcom/lzy/okgo/adapter/CacheCall;
.super Ljava/lang/Object;
.source "CacheCall.java"

# interfaces
.implements Lcom/lzy/okgo/adapter/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lzy/okgo/adapter/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private policy:Lcom/lzy/okgo/cache/policy/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation
.end field

.field private request:Lcom/lzy/okgo/request/base/Request;
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

    .line 44
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    .local p1, "request":Lcom/lzy/okgo/request/base/Request;, "Lcom/lzy/okgo/request/base/Request<TT;+Lcom/lzy/okgo/request/base/Request;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 45
    iput-object p1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    .line 46
    invoke-direct {p0}, Lcom/lzy/okgo/adapter/CacheCall;->preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 47
    return-void
.end method

.method private preparePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/cache/policy/CachePolicy<",
            "TT;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    sget-object v0, Lcom/lzy/okgo/adapter/CacheCall$1;->$SwitchMap$com$lzy$okgo$cache$CacheMode:[I

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v1}, Lcom/lzy/okgo/request/base/Request;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lzy/okgo/cache/CacheMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    new-instance v0, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/RequestFailedCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    goto :goto_0

    .line 75
    :pswitch_1
    new-instance v0, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/FirstCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 76
    goto :goto_0

    .line 72
    :pswitch_2
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoneCacheRequestPolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 73
    goto :goto_0

    .line 69
    :pswitch_3
    new-instance v0, Lcom/lzy/okgo/cache/policy/NoCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/NoCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 70
    goto :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/cache/policy/DefaultCachePolicy;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 67
    nop

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/base/Request;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    const-string v1, "policy == null"

    invoke-static {v0, v1}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 95
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->cancel()V

    .line 96
    return-void
.end method

.method public clone()Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    new-instance v0, Lcom/lzy/okgo/adapter/CacheCall;

    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    invoke-direct {v0, v1}, Lcom/lzy/okgo/adapter/CacheCall;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/adapter/CacheCall;->clone()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    return-object v0
.end method

.method public execute()Lcom/lzy/okgo/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/Response<",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 52
    .local v0, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestSync(Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/model/Response;

    move-result-object v1

    return-object v1
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    .local p1, "callback":Lcom/lzy/okgo/callback/Callback;, "Lcom/lzy/okgo/callback/Callback<TT;>;"
    const-string v0, "callback == null"

    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->prepareCache()Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    .line 60
    .local v0, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    iget-object v1, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v1, v0, p1}, Lcom/lzy/okgo/cache/policy/CachePolicy;->requestAsync(Lcom/lzy/okgo/cache/CacheEntity;Lcom/lzy/okgo/callback/Callback;)V

    .line 61
    return-void
.end method

.method public getRequest()Lcom/lzy/okgo/request/base/Request;
    .locals 1

    .line 110
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->request:Lcom/lzy/okgo/request/base/Request;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 100
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .line 90
    .local p0, "this":Lcom/lzy/okgo/adapter/CacheCall;, "Lcom/lzy/okgo/adapter/CacheCall<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/adapter/CacheCall;->policy:Lcom/lzy/okgo/cache/policy/CachePolicy;

    invoke-interface {v0}, Lcom/lzy/okgo/cache/policy/CachePolicy;->isExecuted()Z

    move-result v0

    return v0
.end method
