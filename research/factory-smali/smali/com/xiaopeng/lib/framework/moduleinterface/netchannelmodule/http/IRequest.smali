.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
.super Ljava/lang/Object;
.source "IRequest.java"


# virtual methods
.method public abstract execute()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/xmart/IServerCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract header(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract headers(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract headers()Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMultipart"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;F)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Ljava/io/File;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "file"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public abstract params(Ljava/lang/String;Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation
.end method

.method public varargs abstract params(Ljava/util/Map;[Z)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "isReplace"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract removeParam(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public abstract tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract uploadJson(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation
.end method
