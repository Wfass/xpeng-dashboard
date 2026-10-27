.class public Lcom/lzy/okgo/request/TraceRequest;
.super Lcom/lzy/okgo/request/base/NoBodyRequest;
.source "TraceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/lzy/okgo/request/base/NoBodyRequest<",
        "TT;",
        "Lcom/lzy/okgo/request/TraceRequest<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 36
    .local p0, "this":Lcom/lzy/okgo/request/TraceRequest;, "Lcom/lzy/okgo/request/TraceRequest<TT;>;"
    invoke-direct {p0, p1}, Lcom/lzy/okgo/request/base/NoBodyRequest;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public generateRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 3
    .param p1, "requestBody"    # Lokhttp3/RequestBody;

    .line 46
    .local p0, "this":Lcom/lzy/okgo/request/TraceRequest;, "Lcom/lzy/okgo/request/TraceRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/request/TraceRequest;->generateRequestBuilder(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 47
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    const-string v1, "TRACE"

    invoke-virtual {v0, v1, p1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okgo/request/TraceRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/lzy/okgo/request/TraceRequest;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    return-object v1
.end method

.method public getMethod()Lcom/lzy/okgo/model/HttpMethod;
    .locals 1

    .line 41
    .local p0, "this":Lcom/lzy/okgo/request/TraceRequest;, "Lcom/lzy/okgo/request/TraceRequest<TT;>;"
    sget-object v0, Lcom/lzy/okgo/model/HttpMethod;->TRACE:Lcom/lzy/okgo/model/HttpMethod;

    return-object v0
.end method
