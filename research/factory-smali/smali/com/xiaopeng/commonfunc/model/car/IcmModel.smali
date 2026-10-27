.class public Lcom/xiaopeng/commonfunc/model/car/IcmModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "IcmModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/icm/CarIcmManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "xp_icm"

    return-object v0
.end method

.method public sendLogCompressRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "req"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendLogCompressRequest :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    .line 54
    .local v0, "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendLogCompressRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    const-string v2, "sendLogCompressRequest error:mCarIcmManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    :goto_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendUpdateRequest(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    .line 25
    .local v0, "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->sendUpdateRequest(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendIcmUpdateRequest :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    const-string v2, "sendIcmUpdateRequest error:carIcmManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    :goto_0
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setUpdateFileTransferStatus(I)V
    .locals 4
    .param p1, "sendRet"    # I

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/icm/CarIcmManager;

    .line 39
    .local v0, "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Landroid/car/hardware/icm/CarIcmManager;->setUpdateFileTransferStatus(I)V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUpdateFileTransferStatus :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/IcmModel;->TAG:Ljava/lang/String;

    const-string v2, "sendIcmUpdateRequest error:carIcmManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "carIcmManager":Landroid/car/hardware/icm/CarIcmManager;
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
