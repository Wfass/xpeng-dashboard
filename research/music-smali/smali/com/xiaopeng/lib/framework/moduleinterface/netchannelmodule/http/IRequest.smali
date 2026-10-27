.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.super Ljava/lang/Object;
.source "IRequest.java"


# virtual methods
.method public abstract execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
.end method

.method public abstract execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
.end method

.method public abstract execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract header(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract headers()Ljava/util/Map;
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
.end method

.method public abstract isMultipart(Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public varargs abstract params(Ljava/util/Map;[Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
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
.end method

.method public abstract removeAllHeaders()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract removeAllParams()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract removeHeader(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method

.method public abstract uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.end method
