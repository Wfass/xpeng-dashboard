.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;
.super Landroid/os/Handler;
.source "PsuTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 34
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/g/a;->jh()V

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;Z)Z

    .line 42
    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;Landroid/widget/TextView;I)V

    .line 46
    goto :goto_0

    .line 36
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity$1;->KR:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/psu/PsuTestActivity;Landroid/widget/TextView;I)V

    .line 37
    nop

    .line 53
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
