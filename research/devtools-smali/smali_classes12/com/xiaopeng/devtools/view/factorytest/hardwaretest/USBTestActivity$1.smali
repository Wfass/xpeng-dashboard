.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;
.super Landroid/os/Handler;
.source "USBTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 68
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 74
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    goto :goto_0

    .line 70
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$1;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 71
    nop

    .line 81
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
