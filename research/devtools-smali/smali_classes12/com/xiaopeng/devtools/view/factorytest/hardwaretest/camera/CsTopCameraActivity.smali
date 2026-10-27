.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "CsTopCameraActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final Jz:[Ljava/lang/Integer;


# instance fields
.field private JA:Landroid/widget/Spinner;

.field private JB:Landroid/widget/TextView;

.field private Jw:Landroid/view/SurfaceView;

.field private Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

.field private Jy:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jz:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 32
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jy:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    return-object p0
.end method

.method private static synthetic au(Z)V
    .locals 0

    .line 110
    if-nez p0, :cond_0

    .line 111
    const p0, 0x7f100097

    invoke-static {p0}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 113
    :cond_0
    return-void
.end method

.method private cW(I)V
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CsTopCameraActivity$qxHizZNpxRkcA6gpOfWaYs-Dpbo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CsTopCameraActivity$qxHizZNpxRkcA6gpOfWaYs-Dpbo;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method private synthetic cX(I)V
    .locals 1

    .line 93
    nop

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->cd(I)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->go()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->f(IZ)V

    .line 104
    return-void
.end method

.method private f(IZ)V
    .locals 0

    .line 108
    new-instance p1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CsTopCameraActivity$SwL1i3alPnMB-lhy8bYbfOCGBPs;

    invoke-direct {p1, p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/-$$Lambda$CsTopCameraActivity$SwL1i3alPnMB-lhy8bYbfOCGBPs;-><init>(Z)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method public static synthetic lambda$SwL1i3alPnMB-lhy8bYbfOCGBPs(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->au(Z)V

    return-void
.end method

.method public static synthetic lambda$qxHizZNpxRkcA6gpOfWaYs-Dpbo(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->cX(I)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 53
    const v0, 0x7f0c0035

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->setContentView(I)V

    .line 54
    return-void
.end method

.method public fe()V
    .locals 2

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 59
    const v0, 0x7f090357

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->JA:Landroid/widget/Spinner;

    .line 60
    const v0, 0x7f0903f2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->JB:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f09014c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jw:Landroid/view/SurfaceView;

    .line 62
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;-><init>(Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jw:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 64
    return-void
.end method

.method public ff()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->JA:Landroid/widget/Spinner;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 87
    return-void
.end method

.method public lJ()V
    .locals 4

    .line 68
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->JA:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jz:[Ljava/lang/Integer;

    const v3, 0x7f0c00f0

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 149
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 46
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onPause()V

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 41
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 42
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 136
    const-string p1, "CsTopCameraActivity"

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

    .line 137
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 123
    const-string p1, "CsTopCameraActivity"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->getNumberOfCameras()I

    move-result p1

    .line 125
    const-string v0, "CsTopCameraActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    if-lez p1, :cond_0

    .line 127
    iget p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jy:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->cW(I)V

    goto :goto_0

    .line 129
    :cond_0
    const-string p1, "CsTopCameraActivity"

    const-string v0, "surfaceCreated but not found camera"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const p1, 0x7f100220

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 132
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 141
    const-string p1, "CsTopCameraActivity"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CsTopCameraActivity;->Jx:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->gp()V

    .line 143
    return-void
.end method
