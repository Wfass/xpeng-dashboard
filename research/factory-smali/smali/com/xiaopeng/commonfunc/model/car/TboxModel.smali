.class public Lcom/xiaopeng/commonfunc/model/car/TboxModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "TboxModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/tbox/CarTboxManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final BATTERY_CELL_CONNECTED:I = 0x1

.field public static final BATTERY_CELL_DISCONNECTED:I = 0x0

.field public static final BATTERY_CHARGING:I = 0x1

.field public static final BATTERY_DISCHARGING:I = 0x1

.field public static final BATTERY_NOT_CHARGING:I = 0x0

.field public static final BATTERY_NOT_DISCHARGING:I = 0x0

.field public static final BATTERY_NOT_STEPUP:I = 0x0

.field public static final BATTERY_STEPUP:I = 0x1

.field public static final SIM_BLOCKED:I = 0x5

.field public static final SIM_BUSY:I = 0x4

.field public static final SIM_NOT_INSERTED:I = 0x0

.field public static final SIM_PIN_REQ:I = 0x2

.field public static final SIM_PUK_REQ:I = 0x3

.field public static final SIM_READY:I = 0x1

.field public static final SIM_UNKNOWN:I = 0x6


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getDvBattMsg()Ljava/lang/String;
    .locals 4

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tbox/CarTboxManager;

    .line 158
    .local v1, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getDvBattMsg()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvBattMsg carTboxManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBattMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public getDvTempMsg()Ljava/lang/String;
    .locals 4

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tbox/CarTboxManager;

    .line 259
    .local v1, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getDvTempMsg()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvTempMsg carTboxManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v1    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 267
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvTempMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    return-object v0
.end method

.method public getGpsResetResp()I
    .locals 4

    .line 55
    const/4 v0, -0x1

    .line 57
    .local v0, "gpsResp":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tbox/CarTboxManager;

    .line 58
    .local v1, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getGpsResetResp()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v3, "getGpsResetResp carTboxManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGpsResetResp gpsResp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "xp_tbox"

    return-object v0
.end method

.method public getSimStatusAsync()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "getSimStatusAsync"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 74
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->getSimStatusAsync()V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "getSimStatusAsync carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public requestTBoxBandModemStatus()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "requestTBoxBandModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 102
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxBandModemStatus()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "requestTBoxBandModemStatus carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public requestTBoxModemStatus()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "requestTBoxModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 88
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxModemStatus()V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "requestTBoxModemStatus carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendCopyTboxLogRequest(I)V
    .locals 3
    .param p1, "type"    # I

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCopyTboxLogRequest type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 373
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendCopyTboxLogRequest(I)V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendCopyTboxLogRequest carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryPreCert(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryPreCert msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 331
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendFactoryPreCert(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryPreCert carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFinishTboxLogRequest()V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "sendFinishTboxLogRequest"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 387
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->sendFinishTboxLogRequest()V

    goto :goto_0

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFinishTboxLogRequest carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendMultiBleRenewalRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMultiBleRenewalRequest msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 303
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendMultiBleRenewalRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendMultiBleRenewalRequest carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendRenewalPartsRequest(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRenewalPartsRequest msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 289
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendRenewalPartsRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendRenewalPartsRequest carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUpgradingTboxByUdiskReq msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 275
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendUpgradingTboxByUdiskReq(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "sendUpgradingTboxByUdiskReq carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTempSamplingPeriod(I)V
    .locals 3
    .param p1, "second"    # I

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTempSamplingPeriod second:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 245
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setDvTempSamplingPeriod(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setDvTempSamplingPeriod carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 231
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setDvTestReq(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setDvTestReq carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setGpsReset(I)V
    .locals 4
    .param p1, "type"    # I

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGpsReset type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 44
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setGpsReset(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGpsReset carTboxManager == null type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRepairMode(Z)V
    .locals 4
    .param p1, "onoff"    # Z

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 316
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setRepairMode(I)V

    .line 318
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepairMode to tbox :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setRepairMode to tbox error:mCarTboxManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRoutingForTbox(I)V
    .locals 3
    .param p1, "cmd"    # I

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRoutingForTbox cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 345
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setRoutingForTbox(I)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setRoutingForTbox carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 353
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTBoxBandModem(Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;)V
    .locals 3
    .param p1, "bands"    # Lcom/xiaopeng/commonfunc/bean/car/TboxModemBand;

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTBoxBandModem bands:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 116
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxBandModem(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setTBoxBandModem carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTboxCanControlMsg(Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxCanControlMsg msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlIPMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 144
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxCanControlMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setTboxCanControlMsg carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTboxCanControlMsg(Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlMsg;)V
    .locals 3
    .param p1, "msg"    # Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlMsg;

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxCanControlMsg msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/car/TboxCanControlMsg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 130
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxCanControlMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setTboxCanControlMsg carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTboxModemCapture(I)V
    .locals 3
    .param p1, "cmd"    # I

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTboxModemCapture cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 359
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxModemCapture(I)V

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "setTboxModemCapture carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startCharge()V
    .locals 3

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "startCharge"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 188
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startCharge()V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "startCharge carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startTboxCertInstall()V
    .locals 3

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "startTboxCertInstall"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 203
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startTboxCertInstall()V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "startTboxCertInstall carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startTboxCertVerify()V
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "startTboxCertVerify"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 217
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startTboxCertVerify()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "startTboxCertVerify carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public stopCharge()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v1, "stopCharge"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 174
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->stopCharge()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/TboxModel;->TAG:Ljava/lang/String;

    const-string v2, "stopCharge carTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    :goto_0
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
