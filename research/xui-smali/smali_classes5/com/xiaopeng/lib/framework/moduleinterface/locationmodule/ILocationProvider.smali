.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;
.super Ljava/lang/Object;
.source "ILocationProvider.java"


# virtual methods
.method public abstract buildLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
.end method

.method public abstract publishLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation
.end method

.method public abstract serviceStarted()Z
.end method

.method public abstract start(Landroid/content/Context;)V
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
