.class public Lcom/xiaopeng/devtools/model/a/e;
.super Ljava/lang/Object;
.source "XpuModel.java"


# static fields
.field private static rT:Lcom/xiaopeng/devtools/model/a/e;


# instance fields
.field private rU:Landroid/car/hardware/xpu/CarXpuManager;

.field private rV:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/xiaopeng/devtools/model/a/e$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/a/e$1;-><init>(Lcom/xiaopeng/devtools/model/a/e;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rV:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/a/e;->fu()V

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/a/e;->fv()V

    .line 22
    return-void
.end method

.method private fu()V
    .locals 2

    .line 33
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_xpu"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    goto :goto_0

    .line 36
    :cond_0
    const-string v0, "XpuModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    goto :goto_1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 41
    :goto_1
    return-void
.end method

.method public static fz()Lcom/xiaopeng/devtools/model/a/e;
    .locals 1

    .line 25
    sget-object v0, Lcom/xiaopeng/devtools/model/a/e;->rT:Lcom/xiaopeng/devtools/model/a/e;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/xiaopeng/devtools/model/a/e;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/a/e;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/a/e;->rT:Lcom/xiaopeng/devtools/model/a/e;

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/a/e;->rT:Lcom/xiaopeng/devtools/model/a/e;

    return-object v0
.end method


# virtual methods
.method public bV(I)V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setUpdateFileTransferStatus(I)V

    goto :goto_0

    .line 85
    :cond_0
    const-string p1, "XpuModel"

    const-string v0, "sendIcmUpdateRequest error:mCarXpuManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    goto :goto_1

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    :goto_1
    return-void
.end method

.method public fv()V
    .locals 2

    .line 44
    const-string v0, "XpuModel"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/e;->rV:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/xpu/CarXpuManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 49
    :cond_0
    const-string v0, "XpuModel"

    const-string v1, "registerCallback mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    goto :goto_1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 54
    :goto_1
    return-void
.end method

.method public sendXpuUpdateRequest(Ljava/lang/String;)V
    .locals 1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendUpdateRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    const-string p1, "XpuModel"

    const-string v0, "sendIcmUpdateRequest error:mCarXpuManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    :goto_1
    return-void
.end method

.method public setNedcSwitch(I)V
    .locals 1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/e;->rU:Landroid/car/hardware/xpu/CarXpuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNedcSwitch(I)V

    goto :goto_0

    .line 97
    :cond_0
    const-string p1, "XpuModel"

    const-string v0, "setNedcSwitch error:mCarXpuManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    goto :goto_1

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :goto_1
    return-void
.end method
