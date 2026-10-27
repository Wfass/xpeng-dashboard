.class public Lcom/xiaopeng/lib/framework/locationmodule/LocationProviderImpl;
.super Ljava/lang/Object;
.source "LocationProviderImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 1

    .line 54
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>()V

    return-object v0
.end method

.method public publishLocation(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;)V
    .locals 2
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->started()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V

    .line 39
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method

.method public serviceStarted()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->started()Z

    move-result v0

    return v0
.end method

.method public start(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationServiceException;
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->started()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->getInstance()Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/ServiceProvider;->startService(Landroid/content/Context;)V

    .line 27
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method
