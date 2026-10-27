.class public Lcom/xiaopeng/devtools/presenter/h/c;
.super Ljava/lang/Object;
.source "McuUpdatePresenter.java"


# instance fields
.field private zN:Lcom/xiaopeng/devtools/view/update/b;

.field private zO:Lcom/xiaopeng/devtools/model/a/c;

.field private zP:Ljava/lang/String;

.field private zQ:Ljava/lang/String;

.field private zR:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/update/b;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zO:Lcom/xiaopeng/devtools/model/a/c;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zN:Lcom/xiaopeng/devtools/view/update/b;

    .line 37
    return-void
.end method

.method private cn(Ljava/lang/String;)V
    .locals 3

    .line 80
    const-string v0, "McuUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendOtaMcuUpdateFile path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zO:Lcom/xiaopeng/devtools/model/a/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/c;->setOtaMcuSendUpdatefile(Ljava/lang/String;)V

    .line 82
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zO:Lcom/xiaopeng/devtools/model/a/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/model/a/c;->setOtaMcuReqUpdatefile(I)V

    .line 84
    return-void
.end method


# virtual methods
.method public hasMcuFileFromUsb()Z
    .locals 7

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zP:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zQ:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zR:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/mcu/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    nop

    .line 93
    :try_start_0
    const-string v2, ".hex"

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/utils/g;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 98
    move-object v0, v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 99
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 100
    const-string v6, "_FlashDriver.hex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zP:Ljava/lang/String;

    goto :goto_2

    .line 102
    :cond_0
    const-string v6, "_A.hex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zQ:Ljava/lang/String;

    goto :goto_2

    .line 104
    :cond_1
    const-string v6, "_B.hex"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zR:Ljava/lang/String;

    .line 99
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_3
    const-string v0, "McuUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasMcuFileFromUsb mPathMcuFlashDriver:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPathMcuABlock:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zQ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mPathMcuBBlock:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zR:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zP:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zQ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zR:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    nop

    :cond_4
    return v2
.end method

.method public it()V
    .locals 1

    .line 40
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 120
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 48
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 55
    :pswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 56
    const-string v0, "McuUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_OTA_MCU_UPDATE_STATUS status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zN:Lcom/xiaopeng/devtools/view/update/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/b;->dA(I)V

    .line 58
    goto :goto_1

    .line 60
    :pswitch_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 61
    const-string v0, "McuUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_OTA_MCU_REQ_UPDATEFILE status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 70
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zR:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/h/c;->cn(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zQ:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/h/c;->cn(Ljava/lang/String;)V

    .line 68
    goto :goto_0

    .line 64
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zP:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/presenter/h/c;->cn(Ljava/lang/String;)V

    .line 65
    nop

    .line 73
    :goto_0
    goto :goto_1

    .line 50
    :pswitch_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 51
    const-string v0, "McuUpdatePresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_OTA_MCU_REQ_STATUS status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zN:Lcom/xiaopeng/devtools/view/update/b;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/update/b;->dz(I)V

    .line 53
    nop

    .line 77
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21401428
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setOtaMcuReqStatus(I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/h/c;->zO:Lcom/xiaopeng/devtools/model/a/c;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/c;->setOtaMcuReqStatus(I)V

    .line 117
    return-void
.end method
