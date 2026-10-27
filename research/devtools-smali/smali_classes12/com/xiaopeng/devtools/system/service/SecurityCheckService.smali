.class public Lcom/xiaopeng/devtools/system/service/SecurityCheckService;
.super Landroid/app/Service;
.source "SecurityCheckService.java"


# instance fields
.field private Bx:Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

.field private By:Lcom/xiaopeng/aftersales/RepairModeListener;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 107
    sget-object v0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$u7MQk2T3pPWpw-yABUi3q1PgyaM;->INSTANCE:Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$u7MQk2T3pPWpw-yABUi3q1PgyaM;

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    return-void
.end method

.method private static synthetic b(ZI)V
    .locals 1

    .line 107
    new-instance v0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;-><init>(ZI)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic c(ZI)V
    .locals 0

    .line 108
    if-nez p0, :cond_0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 109
    invoke-static {}, Lcom/xiaopeng/devtools/utils/a;->kW()Z

    .line 111
    :cond_0
    return-void
.end method

.method private cq(Ljava/lang/String;)V
    .locals 3

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    const-string v0, "SecurityCheckService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive-----> code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->Bx:Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->ci(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "SecurityCheckService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isSecretKey."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->Bx:Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->e(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/devtools/model/c/c;->bu(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "SecurityCheckService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFactoryCode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->Bx:Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;->f(Ljava/lang/String;Landroid/content/Context;)Z

    .line 105
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$u7MQk2T3pPWpw-yABUi3q1PgyaM(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->b(ZI)V

    return-void
.end method

.method public static synthetic lambda$yBU7oLtHhzWUh8V-R21Zh0S1WqU(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->c(ZI)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    const-string p1, "SecurityCheckService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 39
    const-string v0, "SecurityCheckService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/b/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->Bx:Lcom/xiaopeng/devtools/presenter/factorytest/b/a;

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->registerRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 116
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->By:Lcom/xiaopeng/aftersales/RepairModeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aftersales/AfterSalesManager;->unregisterRepairModeListener(Lcom/xiaopeng/aftersales/RepairModeListener;)V

    .line 118
    return-void
.end method

.method public onReceiveData(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 71
    const-string v0, "SecurityCheckService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveData event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    return-void

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getSenderPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result p1

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    .line 81
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5be75f8

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "com.xiaopeng.btphone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    goto :goto_1

    .line 83
    :cond_4
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_5

    .line 84
    const-string p1, "string_msg"

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->cq(Ljava/lang/String;)V

    .line 86
    nop

    .line 91
    :cond_5
    :goto_1
    return-void

    .line 79
    :cond_6
    :goto_2
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 48
    const-string v0, "SecurityCheckService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->cq(Ljava/lang/String;)V

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 65
    const-string v0, "SecurityCheckService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
