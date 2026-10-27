.class public Lbks;
.super Lcom/lzy/okgo/request/base/NoBodyRequest;
.source "XPGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/request/base/NoBodyRequest<",
        "TT;",
        "Lbks<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPGetRequest"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/NoBodyRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/callback/Callback<",
            "TT;>;)",
            "Lcom/lzy/okgo/adapter/Call<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 42
    invoke-static {p1, v0}, Lcom/lzy/okgo/utils/HttpUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lbks;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbks;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lbkr;

    invoke-direct {v0, p0}, Lbkr;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    invoke-virtual {p0, v0}, Lbks;->cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;

    .line 48
    :cond_0
    iput-object p1, p0, Lbks;->callback:Lcom/lzy/okgo/callback/Callback;

    .line 49
    invoke-virtual {p0}, Lbks;->adapt()Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    .line 50
    new-instance v1, Lbks$1;

    invoke-direct {v1, p0, v0, p1}, Lbks$1;-><init>(Lbks;Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/callback/Callback;)V

    invoke-static {v1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lbks;->generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lbks;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lbks;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public getMethod()Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    .line 29
    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->GET:Lcom/lzy/okgo/model/HttpMethod;

    return-object v0
.end method
