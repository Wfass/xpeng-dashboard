.class public Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;
.super Ljava/lang/Object;
.source "LocationConsumerImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocationConsumer;


# instance fields
.field private mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connected()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->connected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->getLastDrLocation()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->connected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->bindToLocationService()V

    :goto_0
    return-void

    .line 29
    :cond_1
    new-instance p1, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw p1
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->subscribe(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw p1
.end method

.method public unsubscribe()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationConsumerImpl;->mServiceProxy:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->unsubscribe()V

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationServiceException;-><init>(I)V

    throw v0
.end method
