.class public Lcom/xiaopeng/commonfunc/model/car/BcmModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "BcmModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/bcm/CarBcmManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getAlsInitializationStudyAndErrorState()[I
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->TAG:Ljava/lang/String;

    const-string v1, "getAlsInitializationStudyAndErrorState"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/4 v0, 0x0

    .line 25
    .local v0, "status":[I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 26
    .local v1, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getAlsInitializationStudyAndErrorState()[I

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->TAG:Ljava/lang/String;

    const-string v3, "getAlsInitializationStudyAndErrorState carBcmManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v1    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_0
    goto :goto_1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 34
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "xp_bcm"

    return-object v0
.end method

.method public isCarLock()Z
    .locals 6

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 39
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getAtwsState()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCarLock-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method public setRepairModeStatus(Z)V
    .locals 5
    .param p1, "status"    # Z

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 51
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_0

    .line 53
    nop

    .line 54
    nop

    .line 53
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setMaintainModeSw(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/BcmModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRepairModeStatus-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
