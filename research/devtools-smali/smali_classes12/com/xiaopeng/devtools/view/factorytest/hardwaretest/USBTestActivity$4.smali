.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;
.super Ljava/lang/Object;
.source "USBTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(ZLandroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

.field final synthetic HV:Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

.field final synthetic HW:Landroid/widget/TextView;

.field final synthetic HX:Landroid/widget/TextView;

.field final synthetic HY:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    iput-object p2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HV:Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

    iput-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HW:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HX:Landroid/widget/TextView;

    iput-boolean p5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HY:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HV:Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

    iget-boolean v0, v0, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mPass:Z

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HW:Landroid/widget/TextView;

    const v1, 0x7f100349

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HW:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HW:Landroid/widget/TextView;

    const v1, 0x7f100333

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HW:Landroid/widget/TextView;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HX:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HV:Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;

    iget-wide v1, v1, Lcom/xiaopeng/devtools/bean/event/CopyFileTestResult;->mUsedTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HX:Landroid/widget/TextView;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 308
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HY:Z

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity$4;->HU:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;->i(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/USBTestActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/k;->gb()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    :cond_1
    return-void
.end method
