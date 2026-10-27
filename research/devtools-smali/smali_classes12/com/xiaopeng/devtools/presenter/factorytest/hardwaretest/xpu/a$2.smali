.class Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;
.super Ljava/lang/Object;
.source "XpuActivatePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1004d3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    const/4 v2, -0x1

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/a;->d(ILjava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a$2;->xC:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;->c(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/a;)V

    .line 74
    return-void
.end method
