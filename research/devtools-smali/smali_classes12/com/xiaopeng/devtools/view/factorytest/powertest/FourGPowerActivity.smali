.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;
.super Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;
.source "FourGPowerActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;


# instance fields
.field private OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

.field private ON:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;-><init>()V

    .line 19
    const/4 v0, -0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->ON:I

    .line 20
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    return-object p0
.end method


# virtual methods
.method a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 68
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 69
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    if-nez v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->ON:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 71
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->ON:I

    .line 73
    :cond_1
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method

.method public fd()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fd()V

    .line 61
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->setContentView(I)V

    .line 62
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->setTarget(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public fe()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fe()V

    .line 80
    const v0, 0x7f09045a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    .line 81
    return-void
.end method

.method public ff()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->ff()V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setOnControlListener(Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;)V

    .line 95
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 85
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->lJ()V

    .line 86
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 87
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 88
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 89
    return-void
.end method

.method public mt()V
    .locals 3

    .line 125
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 126
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mt()V

    .line 128
    return-void
.end method

.method public mu()V
    .locals 3

    .line 132
    const v0, 0x7f100355

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mu()V

    .line 135
    return-void
.end method

.method public mv()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mv()V

    .line 140
    return-void
.end method

.method public nA()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 121
    return-void
.end method

.method public nw()V
    .locals 2

    .line 144
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 145
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->ON:I

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->batOn4G:I

    .line 146
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 147
    return-void
.end method

.method public nx()V
    .locals 2

    .line 99
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 100
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->batOn4G:I

    .line 101
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 102
    return-void
.end method

.method public ny()V
    .locals 2

    .line 106
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 107
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->batOn4G:I

    .line 108
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 109
    return-void
.end method

.method public nz()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGPowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    return-void
.end method
