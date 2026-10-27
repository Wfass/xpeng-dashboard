.class public Lcom/xiaopeng/commonfunc/model/car/VcuModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "VcuModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/vcu/CarVcuManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "xp_vcu"

    return-object v0
.end method

.method public isInCharging()Z
    .locals 6

    .line 25
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/VcuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 26
    .local v0, "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargeStatus()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/car/VcuModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInCharging-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    return v1
.end method

.method public isUnderLevelP()Z
    .locals 6

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "isLevelP":Z
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/VcuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 39
    .local v1, "carVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_1

    .line 41
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 44
    goto :goto_1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/car/VcuModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUnderLevelP -->"

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
    :goto_1
    return v0
.end method
