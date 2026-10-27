.class public Lcom/xiaopeng/factory/model/car/McuModel;
.super Ljava/lang/Object;
.source "McuModel.java"


# static fields
.field public static final OTA_ANDROID_ACK_OK:I = 0x0

.field public static final OTA_MCU_ACK_OK:I = 0x0

.field public static final OTA_MCU_REQ_FIRMWARE_A:I = 0x1

.field public static final OTA_MCU_REQ_FIRMWARE_B:I = 0x2

.field public static final OTA_MCU_REQ_FLASH_DRIVER:I = 0x0

.field public static final OTA_MCU_REQ_UPDATE:I = 0x1

.field public static final OTA_MCU_RSP_UPDATE_SUCCESS_FINISH:I = 0x5

.field public static final OTA_MCU_SEND_UPDATEFILE_FINISH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "McuModel"

.field private static sMcuModel:Lcom/xiaopeng/factory/model/car/McuModel;


# instance fields
.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/xiaopeng/factory/model/car/McuModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/car/McuModel$1;-><init>(Lcom/xiaopeng/factory/model/car/McuModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/car/McuModel;->getCarManager()V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/car/McuModel;->registerCallback()V

    .line 40
    return-void
.end method

.method private getCarManager()V
    .locals 2

    .line 51
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_mcu"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    goto :goto_0

    .line 54
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/car/McuModel;
    .locals 1

    .line 43
    sget-object v0, Lcom/xiaopeng/factory/model/car/McuModel;->sMcuModel:Lcom/xiaopeng/factory/model/car/McuModel;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/xiaopeng/factory/model/car/McuModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/car/McuModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/car/McuModel;->sMcuModel:Lcom/xiaopeng/factory/model/car/McuModel;

    .line 46
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/car/McuModel;->sMcuModel:Lcom/xiaopeng/factory/model/car/McuModel;

    return-object v0
.end method


# virtual methods
.method public getDvBatTemp()F
    .locals 4

    .line 209
    const/high16 v0, -0x40800000    # -1.0f

    .line 211
    .local v0, "res":F
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvBatTemp()F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 214
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvBatTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBatTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    return v0
.end method

.method public getDvBattMsg()[B
    .locals 4

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "res":[B
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvBattMsg()[B

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 244
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvBattMsg mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBattMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-static {v0, v3}, Lcom/xiaopeng/factory/utils/DataHelp;->byteArrayToHexStr([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    return-object v0
.end method

.method public getDvMcuTemp()F
    .locals 4

    .line 194
    const/high16 v0, -0x40800000    # -1.0f

    .line 196
    .local v0, "res":F
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvMcuTemp()F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 199
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvMcuTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvMcuTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    return v0
.end method

.method public getDvPcbTemp()F
    .locals 4

    .line 224
    const/high16 v0, -0x40800000    # -1.0f

    .line 226
    .local v0, "res":F
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvPcbTemp()F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 229
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvPcbTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    goto :goto_1

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvPcbTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    return v0
.end method

.method public getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;
    .locals 3

    .line 114
    const-string v0, "McuModel"

    const-string v1, "getFactoryDisplayTypeMsgToMcu"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    const-string v0, ""

    .line 117
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 120
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getFactoryDisplayTypeMsgToMcu mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    goto :goto_1

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 271
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "disconnect CarMcuManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect CarMcuManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 62
    const-string v0, "McuModel"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "registerCallback mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public sendFactoryDisplayTypeMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 129
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryDisplayTypeMsgToMcu msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDisplayTypeMsgToMcu(I)V

    goto :goto_0

    .line 134
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryDisplayTypeMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryDugReqMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 142
    const-string v0, "McuModel"

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

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryDugReqMsgToMcu([I)V

    goto :goto_0

    .line 147
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryDugReqMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
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

.method public sendFactoryMcuBmsMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 155
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryMcuBmsMsgToMcu msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryMcuBmsMsgToMcu(I)V

    goto :goto_0

    .line 160
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryMcuBmsMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryPmSilentMsgToMcu(I)V
    .locals 3
    .param p1, "msg"    # I

    .line 101
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryPmSilentMsgToMcu msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPmSilentMsgToMcu(I)V

    goto :goto_0

    .line 106
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryPmSilentMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    goto :goto_1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryPwrDebugMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 168
    const-string v0, "McuModel"

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

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPwrDebugMsgToMcu([I)V

    goto :goto_0

    .line 173
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryPwrDebugMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryTestMsgToMcu([I)V
    .locals 3
    .param p1, "msg"    # [I

    .line 88
    const-string v0, "McuModel"

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

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryTestMsgToMcu([I)V

    goto :goto_0

    .line 93
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "sendFactoryTestMsgToMcu mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 254
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setDvTestReq(I)V

    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "setDvTestReq mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    goto :goto_1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setPsuTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 181
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsuTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/McuModel;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setPsuTestReq(I)V

    goto :goto_0

    .line 186
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "setPsuTestReq mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    goto :goto_1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
