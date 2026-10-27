.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
.super Ljava/lang/Object;
.source "IConfig.java"


# virtual methods
.method public abstract addInterceptor(Lokhttp3/Interceptor;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .param p1    # Lokhttp3/Interceptor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptor"
        }
    .end annotation
.end method

.method public abstract applicationContext(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .param p1    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation
.end method

.method public abstract applicationContext(Landroid/content/Context;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract apply()V
.end method

.method public abstract connectTimeout()I
.end method

.method public abstract connectTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutInMilliSeconds"
        }
    .end annotation
.end method

.method public abstract dnsTimeout()I
.end method

.method public abstract dnsTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutInMilliSeconds"
        }
    .end annotation
.end method

.method public abstract enableLogging()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
.end method

.method public abstract enableTracing()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
.end method

.method public abstract enableTrafficStats()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
.end method

.method public abstract readTimeout()I
.end method

.method public abstract readTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutInMilliSeconds"
        }
    .end annotation
.end method

.method public abstract retryCount()I
.end method

.method public abstract retryCount(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "retryCount"
        }
    .end annotation
.end method

.method public abstract writeTimeout()I
.end method

.method public abstract writeTimeout(I)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeoutInMilliSeconds"
        }
    .end annotation
.end method
