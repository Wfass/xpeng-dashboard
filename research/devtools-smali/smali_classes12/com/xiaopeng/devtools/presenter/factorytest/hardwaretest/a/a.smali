.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;
.super Ljava/lang/Object;
.source "BatteryPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/b;


# instance fields
.field private wC:Lcom/xiaopeng/devtools/model/c/a/a/a;

.field private wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

.field private wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/a/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wC:Lcom/xiaopeng/devtools/model/c/a/a/a;

    .line 34
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

    .line 36
    return-void
.end method


# virtual methods
.method public gh()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wC:Lcom/xiaopeng/devtools/model/c/a/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/a/a;->gh()V

    .line 71
    return-void
.end method

.method public gi()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wC:Lcom/xiaopeng/devtools/model/c/a/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/a/a;->gi()V

    .line 76
    return-void
.end method

.method public init()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 44
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2110100c

    if-eq v0, v1, :cond_1

    const v1, 0x21701433

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 55
    :cond_0
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;-><init>([B)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    .line 57
    const-string p1, "BatteryPresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID_MCU_DVTEST_BBAT batteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

    if-eqz p1, :cond_2

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;->a(Lcom/xiaopeng/devtools/bean/car/BatteryInfo;)V

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "SUPPORT_TMCU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    .line 48
    const-string p1, "BatteryPresenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID_TBOX_DV_BATT batteryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/bean/car/BatteryInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wD:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/a/a;->wE:Lcom/xiaopeng/devtools/bean/car/BatteryInfo;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/battery/a;->a(Lcom/xiaopeng/devtools/bean/car/BatteryInfo;)V

    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
