.class Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;
.super Landroid/os/Handler;
.source "GpsPowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

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

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 40
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    const v2, 0x7f1002d0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 43
    goto :goto_0

    .line 34
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    const v3, 0x7f1002ce

    invoke-virtual {v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 37
    goto :goto_0

    .line 28
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    const v3, 0x7f1002cf

    invoke-virtual {v2, v3}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setCurrentState(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOnEnableStatus(Z)V

    .line 30
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity$1;->OY:Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/powertest/GpsPowerActivity;)Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/powertest/MyPowerView;->setControlOffEnableStatus(Z)V

    .line 31
    nop

    .line 50
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
