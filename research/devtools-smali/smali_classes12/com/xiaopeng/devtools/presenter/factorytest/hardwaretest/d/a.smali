.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;
.super Ljava/lang/Object;
.source "GPSPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/b;


# instance fields
.field private mAction:Ljava/lang/String;

.field private theme:I

.field private wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

.field private wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

.field private wy:Lcom/xiaopeng/devtools/model/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->theme:I

    .line 49
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->theme:I

    .line 41
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wy:Lcom/xiaopeng/devtools/model/a/d;

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    .line 44
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->it()V

    .line 46
    return-void
.end method

.method private synthetic cp(I)V
    .locals 2

    .line 65
    if-nez p1, :cond_0

    .line 66
    const v0, 0x7f10017f

    goto :goto_0

    :cond_0
    const v0, 0x7f10017e

    .line 65
    :goto_0
    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 67
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->theme:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 69
    const-string p1, "success"

    goto :goto_1

    :cond_1
    const-string p1, "fail"

    .line 68
    :goto_1
    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    .line 72
    :cond_2
    return-void
.end method

.method public static synthetic lambda$xxRKS4IQaEmKanfp5pEyKQW4_wo(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->cp(I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->a(ILjava/util/List;)V

    .line 164
    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/b;->a(Landroid/location/Location;)V

    .line 131
    return-void
.end method

.method public a([FJ)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->a([FJ)V

    .line 184
    return-void
.end method

.method public a([FJF)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->a([FJF)V

    .line 189
    return-void
.end method

.method public bZ(Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->bZ(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public gA()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gA()V

    .line 169
    return-void
.end method

.method public gB()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gB()V

    .line 174
    return-void
.end method

.method public gC()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gC()V

    .line 179
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public gv()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gv()V

    .line 106
    return-void
.end method

.method public gx()V
    .locals 1

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gx()V

    .line 159
    return-void
.end method

.method public gy()Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gy()Z

    move-result v0

    return v0
.end method

.method public gz()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wQ:Lcom/xiaopeng/devtools/model/c/a/d/b;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d/b;->gz()Z

    move-result v0

    return v0
.end method

.method public iV()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->iV()V

    .line 146
    return-void
.end method

.method public it()V
    .locals 1

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 56
    :cond_0
    return-void
.end method

.method public o(II)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/a;->o(II)V

    .line 194
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401020

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 63
    const-string v0, "GPSPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_GPS_RESET status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/-$$Lambda$a$xxRKS4IQaEmKanfp5pEyKQW4_wo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/-$$Lambda$a$xxRKS4IQaEmKanfp5pEyKQW4_wo;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 73
    nop

    .line 77
    :goto_0
    return-void
.end method

.method public setGpsReset(I)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/d;->setGpsReset(I)V

    .line 85
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    const-string p1, "GPS cold reset"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    goto :goto_0

    .line 90
    :pswitch_1
    const-string p1, "GPS warm reset"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    .line 91
    goto :goto_0

    .line 87
    :pswitch_2
    const-string p1, "GPS hot reset"

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    .line 88
    nop

    .line 96
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->mAction:Ljava/lang/String;

    const-string v0, "triggered"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/b;->recordRepairModeAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTheme(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->theme:I

    .line 81
    return-void
.end method
