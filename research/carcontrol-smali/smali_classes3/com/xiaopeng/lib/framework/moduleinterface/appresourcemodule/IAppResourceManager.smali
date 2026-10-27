.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager;
.super Ljava/lang/Object;
.source "IAppResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$IResourceObserver;,
        Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;,
        Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$UpdatePolicy;
    }
.end annotation


# virtual methods
.method public abstract addResource(Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation
.end method

.method public abstract addResourceObSource(Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceRequest;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract checkUpdate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation
.end method

.method public abstract checkUpdateObSource(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearResourceObSource()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearResources()V
.end method

.method public abstract deleteResource(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation
.end method

.method public abstract deleteResourceObSource(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation
.end method

.method public abstract getFileDescriptorObSource(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFullUri(Ljava/lang/String;)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation
.end method

.method public abstract getFullUrlObSource(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation
.end method

.method public abstract getStatusObSource(Ljava/lang/String;)Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uriPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract subscribeChanges(Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$IResourceObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract unSubscribeChanges(Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$IResourceObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method
