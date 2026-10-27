.class public Lcom/android/car/xpeng/ai/MainReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainReceiver.java"


# static fields
.field public static final ACTION_OTA_STATE:Ljava/lang/String; = "com.xiaopeng.broadcast.ACTION_OTA_STATE"

.field private static final CAR_SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.xiaopeng.car.ai.ICarAISvc"

.field private static final TAG:Ljava/lang/String; = "CarAIMainReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    const-string v1, "CarAIMainReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "com.xiaopeng.broadcast.ACTION_OTA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 38
    :pswitch_0
    const-string v1, "prevState"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "prevState":I
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 40
    .local v2, "state":I
    const-class v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 41
    const-class v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-virtual {v3, v1, v2}, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;->handleOTAStateChanged(II)V

    .line 43
    :cond_1
    const-class v3, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 44
    const-class v3, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-static {v3}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/xpeng/guard/CarGuardModeService;

    invoke-virtual {v3, v1, v2}, Lcom/android/car/xpeng/guard/CarGuardModeService;->handleOTAStateChanged(II)V

    .end local v1    # "prevState":I
    .end local v2    # "state":I
    goto :goto_1

    .line 33
    :pswitch_1
    const-class v1, Lcom/android/car/xpeng/ai/wake/CarAutoWakeService;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 31
    :pswitch_2
    nop

    .line 49
    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35f22cb2 -> :sswitch_4
        -0x1e0940fa -> :sswitch_3
        0x1e1f7f95 -> :sswitch_2
        0x2f126fdf -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
