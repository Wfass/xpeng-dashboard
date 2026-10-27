.class public final Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService;
.super Landroid/app/Service;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;,
        Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$ServiceImplHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationModule.Provider.LocationService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 36
    invoke-static {}, Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$ServiceImplHolder;->access$000()Lcom/xiaopeng/lib/framework/locationmodule/provider/LocationService$LocationServiceImpl;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 51
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 52
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
