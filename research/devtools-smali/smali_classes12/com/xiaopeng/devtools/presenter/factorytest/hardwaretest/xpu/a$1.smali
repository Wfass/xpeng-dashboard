.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;
.super Landroid/os/CountDownTimer;
.source "XpuActivatePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;JJ)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$1;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 58
    return-void
.end method
