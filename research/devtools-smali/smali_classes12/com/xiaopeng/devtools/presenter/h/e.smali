.class public Lcom/xiaopeng/devtools/presenter/h/e;
.super Ljava/lang/Object;
.source "TboxUpdatePresenter.java"


# instance fields
.field private Aa:Ljava/lang/String;

.field private Ab:Ljava/lang/String;

.field private wy:Lcom/xiaopeng/devtools/model/a/d;

.field private zW:Lcom/xiaopeng/devtools/view/update/d;

.field private zX:I

.field private zY:I

.field private zZ:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/update/d;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zX:I

    .line 42
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zY:I

    .line 43
    const/16 v0, -0x63

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    .line 47
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->wy:Lcom/xiaopeng/devtools/model/a/d;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zW:Lcom/xiaopeng/devtools/view/update/d;

    .line 49
    return-void
.end method

.method private synthetic kB()V
    .locals 5

    .line 135
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/mnt/sdcard/tftpboot/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "192.168.225.1"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/devtools/utils/s;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->updateView()V

    .line 138
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lcom/xiaopeng/devtools/bean/car/TboxUpdateReq;

    const/16 v2, 0x64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/sdcard/tftpboot/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateReq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/presenter/h/e;->sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const/16 v0, -0x62

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->updateView()V

    .line 144
    :goto_0
    return-void
.end method

.method public static synthetic lambda$kiEMxO0VDVG6i-80m_PeErmzA6Y(Lcom/xiaopeng/devtools/presenter/h/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->kB()V

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zW:Lcom/xiaopeng/devtools/view/update/d;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zW:Lcom/xiaopeng/devtools/view/update/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/devtools/view/update/d;->dC(I)V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method public getUpdateResult()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    return v0
.end method

.method public it()V
    .locals 1

    .line 52
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method

.method public kA()V
    .locals 2

    .line 129
    const-string v0, "TboxUpdatePresenter"

    const-string v1, "updateTboxBin"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zX:I

    .line 131
    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zY:I

    .line 132
    const/16 v0, -0x63

    iput v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    .line 133
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$e$kiEMxO0VDVG6i-80m_PeErmzA6Y;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/-$$Lambda$e$kiEMxO0VDVG6i-80m_PeErmzA6Y;-><init>(Lcom/xiaopeng/devtools/presenter/h/e;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public kv()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zX:I

    return v0
.end method

.method public kw()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zY:I

    return v0
.end method

.method public kx()Z
    .locals 2

    .line 103
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    const/16 v1, -0x63

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ky()Z
    .locals 1

    .line 107
    iget v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kz()Z
    .locals 4

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/tbox/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Aa:Ljava/lang/String;

    .line 113
    nop

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Aa:Ljava/lang/String;

    const-string v2, "TBOX_"

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/utils/g;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    nop

    .line 120
    move-object v0, v1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 121
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    .line 124
    :cond_0
    const-string v0, "TboxUpdatePresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasTboxFileFromUsb mTboxUdiskPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Aa:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , mTboxBinPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->Ab:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 152
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2110102d

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;

    .line 63
    const-string v0, "TboxUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_OTA_UDISK :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;->getKey()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;->getValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zZ:I

    .line 75
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->updateView()V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;->getValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zY:I

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->updateView()V

    .line 72
    goto :goto_0

    .line 66
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/TboxUpdateResponse;->getValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/presenter/h/e;->zX:I

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/h/e;->updateView()V

    .line 68
    nop

    .line 78
    :goto_0
    nop

    .line 82
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/e;->wy:Lcom/xiaopeng/devtools/model/a/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/d;->sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V

    .line 149
    return-void
.end method
