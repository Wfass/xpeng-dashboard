.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;
.super Ljava/lang/Object;
.source "BaseGetRequestAdapter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;"
    }
.end annotation


# instance fields
.field private mInternalRequest:Lcom/lzy/okgo/request/GetRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/GetRequest<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 25
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    .line 27
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    const-string v0, "XmartPackageId"

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->setTraficInfo()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 64
    .local v0, "response":Lokhttp3/Response;
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lokhttp3/Response;)V

    return-object v1
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lzy/okgo/callback/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 83
    return-void
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supported!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 106
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 102
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 271
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 118
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/GetRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 119
    return-object p0
.end method

.method public headers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    .line 279
    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultipart(Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "isMultipart"    # Z

    .line 127
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GET\u8bf7\u6c42\u4e0d\u652f\u6301Multipart\u8bbe\u7f6e!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 213
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;

    .line 214
    return-object p0
.end method

.method public params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 200
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    .line 201
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 239
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GET\u8bf7\u6c42\u4e0d\u652f\u6301File\u53c2\u6570!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 187
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 188
    return-object p0
.end method

.method public params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 226
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;

    .line 227
    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p2, "isReplace"    # [Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[Z)",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 175
    return-object p0
.end method

.method public removeAllHeaders()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 149
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->removeAllHeaders()Lcom/lzy/okgo/request/base/Request;

    .line 150
    return-object p0
.end method

.method public removeAllParams()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 261
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->removeAllParams()Lcom/lzy/okgo/request/base/Request;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 263
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 138
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 139
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 250
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 251
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .line 161
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 162
    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;

    .line 51
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GET\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .line 40
    .local p0, "this":Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;, "Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GET\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
