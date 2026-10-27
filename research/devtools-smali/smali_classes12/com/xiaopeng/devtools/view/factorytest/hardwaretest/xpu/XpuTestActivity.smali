.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;
.super Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;
.source "XpuTestActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private Jw:Landroid/view/SurfaceView;

.field private Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;-><init>()V

    return-void
.end method

.method private cW(I)V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuTestActivity$a8vv0sSJDPBRK_8xLRjqQ9yBfLY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/-$$Lambda$XpuTestActivity$a8vv0sSJDPBRK_8xLRjqQ9yBfLY;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method private synthetic cX(I)V
    .locals 1

    .line 74
    nop

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->cd(I)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->go()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    nop

    .line 83
    :goto_0
    return-void
.end method

.method public static synthetic lambda$a8vv0sSJDPBRK_8xLRjqQ9yBfLY(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->cX(I)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fd()V

    .line 51
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->setContentView(I)V

    .line 52
    return-void
.end method

.method public fe()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->fe()V

    .line 57
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jw:Landroid/view/SurfaceView;

    .line 58
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 60
    return-void
.end method

.method public ff()V
    .locals 0

    .line 69
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->ff()V

    .line 70
    return-void
.end method

.method public lJ()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->lJ()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 112
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onDestroy()V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 114
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onPause()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/AsOrFacBaseActivity;->onResume()V

    .line 34
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    .line 35
    const v1, 0x7f1003fe

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 36
    const v1, 0x7f1004da

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 37
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 38
    const v1, 0x7f10009c

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 39
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->show(II)V

    .line 40
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 101
    const-string p1, "XpuTestActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , width = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , height = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 88
    const-string p1, "XpuTestActivity"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->getNumberOfCameras()I

    move-result p1

    .line 90
    const-string v0, "XpuTestActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    if-lez p1, :cond_0

    .line 92
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->cW(I)V

    goto :goto_0

    .line 94
    :cond_0
    const-string p1, "XpuTestActivity"

    const-string v0, "surfaceCreated but not found camera"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    const p1, 0x7f100220

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 97
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 106
    const-string p1, "XpuTestActivity"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/xpu/XpuTestActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 108
    return-void
.end method
