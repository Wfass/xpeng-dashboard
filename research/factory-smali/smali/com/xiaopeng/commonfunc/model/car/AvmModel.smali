.class public Lcom/xiaopeng/commonfunc/model/car/AvmModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "AvmModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/avm/CarAvmManager;",
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
    const-string v0, "xp_avm"

    return-object v0
.end method

.method public setAvmCalibration(I)V
    .locals 3
    .param p1, "type"    # I

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/AvmModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAvmCalibration type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/AvmModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/avm/CarAvmManager;

    .line 23
    .local v0, "carAvmManager":Landroid/car/hardware/avm/CarAvmManager;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p1}, Landroid/car/hardware/avm/CarAvmManager;->setAvmCalibration(I)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/AvmModel;->TAG:Ljava/lang/String;

    const-string v2, "setAvmCalibration carAvmManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v0    # "carAvmManager":Landroid/car/hardware/avm/CarAvmManager;
    :goto_0
    goto :goto_1

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
