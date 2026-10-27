.class public Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;
.super Lcom/android/car/xpeng/remind/CarRemindBase;
.source "CarStatusNotifyRemind.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/android/car/xpeng/remind/CarRemindBase;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/car/CarPropertyService;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected getRemindPropertyId()[I
    .locals 1

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected getRequiredProperties()[I
    .locals 3

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x21401409

    aput v2, v0, v1

    return-object v0
.end method

.method protected handlePropertyEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/car/hardware/property/CarPropertyEvent;

    .line 27
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;->notifyIgData(I)V

    .line 30
    nop

    .line 34
    :goto_0
    return-void
.end method

.method public notifyIgData(I)V
    .locals 2
    .param p1, "igStatus"    # I

    .line 37
    const-string v0, "sys.xiaopeng.ig_status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.action.ig_status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ig_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    iget-object v1, p0, Lcom/android/car/xpeng/remind/CarStatusNotifyRemind;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return-void
.end method
