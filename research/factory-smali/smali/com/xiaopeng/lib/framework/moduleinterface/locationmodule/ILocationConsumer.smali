.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;
.super Ljava/lang/Object;
.source "ILocationConsumer.java"


# virtual methods
.method public abstract connected()Z
.end method

.method public abstract getLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;)V
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "remoteAppPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method

.method public abstract subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "category"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method

.method public abstract unsubscribe()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method
