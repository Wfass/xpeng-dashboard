.class Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;
.super Ljava/lang/Object;
.source "SmartWeatherService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->handleBootComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 383
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 386
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$900()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/contextinfo/IHttpManager;->init(Landroid/app/Application;)V

    .line 392
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$902(Z)Z

    .line 395
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$1000()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 396
    .local v0, "elapse":J
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$500()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$900()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$200()Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$3;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-static {v2, p1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;Landroid/location/Location;)V

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->access$1002(J)J

    .line 400
    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 414
    const-string v0, "SmartWeatherService"

    const-string v1, "onProviderDisabled"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 409
    const-string v0, "SmartWeatherService"

    const-string v1, "onProviderEnabled"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 404
    const-string v0, "SmartWeatherService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method
