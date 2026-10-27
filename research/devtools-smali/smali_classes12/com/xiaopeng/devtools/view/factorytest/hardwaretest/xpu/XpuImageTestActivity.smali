.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "XpuImageTestActivity.java"

# interfaces
.implements Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;


# instance fields
.field private OH:Landroid/widget/ImageView;

.field private OI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OH:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public e(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 71
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public fd()V
    .locals 1

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 48
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->setContentView(I)V

    .line 49
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    .line 50
    return-void
.end method

.method public fe()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 55
    const v0, 0x7f090218

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OH:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method public ff()V
    .locals 0

    .line 66
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 67
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 60
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jw()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 42
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onPause()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 31
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    .line 32
    const v1, 0x7f1003fe

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 33
    const v1, 0x7f1004da

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 34
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 35
    const v1, 0x7f10009c

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 36
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->show(II)V

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jx()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 81
    const-string v0, "XpuImageTestActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onStop()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuImageTestActivity;->OI:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/xpu/XpuImagePresenter;->jy()V

    .line 84
    return-void
.end method
