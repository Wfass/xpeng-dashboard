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
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/lzy/okgo/request/GetRequest;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/request/GetRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    .line 27
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XmartPackageId"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

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
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->setTraficInfo()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lokhttp3/Response;)V

    return-object v1
.end method

.method public execute(Lcom/lzy/okgo/callback/Callback;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1

    .line 74
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 1

    .line 92
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/GetRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

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

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultipart(Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 127
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "GET\u8bf7\u6c42\u4e0d\u652f\u6301Multipart\u8bbe\u7f6e!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 0

    .line 239
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "GET\u8bf7\u6c42\u4e0d\u652f\u6301File\u53c2\u6570!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;

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

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/GetRequest;->params(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeAllHeaders()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->removeAllHeaders()Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeAllParams()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->removeAllParams()Lcom/lzy/okgo/request/base/Request;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/GetRequest;->getRequest()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->removeParam(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BaseGetRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/GetRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/GetRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 51
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "GET\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "GET\u8bf7\u6c42\u4e0d\u652f\u6301POST\u64cd\u4f5c!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
