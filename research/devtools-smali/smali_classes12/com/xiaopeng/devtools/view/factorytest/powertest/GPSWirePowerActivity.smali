.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;
.super Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;
.source "GPSWirePowerActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;


# instance fields
.field private OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

.field private ON:I

.field private OW:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OW:Z

    .line 19
    const/4 v0, -0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->ON:I

    .line 20
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OW:Z

    return p1
.end method


# virtual methods
.method a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 91
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OW:Z

    if-nez v1, :cond_1

    .line 92
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_PWR_EN_RESULT:I

    if-nez v1, :cond_0

    return-void

    .line 93
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 94
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_PWR_EN_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 96
    :cond_1
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_ANT_PWR_RESULT:I

    if-nez v1, :cond_2

    return-void

    .line 97
    :cond_2
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->ON:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 98
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_ANT_PWR_RESULT:I

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->ON:I

    .line 100
    :cond_3
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 101
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP2GNSS_ANT_PWR_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 103
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method

.method public fd()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fd()V

    .line 84
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->setTarget(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public fe()V
    .locals 1

    .line 108
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fe()V

    .line 109
    const v0, 0x7f09045a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    .line 110
    return-void
.end method

.method public ff()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->ff()V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setOnControlListener(Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;)V

    .line 128
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->lJ()V

    .line 115
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 116
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OW:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 117
    iput v2, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssPwr:I

    goto :goto_0

    .line 119
    :cond_0
    iput v2, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 121
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 122
    return-void
.end method

.method public mt()V
    .locals 3

    .line 158
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 159
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 160
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mt()V

    .line 161
    return-void
.end method

.method public mu()V
    .locals 3

    .line 165
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f09011e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 167
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mu()V

    .line 168
    return-void
.end method

.method public mv()V
    .locals 0

    .line 172
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mv()V

    .line 173
    return-void
.end method

.method public nA()V
    .locals 3

    .line 152
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 154
    return-void
.end method

.method public nw()V
    .locals 2

    .line 177
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 178
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->ON:I

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    .line 179
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 180
    return-void
.end method

.method public nx()V
    .locals 2

    .line 132
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 133
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    .line 134
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 135
    return-void
.end method

.method public ny()V
    .locals 2

    .line 139
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 140
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->gnssAntPwr:I

    .line 141
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 142
    return-void
.end method

.method public nz()V
    .locals 3

    .line 146
    const v0, 0x7f100377

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 148
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method
