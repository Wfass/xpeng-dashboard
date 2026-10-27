.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;
.super Ljava/lang/Object;
.source "HeadRequestAdapter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;


# instance fields
.field private mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/HeadRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/lzy/okgo/request/HeadRequest;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/request/HeadRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XmartPackageId"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

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

    .line 76
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->setTraficInfo()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lokhttp3/Response;)V

    return-object v1
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/StringCallbackAdapter;-><init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/HeadRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 1

    .line 88
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/HeadRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

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

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    .line 275
    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultipart(Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 123
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "GET\u8bf7\u6c42\u4e0d\u652f\u6301Multipart\u8bbe\u7f6e!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/HeadRequest;->params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/HeadRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 0

    .line 235
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "GET\u8bf7\u6c42\u4e0d\u652f\u6301File\u53c2\u6570!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/HeadRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/HeadRequest;->params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public varargs params(Ljava/util/Map;[Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
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

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/HeadRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeAllHeaders()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->removeAllHeaders()Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeAllParams()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/HeadRequest;->removeAllParams()Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/HeadRequest;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/HeadRequest;->removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/HeadRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/HeadRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/HeadRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HEAD\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "HEAD\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
