.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;
.super Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;
.source "BlowerPowerActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;


# instance fields
.field private HQ:I

.field private OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;-><init>()V

    .line 19
    const/4 v0, -0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->HQ:I

    .line 20
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    return-object p0
.end method


# virtual methods
.method a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V
    .locals 3

    .line 68
    iget v0, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2FAN_12V_EN_RESULT:I

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 70
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 71
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->HQ:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 72
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2FAN_12V_EN_RESULT:I

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->HQ:I

    .line 74
    :cond_1
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2FAN_12V_EN_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    return-void
.end method

.method public fd()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fd()V

    .line 61
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f100356

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->setTarget(Ljava/lang/String;)V

    .line 63
    const-string v0, "BlowerPowerActivity"

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->mTag:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public fe()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fe()V

    .line 81
    const v0, 0x7f09045a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const v1, 0x7f1002d0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public ff()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->ff()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setOnControlListener(Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;)V

    .line 97
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 87
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->lJ()V

    .line 88
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 89
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 90
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 91
    return-void
.end method

.method public mt()V
    .locals 3

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    const v0, 0x7f100356

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mt()V

    .line 130
    return-void
.end method

.method public mu()V
    .locals 3

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09010a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 135
    const v0, 0x7f100356

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mu()V

    .line 137
    return-void
.end method

.method public mv()V
    .locals 0

    .line 141
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mv()V

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->finish()V

    .line 143
    return-void
.end method

.method public nA()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 123
    return-void
.end method

.method public nw()V
    .locals 2

    .line 147
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 148
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->HQ:I

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->fan12vEn:I

    .line 149
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 150
    return-void
.end method

.method public nx()V
    .locals 2

    .line 101
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 102
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->fan12vEn:I

    .line 103
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 104
    return-void
.end method

.method public ny()V
    .locals 2

    .line 108
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 109
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->fan12vEn:I

    .line 110
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 111
    return-void
.end method

.method public nz()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BlowerPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
