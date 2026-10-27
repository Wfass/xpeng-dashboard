.class public Lcom/android/car/xpeng/ai/clock/CarAlarmReceiverService;
.super Landroid/app/Service;
.source "CarAlarmReceiverService.java"


# static fields
.field public static final ACTION_ALARM_WAKE_UP:Ljava/lang/String; = "com.xpeng.car.ai.ACTION_ALARM_WAKE_UP"

.field private static final TAG:Ljava/lang/String; = "CarAlarmReceiverService"


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

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 47
    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3538fa57

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "com.xiaopeng.car.ai.ACTION_ALARM_WAKE_UP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v4

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .end local v0    # "action":Ljava/lang/String;
    goto :goto_1

    .line 52
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    const-string v1, "extra_clock_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "clockId":Ljava/lang/String;
    const-string v2, "extra_request_code"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 54
    .local v2, "requestCode":I
    const-string v3, "CarAlarmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCommand: clockId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requestCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-class v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 57
    const-class v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {v3, v1}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleAlarmReceivedData(Ljava/lang/String;)V

    .line 63
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "clockId":Ljava/lang/String;
    .end local v2    # "requestCode":I
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
