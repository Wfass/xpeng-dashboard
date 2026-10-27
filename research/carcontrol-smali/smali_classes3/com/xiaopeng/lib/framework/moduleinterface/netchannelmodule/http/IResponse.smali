.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
.super Ljava/lang/Object;
.source "IResponse.java"


# virtual methods
.method public abstract body()Ljava/lang/String;
.end method

.method public abstract byteStream()Ljava/io/InputStream;
.end method

.method public abstract code()I
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getRawResponse()Lokhttp3/Response;
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

.method public abstract message()Ljava/lang/String;
.end method
