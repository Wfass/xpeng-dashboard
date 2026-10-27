.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager$IResourceObserver;
.super Ljava/lang/Object;
.source "IAppResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/IAppResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IResourceObserver"
.end annotation


# virtual methods
.method public abstract onChange(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaopeng/lib/framework/moduleinterface/appresourcemodule/AppResourceResponse;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uriPath",
            "response"
        }
    .end annotation
.end method
