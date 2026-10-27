.class Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;
.super Landroid/os/Handler;
.source "FourGModulePowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 24
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 25
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f1002ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 27
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    packed-switch p1, :pswitch_data_1

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    const v1, 0x7f1002d0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 44
    goto/16 :goto_0

    .line 35
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 38
    goto/16 :goto_0

    .line 29
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    const v1, 0x7f1002cf

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 32
    goto :goto_0

    .line 49
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    packed-switch p1, :pswitch_data_2

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 67
    goto :goto_0

    .line 58
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;Z)Z

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 61
    goto :goto_0

    .line 51
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity$1;->OU:Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;

    invoke-static {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/FourGModulePowerActivity;Z)Z

    .line 52
    new-instance p1, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 53
    iput v2, p1, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 54
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 55
    nop

    .line 74
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
