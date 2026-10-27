.class Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;
.super Landroid/os/Handler;
.source "GPSWirePowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 23
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 24
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f1002ce

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 26
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    packed-switch p1, :pswitch_data_1

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    const v1, 0x7f1002d0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 43
    goto/16 :goto_0

    .line 34
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 37
    goto/16 :goto_0

    .line 28
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    const v1, 0x7f1002cf

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 31
    goto :goto_0

    .line 48
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    packed-switch p1, :pswitch_data_2

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 66
    goto :goto_0

    .line 57
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;Z)Z

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 60
    goto :goto_0

    .line 50
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity$1;->OX:Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;

    invoke-static {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GPSWirePowerActivity;Z)Z

    .line 51
    new-instance p1, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;

    invoke-direct {p1}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;-><init>()V

    .line 52
    iput v2, p1, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->debugPwrSt:I

    .line 53
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/c;->fw()Lcom/xiaopeng/devtools/model/a/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/AndroidPwrDebug;->packToIntArray()[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/a/c;->sendFactoryPwrDebugMsgToMcu([I)V

    .line 54
    nop

    .line 73
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
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
