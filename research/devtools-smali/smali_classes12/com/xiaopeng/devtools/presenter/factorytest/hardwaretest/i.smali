.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;
.super Ljava/lang/Object;
.source "MobileNetworkPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/f;


# instance fields
.field private ww:Lcom/xiaopeng/devtools/model/c/a/e;

.field private wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

.field private wy:Lcom/xiaopeng/devtools/model/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/g;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    .line 36
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wy:Lcom/xiaopeng/devtools/model/a/d;

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    .line 38
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    .line 156
    :cond_0
    return-void
.end method

.method private synthetic cn(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;->cm(I)V

    .line 148
    :cond_0
    return-void
.end method

.method private synthetic iS()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wx:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;

    const-string v1, "192.168.225.1"

    invoke-static {v1}, Lcom/xiaopeng/devtools/utils/m;->cH(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/a;->aw(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public static synthetic lambda$9vE65q9O272ay1o1qi15k2NqLV0(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->b(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    return-void
.end method

.method public static synthetic lambda$UT9mI1d4p4-AvEUv1WBwEiUFMTs(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->iS()V

    return-void
.end method

.method public static synthetic lambda$w2xVpHMEiaYJW2JwXlnkSNXuAXk(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->cn(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V
    .locals 1

    .line 152
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$9vE65q9O272ay1o1qi15k2NqLV0;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$9vE65q9O272ay1o1qi15k2NqLV0;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public bw(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/e;->bw(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public bx(Ljava/lang/String;)Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/e;->bx(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cm(I)V
    .locals 1

    .line 144
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$w2xVpHMEiaYJW2JwXlnkSNXuAXk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$w2xVpHMEiaYJW2JwXlnkSNXuAXk;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public fS()V
    .locals 1

    .line 77
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/e;->fS()V

    .line 81
    return-void
.end method

.method public fT()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/e;->fT()V

    .line 92
    return-void
.end method

.method public fU()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/e;->fU()Z

    move-result v0

    return v0
.end method

.method public getSimStatusAsync()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/d;->getSimStatusAsync()V

    .line 102
    return-void
.end method

.method public iR()V
    .locals 1

    .line 121
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$UT9mI1d4p4-AvEUv1WBwEiUFMTs;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/-$$Lambda$i$UT9mI1d4p4-AvEUv1WBwEiUFMTs;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public it()V
    .locals 1

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101011

    if-eq v0, v1, :cond_1

    const v1, 0x21401012

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "MobileNetworkPresenter"

    const-string v1, "ID_TBOX_SIM_ST"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 67
    const-string v0, "MobileNetworkPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_SIM_ST simState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->cm(I)V

    .line 69
    goto :goto_0

    .line 60
    :cond_1
    const-string v0, "MobileNetworkPresenter"

    const-string v1, "ID_TBOX_CDU_APN"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxApn;

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->a(Lcom/xiaopeng/devtools/bean/car/TboxApn;)V

    .line 63
    nop

    .line 73
    :goto_0
    return-void
.end method

.method public onInit()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->it()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/e;->onInit()V

    .line 48
    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/i;->ww:Lcom/xiaopeng/devtools/model/c/a/e;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/devtools/model/c/a/e;->p(Ljava/lang/String;I)V

    .line 131
    return-void
.end method
