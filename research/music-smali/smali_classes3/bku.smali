.class public Lbku;
.super Lcom/lzy/okgo/request/PostRequest;
.source "XPPostRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/request/PostRequest<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private preJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbku;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lbku;->preJson:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lbku;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method static synthetic b(Lbku;)Lcom/lzy/okgo/model/HttpParams;
    .locals 0

    .line 25
    iget-object p0, p0, Lbku;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object p0
.end method

.method static synthetic c(Lbku;)Lcom/lzy/okgo/model/HttpParams;
    .locals 0

    .line 25
    iget-object p0, p0, Lbku;->params:Lcom/lzy/okgo/model/HttpParams;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lbku;->preJson:Ljava/lang/String;

    .line 68
    invoke-super {p0, p1}, Lcom/lzy/okgo/request/PostRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    return-object p1
.end method

.method public a(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbku;->preJson:Ljava/lang/String;

    .line 74
    invoke-super {p0, p1}, Lcom/lzy/okgo/request/PostRequest;->upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    return-object p1
.end method

.method public a(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/PostRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbku;->preJson:Ljava/lang/String;

    .line 80
    invoke-super {p0, p1}, Lcom/lzy/okgo/request/PostRequest;->upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object p1

    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    return-object p1
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

    .line 35
    invoke-virtual {p0}, Lbku;->getCacheMode()Lcom/lzy/okgo/cache/CacheMode;

    move-result-object v0

    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->FIRST_CACHE_THEN_REQUEST:Lcom/lzy/okgo/cache/CacheMode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lbku;->getCachePolicy()Lcom/lzy/okgo/cache/policy/CachePolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lbkr;

    invoke-direct {v0, p0}, Lbkr;-><init>(Lcom/lzy/okgo/request/base/Request;)V

    invoke-virtual {p0, v0}, Lbku;->cachePolicy(Lcom/lzy/okgo/cache/policy/CachePolicy;)Lcom/lzy/okgo/request/base/Request;

    .line 39
    :cond_0
    new-instance v0, Lbku$1;

    invoke-direct {v0, p0, p1}, Lbku$1;-><init>(Lbku;Lcom/lzy/okgo/callback/Callback;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic upJson(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic upJson(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/base/BodyRequest;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic upJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic upJson(Lorg/json/JSONArray;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Lorg/json/JSONArray;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic upJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lbku;->a(Lorg/json/JSONObject;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object p1

    return-object p1
.end method
