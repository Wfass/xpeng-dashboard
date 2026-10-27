.class public Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;
.super Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;
.source "FourGModulePowerActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;


# instance fields
.field private OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

.field private ON:I

.field private OT:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OT:Z

    .line 20
    const/4 v0, -0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->ON:I

    .line 21
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OT:Z

    return p1
.end method


# virtual methods
.method a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 92
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OT:Z

    if-nez v1, :cond_1

    .line 93
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    if-nez v1, :cond_0

    return-void

    .line 95
    :cond_0
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 96
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_BAT_ON_OFF_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    .line 98
    :cond_1
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_PWR_ON_RESULT:I

    if-nez v1, :cond_2

    return-void

    .line 100
    :cond_2
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->ON:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 101
    iget v1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_PWR_ON_RESULT:I

    iput v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->ON:I

    .line 103
    :cond_3
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iget p1, p1, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;->uP24G_PWR_ON_RESULT:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    return-void
.end method

.method public fd()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fd()V

    .line 85
    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->setContentView(I)V

    .line 86
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->setTarget(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public fe()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->fe()V

    .line 112
    const v0, 0x7f09045a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    .line 113
    return-void
.end method

.method public ff()V
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->ff()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setOnControlListener(Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView$a;)V

    .line 131
    return-void
.end method

.method public lJ()V
    .locals 3

    .line 117
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->lJ()V

    .line 118
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 119
    iget-boolean v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OT:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 120
    iput v2, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->batOn4G:I

    goto :goto_0

    .line 122
    :cond_0
    iput v2, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 124
    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 125
    return-void
.end method

.method public mt()V
    .locals 3

    .line 161
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 163
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mt()V

    .line 164
    return-void
.end method

.method public mu()V
    .locals 3

    .line 168
    const v0, 0x7f100353

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 169
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    const v1, 0x7f090103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 170
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mu()V

    .line 171
    return-void
.end method

.method public mv()V
    .locals 0

    .line 175
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mv()V

    .line 176
    return-void
.end method

.method public nA()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 157
    return-void
.end method

.method public nw()V
    .locals 2

    .line 180
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 181
    iget v1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->ON:I

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->pwr4G:I

    .line 182
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 183
    return-void
.end method

.method public nx()V
    .locals 2

    .line 135
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 136
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->pwr4G:I

    .line 137
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 138
    return-void
.end method

.method public ny()V
    .locals 2

    .line 142
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 143
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->pwr4G:I

    .line 144
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 145
    return-void
.end method

.method public nz()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->OL:Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setResult(Z)V

    .line 151
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
