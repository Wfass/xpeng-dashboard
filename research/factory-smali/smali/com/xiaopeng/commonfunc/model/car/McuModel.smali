.class public Lcom/xiaopeng/commonfunc/model/car/McuModel;
.super Lcom/xiaopeng/commonfunc/model/car/CommonCarModel;
.source "McuModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/model/car/CommonCarModel<",
        "Landroid/car/hardware/mcu/CarMcuManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final OTA_ANDROID_ACK_OK:I = 0x0

.field public static final OTA_MCU_ACK_NOT_OK:I = -0x1

.field public static final OTA_MCU_ACK_OK:I = 0x0

.field public static final OTA_MCU_REQ_FIRMWARE_A:I = 0x1

.field public static final OTA_MCU_REQ_FIRMWARE_B:I = 0x2

.field public static final OTA_MCU_REQ_FLASH_DRIVER:I = 0x0

.field public static final OTA_MCU_REQ_MCU_RESET:I = 0x4

.field public static final OTA_MCU_REQ_UPDATE:I = 0x1

.field public static final OTA_MCU_RSP_DRIVER_CHECK_OK:I = 0x9

.field public static final OTA_MCU_RSP_FIRWARE_CHECK_OK:I = 0xa

.field public static final OTA_MCU_RSP_UPDATE_SUCCESS_FINISH:I = 0x5

.field public static final OTA_MCU_SEND_UPDATEFILE_FINISH:I = 0x64


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
.method public disableFactoryMode()V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v1, "disableFactoryMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 353
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->setFactoryModeSwitch(I)V

    goto :goto_0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "disableFactoryMode carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public getChairWelcomeMode()I
    .locals 4

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "res":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 278
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getChairWelcomeMode()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getChairWelcomeMode carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChairWelcomeMode res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    return v0
.end method

.method public getDvBatTemp()F
    .locals 4

    .line 243
    const/high16 v0, -0x40800000    # -1.0f

    .line 245
    .local v0, "res":F
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 246
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvBatTemp()F

    move-result v2

    move v0, v2

    goto :goto_0

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvBatTemp carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBatTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    return v0
.end method

.method public getDvBattMsg()[B
    .locals 4

    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, "res":[B
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 294
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvBattMsg()[B

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 297
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvBattMsg carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBattMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/xiaopeng/commonfunc/utils/DataHelp;->byteArrayToHexStr([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    return-object v0
.end method

.method public getDvMcuTemp()F
    .locals 4

    .line 227
    const/high16 v0, -0x40800000    # -1.0f

    .line 229
    .local v0, "res":F
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 230
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvMcuTemp()F

    move-result v2

    move v0, v2

    goto :goto_0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvMcuTemp carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvMcuTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    return v0
.end method

.method public getDvPcbTemp()F
    .locals 4

    .line 259
    const/high16 v0, -0x40800000    # -1.0f

    .line 261
    .local v0, "res":F
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 262
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvPcbTemp()F

    move-result v2

    move v0, v2

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getDvPcbTemp carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 267
    :catch_0
    move-exception v1

    .line 268
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvPcbTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    return v0
.end method

.method public getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v1, "getFactoryDisplayTypeMsgToMcu"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const-string v0, ""

    .line 130
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 131
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getFactoryDisplayTypeMsgToMcu carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getOtaMcuReqStatus()I
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v1, "getOtaMcuReqStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    const/4 v0, -0x1

    .line 44
    .local v0, "status":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 45
    .local v1, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getOtaMcuReqStatus()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v3, "getOtaMcuReqStatus carMcuManager == null"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    const-string v0, "xp_mcu"

    return-object v0
.end method

.method public isFactoryKeyUnlocked()Z
    .locals 5

    .line 380
    const/4 v0, 0x0

    move v1, v0

    .line 382
    .local v1, "res":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/mcu/CarMcuManager;

    .line 383
    .local v2, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {v2}, Landroid/car/hardware/mcu/CarMcuManager;->getTemporaryFactoryStatus()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 386
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v4, "isFactoryKeyUnlocked carMcuManager == null"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v2    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 388
    :catch_0
    move-exception v2

    .line 389
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFactoryKeyUnlocked res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public isFactoryMode()Z
    .locals 5

    .line 364
    const/4 v0, 0x0

    move v1, v0

    .line 366
    .local v1, "res":I
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/mcu/CarMcuManager;

    .line 367
    .local v2, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {v2}, Landroid/car/hardware/mcu/CarMcuManager;->getFactoryModeSwitchStatus()I

    move-result v3

    move v1, v3

    goto :goto_0

    .line 370
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v4, "isFactoryMode carMcuManager == null"

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v2    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 372
    :catch_0
    move-exception v2

    .line 373
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 375
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFactoryMode res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public sendFactoryDisplayTypeMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryDisplayTypeMsgToMcu msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 146
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDisplayTypeMsgToMcu(I)V

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryDisplayTypeMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryDugReqMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryDugReqMsgToMcu msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 160
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDugReqMsgToMcu([I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryDugReqMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryMcuBmsMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryMcuBmsMsgToMcu msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 174
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryMcuBmsMsgToMcu(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryMcuBmsMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public sendFactoryPmSilentMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryPmSilentMsgToMcu msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 116
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPmSilentMsgToMcu(I)V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryPmSilentMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public sendFactoryPwrDebugMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryPwrDebugMsgToMcu msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 188
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPwrDebugMsgToMcu([I)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryPwrDebugMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public sendFactoryTestMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryTestMsgToMcu msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 102
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryTestMsgToMcu([I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendFactoryTestMsgToMcu carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public sendMapVersion(Ljava/lang/String;)V
    .locals 3
    .param p1, "version"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMapVersion version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 339
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendMapVersion(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "sendMapVersion carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 310
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setDvTestReq(I)V

    goto :goto_0

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setDvTestReq carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setMcuMonitorSwitch(Z)V
    .locals 4
    .param p1, "onoff"    # Z

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 323
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_1

    .line 324
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 325
    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 324
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/car/hardware/mcu/CarMcuManager;->setMcuMonitorSwitch(II)V

    .line 326
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMcuMonitorSwitch :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setMcuMonitorSwitch error:mCarMcuManager is null "

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_1
    goto :goto_2

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public setOtaMcuReqStatus(I)V
    .locals 3
    .param p1, "data"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuReqStatus data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 60
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuReqStatus(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setOtaMcuReqStatus carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setOtaMcuReqUpdatefile(I)V
    .locals 3
    .param p1, "data"    # I

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuReqUpdatefile data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 88
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuReqUpdatefile(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setOtaMcuReqUpdatefile carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public setOtaMcuSendUpdatefile(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuSendUpdatefile file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 74
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuSendUpdatefile(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setOtaMcuSendUpdatefile carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
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

.method public setPsuTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsuTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 216
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setPsuTestReq(I)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setPsuTestReq carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRepairMode(Z)V
    .locals 3
    .param p1, "mode"    # Z

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRepairMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getCarManager()Landroid/car/hardware/CarEcuManager;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 202
    .local v0, "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setRepairMode(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/McuModel;->TAG:Ljava/lang/String;

    const-string v2, "setRepairMode carMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "carMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :goto_0
    goto :goto_1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
