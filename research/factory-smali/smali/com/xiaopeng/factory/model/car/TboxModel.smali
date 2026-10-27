.class public Lcom/xiaopeng/factory/model/car/TboxModel;
.super Ljava/lang/Object;
.source "TboxModel.java"


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

.field private static final TAG:Ljava/lang/String; = "TboxModel"

.field private static sTboxModel:Lcom/xiaopeng/factory/model/car/TboxModel;


# instance fields
.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Lcom/xiaopeng/factory/model/car/TboxModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/car/TboxModel$1;-><init>(Lcom/xiaopeng/factory/model/car/TboxModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/car/TboxModel;->getCarManager()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/car/TboxModel;->registerCallback()V

    .line 42
    return-void
.end method

.method private getCarManager()V
    .locals 2

    .line 53
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_tbox"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    goto :goto_1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/car/TboxModel;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/factory/model/car/TboxModel;->sTboxModel:Lcom/xiaopeng/factory/model/car/TboxModel;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/xiaopeng/factory/model/car/TboxModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/car/TboxModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/car/TboxModel;->sTboxModel:Lcom/xiaopeng/factory/model/car/TboxModel;

    .line 48
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/car/TboxModel;->sTboxModel:Lcom/xiaopeng/factory/model/car/TboxModel;

    return-object v0
.end method


# virtual methods
.method public getDvBattMsg()Ljava/lang/String;
    .locals 4

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getDvBattMsg()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 201
    :cond_0
    const-string v1, "TboxModel"

    const-string v2, "getDvBattMsg mCarTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    goto :goto_1

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "TboxModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBattMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    return-object v0
.end method

.method public getDvTempMsg()Ljava/lang/String;
    .locals 4

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "res":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getDvTempMsg()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 242
    :cond_0
    const-string v1, "TboxModel"

    const-string v2, "getDvTempMsg mCarTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    goto :goto_1

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v1, "TboxModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvTempMsg res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    return-object v0
.end method

.method public getGpsResetResp()I
    .locals 3

    .line 103
    const-string v0, "TboxModel"

    const-string v1, "getGpsResetResp"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    const/4 v0, -0x1

    .line 106
    .local v0, "gpsResp":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v1}, Landroid/car/hardware/tbox/CarTboxManager;->getGpsResetResp()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 109
    :cond_0
    const-string v1, "TboxModel"

    const-string v2, "getGpsResetResp mCarTboxManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public getSimStatusAsync()V
    .locals 2

    .line 118
    const-string v0, "TboxModel"

    const-string v1, "getSimStatusAsync"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->getSimStatusAsync()V

    goto :goto_0

    .line 123
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "getSimStatusAsync mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->unregisterCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    .line 295
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "disconnect CarTboxManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "TboxModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect CarTboxManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_0
    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 64
    const-string v0, "TboxModel"

    const-string v1, "registerCallback mCarTboxManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 69
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "registerCallback mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public requestTBoxBandModemStatus()V
    .locals 2

    .line 144
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxBandModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxBandModemStatus()V

    goto :goto_0

    .line 149
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxBandModemStatus mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
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

.method public requestTBoxModemStatus()V
    .locals 2

    .line 131
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxModemStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->requestTboxModemStatus()V

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "requestTBoxModemStatus mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public sendFactoryPreCert(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 278
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryPreCert msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->sendFactoryPreCert(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "sendFactoryPreCert carTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTempSamplingPeriod(I)V
    .locals 3
    .param p1, "second"    # I

    .line 224
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTempSamplingPeriod second:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setDvTempSamplingPeriod(I)V

    goto :goto_0

    .line 229
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "setDvTempSamplingPeriod mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    goto :goto_1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3
    .param p1, "req"    # I

    .line 211
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setDvTestReq(I)V

    goto :goto_0

    .line 216
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "setDvTestReq mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setGpsReset(I)V
    .locals 3
    .param p1, "type"    # I

    .line 90
    const-string v0, "TboxModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGpsReset type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/tbox/CarTboxManager;->setGpsReset(I)V

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "setGpsReset mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setTBoxBandModem(Lcom/xiaopeng/factory/bean/car/TboxModemBand;)V
    .locals 2
    .param p1, "bands"    # Lcom/xiaopeng/factory/bean/car/TboxModemBand;

    .line 157
    const-string v0, "TboxModel"

    const-string v1, "setTBoxBandModem"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/car/hardware/tbox/CarTboxManager;->setTboxBandModem(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "setTBoxBandModem mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startCharge()V
    .locals 2

    .line 265
    const-string v0, "TboxModel"

    const-string v1, "startCharge"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startCharge()V

    goto :goto_0

    .line 270
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "startCharge mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    goto :goto_1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startTboxCertInstall()V
    .locals 2

    .line 170
    const-string v0, "TboxModel"

    const-string v1, "startTboxCertInstall"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startTboxCertInstall()V

    goto :goto_0

    .line 175
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "startTboxCertInstall mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startTboxCertVerify()V
    .locals 2

    .line 183
    const-string v0, "TboxModel"

    const-string v1, "startTboxCertVerify"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->startTboxCertVerify()V

    goto :goto_0

    .line 188
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "startTboxCertVerify mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public stopCharge()V
    .locals 2

    .line 252
    const-string v0, "TboxModel"

    const-string v1, "stopCharge"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/TboxModel;->mCarTboxManager:Landroid/car/hardware/tbox/CarTboxManager;

    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->stopCharge()V

    goto :goto_0

    .line 257
    :cond_0
    const-string v0, "TboxModel"

    const-string v1, "stopCharge mCarTboxManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
