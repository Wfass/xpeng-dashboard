.class public Lcom/xiaopeng/devtools/presenter/c/a;
.super Ljava/lang/Object;
.source "TboxBandPresenter.java"


# instance fields
.field private gson:Lcom/google/gson/Gson;

.field private wy:Lcom/xiaopeng/devtools/model/a/d;

.field private yp:Lcom/xiaopeng/devtools/view/modemui/a;

.field private yq:Lcom/xiaopeng/devtools/bean/car/TboxModemBand;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/modemui/a;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->wy:Lcom/xiaopeng/devtools/model/a/d;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    .line 35
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->gson:Lcom/google/gson/Gson;

    .line 36
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V

    .line 79
    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    .line 95
    :cond_0
    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yp:Lcom/xiaopeng/devtools/view/modemui/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/modemui/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V

    .line 87
    :cond_0
    return-void
.end method

.method private static synthetic cp(I)V
    .locals 0

    .line 51
    if-nez p0, :cond_0

    const p0, 0x7f1002b6

    goto :goto_0

    :cond_0
    const p0, 0x7f1002b4

    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    return-void
.end method

.method public static synthetic lambda$nQkd6XRTSUKv85NK1MezR0Nojvk(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->b(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V

    return-void
.end method

.method public static synthetic lambda$nVt9rRXXt465Yd68MYTQU3JztY8(I)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/presenter/c/a;->cp(I)V

    return-void
.end method

.method public static synthetic lambda$tgufL4b63adkCJdDao8phoIHF78(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->b(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V

    return-void
.end method

.method public static synthetic lambda$yj-LRotmpMGHxERde7P6qj7UQ3E(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->b(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$nQkd6XRTSUKv85NK1MezR0Nojvk;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$nQkd6XRTSUKv85NK1MezR0Nojvk;-><init>(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$yj-LRotmpMGHxERde7P6qj7UQ3E;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$yj-LRotmpMGHxERde7P6qj7UQ3E;-><init>(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxModemBand;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/d;->a(Lcom/xiaopeng/devtools/bean/car/TboxModemBand;)V

    .line 72
    return-void
.end method

.method public a(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V
    .locals 1

    .line 83
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$tgufL4b63adkCJdDao8phoIHF78;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$tgufL4b63adkCJdDao8phoIHF78;-><init>(Lcom/xiaopeng/devtools/presenter/c/a;Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public it()V
    .locals 1

    .line 39
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 99
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21101015

    if-eq v0, v1, :cond_1

    const v1, 0x21401017

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    const-string v0, "TboxBandPresenter"

    const-string v1, "ID_TBOX_CDU_SET_BAND_MODEM_RESP"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 50
    new-instance v0, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$nVt9rRXXt465Yd68MYTQU3JztY8;

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/presenter/c/-$$Lambda$a$nVt9rRXXt465Yd68MYTQU3JztY8;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/c/a;->requestTBoxBandModemStatus()V

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "TboxBandPresenter"

    const-string v1, "ID_TBOX_BAND_MODEM"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yq:Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yq:Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;->getGSM()Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxGsmBand;)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yq:Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;->getUMTS()Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxUmtsBand;)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/c/a;->yq:Lcom/xiaopeng/devtools/bean/car/TboxModemBand;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxModemBand;->getLTE()Lcom/xiaopeng/devtools/bean/car/TboxLteBand;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/presenter/c/a;->a(Lcom/xiaopeng/devtools/bean/car/TboxLteBand;)V

    .line 60
    nop

    .line 64
    :goto_0
    return-void
.end method

.method public requestTBoxBandModemStatus()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/c/a;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/a/d;->requestTBoxBandModemStatus()V

    .line 68
    return-void
.end method
