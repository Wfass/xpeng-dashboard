.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;
.super Landroid/os/Handler;
.source "XpuImagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x186a1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-static {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter$1;->xP:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jx()V

    .line 60
    :cond_1
    :goto_0
    return-void
.end method
