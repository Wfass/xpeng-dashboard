.class public abstract Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;
.super Lcom/xiaopeng/devtools/view/ToolBarActivity;
.source "BasePowerTestActivity.java"


# instance fields
.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;-><init>()V

    .line 20
    const-string v0, "BasePowerTestActivity"

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V
.end method

.method public fd()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->fd()V

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method abstract nw()V
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 63
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onDestroy()V

    .line 64
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 37
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x1540010a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->mTag:Ljava/lang/String;

    const-string v1, "ID_MCU_ACK_PWR_DEBUG"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-direct {v0, p1}, Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;-><init>([I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->a(Lcom/xiaopeng/devtools/bean/car/McuAckPwrDebug;)V

    .line 42
    nop

    .line 46
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ToolBarActivity;->onPause()V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/BasePowerTestActivity;->nw()V

    .line 58
    return-void
.end method
