.class public Lcom/xiaopeng/commonfunc/model/car/XpuModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "XpuModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/xpu/CarXpuManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 16
    const-string v0, "xp_xpu"

    return-object v0
.end method

.method public sendFtpTransferResult(I)V
    .locals 3
    .param p1, "sendRet"    # I

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 35
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setUpdateFileTransferStatus(I)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendIcmUpdateRequest error:carXpuManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :goto_0
    goto :goto_1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendXpuUpdateRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 21
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 22
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->sendUpdateRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendIcmUpdateRequest error:carXpuManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :goto_0
    goto :goto_1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 30
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setNedcSwitch(I)V
    .locals 3
    .param p1, "onOff"    # I

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 48
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/CarXpuManager;->setNedcSwitch(I)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/XpuModel;->TAG:Ljava/lang/String;

    const-string v2, "setNedcSwitch error:carXpuManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :goto_0
    goto :goto_1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
