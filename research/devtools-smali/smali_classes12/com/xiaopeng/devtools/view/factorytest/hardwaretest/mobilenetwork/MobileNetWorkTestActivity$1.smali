.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;
.super Landroid/os/Handler;
.source "MobileNetWorkTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 48
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x30d41

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f10020e

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Landroid/widget/TextView;Z)V

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f10020d

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;Landroid/widget/TextView;Z)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity$1;->KI:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/mobilenetwork/MobileNetWorkTestActivity;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 62
    nop

    .line 67
    :goto_0
    return-void
.end method
