.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
.super Ljava/lang/Object;
.source "IResponse.java"


# virtual methods
.method public abstract body()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract byteStream()Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract code()I
.end method

.method public abstract getException()Ljava/lang/Throwable;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getRawResponse()Lokhttp3/Response;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract header(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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

.method public abstract message()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
