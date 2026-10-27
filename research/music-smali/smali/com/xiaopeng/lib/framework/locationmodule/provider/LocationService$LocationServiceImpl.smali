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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V
    .locals 1

    .line 267
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$300()Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->publishLocation(Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;)V

    .line 268
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$400()V

    return-void
.end method

.method public subscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V
    .locals 2

    .line 252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 253
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$300()Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->register(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;I)V

    return-void
.end method

.method public unsubscribe(Lcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V
    .locals 2

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 263
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;->access$300()Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/provider/CallbackList;->unregister(ILcom/xiaopeng/lib/framework/locationmodule/ILocationServiceCallback;)V

    return-void
.end method
