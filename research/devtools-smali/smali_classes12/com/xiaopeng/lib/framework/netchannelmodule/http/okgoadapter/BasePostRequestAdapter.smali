.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;
.super Ljava/lang/Object;
.source "BasePostRequestAdapter.java"

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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mInternalRequest:Lcom/lzy/okgo/request/PostRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/request/PostRequest<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/lzy/okgo/request/PostRequest;

    invoke-direct {v0, p1}, Lcom/lzy/okgo/request/PostRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    .line 34
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    const-string p1, "XmartPackageId"

    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    .line 37
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

    .line 78
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/TrafficStatsEntry;->setTraficInfo()V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/ResponseAdapter;-><init>(Lokhttp3/Response;)V

    return-object v1
.end method

.method public execute(Lcom/lzy/okgo/b/b;)V
    .locals 1
    .param p1    # Lcom/lzy/okgo/b/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/b/b;)V

    .line 100
    return-void
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .locals 1
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not supported!!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getHeaders()Lcom/lzy/okgo/model/HttpHeaders;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->getHeaders()Lcom/lzy/okgo/model/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/model/HttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/PostRequest;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 136
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

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->dk()Lokhttp3/Request;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    .line 298
    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->dk()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->dk()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->toMultimap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 299
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isMultipart(Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->y(Z)Lcom/lzy/okgo/request/base/BodyRequest;

    .line 145
    return-object p0
.end method

.method public params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/lang/String;F[Z)Lcom/lzy/okgo/request/base/Request;

    .line 232
    return-object p0
.end method

.method public params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    .line 219
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/lang/String;Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    .line 258
    return-object p0
.end method

.method public params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 206
    return-object p0
.end method

.method public params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/lang/String;Z[Z)Lcom/lzy/okgo/request/base/Request;

    .line 245
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

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1, p2}, Lcom/lzy/okgo/request/PostRequest;->b(Ljava/util/Map;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 193
    return-object p0
.end method

.method public removeAllHeaders()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->df()Lcom/lzy/okgo/request/base/Request;

    .line 168
    return-object p0
.end method

.method public removeAllParams()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0}, Lcom/lzy/okgo/request/PostRequest;->dg()Lcom/lzy/okgo/request/base/Request;

    .line 281
    return-object p0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->aQ(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 157
    return-object p0
.end method

.method public removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->aR(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 270
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->h(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 180
    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    nop

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {p1, v0}, Lcom/lzy/okgo/request/PostRequest;->d(Ljava/io/File;)Lcom/lzy/okgo/request/base/BodyRequest;

    .line 68
    return-object p0

    .line 64
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/okgoadapter/BasePostRequestAdapter;->mInternalRequest:Lcom/lzy/okgo/request/PostRequest;

    invoke-virtual {v0, p1}, Lcom/lzy/okgo/request/PostRequest;->aO(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    .line 48
    return-object p0
.end method
