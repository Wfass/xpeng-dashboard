.class public Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;
.super Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationServiceImpl"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;-><init>()V

    .line 55
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->mCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    return-void
.end method


# virtual methods
.method public publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 1
    .param p1, "location"    # Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->mCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V

    .line 76
    return-void
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;
    .param p2, "category"    # I

    .line 61
    const-string v0, "LocationModule.Provider.LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribe category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->mCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->register(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    .line 63
    return-void
.end method

.method public unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;

    .line 70
    const-string v0, "LocationModule.Provider.LocationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsubscribe for callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;->mCallbacks:Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V

    .line 72
    return-void
.end method
