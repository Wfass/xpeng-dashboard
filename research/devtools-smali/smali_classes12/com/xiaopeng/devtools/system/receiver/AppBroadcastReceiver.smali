.class public Lcom/xiaopeng/devtools/system/receiver/AppBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private ac(Landroid/content/Context;)Z
    .locals 1

    .line 62
    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->getRepairMode()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "AppBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    if-nez v0, :cond_0

    .line 33
    return-void

    .line 36
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "com.xiaopeng.action.OPERATE_LOG_SWITCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "com.xiaopeng.action.SET_DRIVE_MODE_FROM_CARCONTROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.xiaopeng.action.IVI_DIAGNOSIS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "com.xiaopeng.action.HIDDEN_MENU_CODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "com.xiaopeng.action.SET_DRIVE_MODEFROM_FACTORYTEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 54
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/receiver/AppBroadcastReceiver;->ac(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 55
    const-class p2, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesActivity;

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/utils/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 48
    :pswitch_1
    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 52
    goto :goto_1

    .line 44
    :pswitch_2
    const-string p1, "switchStatus"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 45
    invoke-static {}, Lcom/xiaopeng/devtools/model/i/b;->hM()Lcom/xiaopeng/devtools/model/i/b;

    move-result-object p2

    if-ne p1, v4, :cond_2

    move v3, v4

    nop

    :cond_2
    invoke-virtual {p2, v3}, Lcom/xiaopeng/devtools/model/i/b;->G(Z)V

    .line 46
    goto :goto_1

    .line 39
    :pswitch_3
    const-string p1, "extra_boolean_remote_set_drive_mode_which"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 40
    invoke-static {p1}, Lcom/xiaopeng/devtools/devdebug/drivemode/a;->bR(I)V

    .line 41
    nop

    .line 59
    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6b970bc0 -> :sswitch_4
        -0x355cb524 -> :sswitch_3
        0x448db2a -> :sswitch_2
        0x57996958 -> :sswitch_1
        0x7e8b97ce -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
