.class public Lcom/xiaopeng/devtools/model/a/c;
.super Ljava/lang/Object;
.source "McuModel.java"


# static fields
.field private static rL:Lcom/xiaopeng/devtools/model/a/c;


# instance fields
.field private rM:Landroid/car/hardware/mcu/CarMcuManager;

.field private rN:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/xiaopeng/devtools/model/a/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/a/c$1;-><init>(Lcom/xiaopeng/devtools/model/a/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rN:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/a/c;->fu()V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/a/c;->fv()V

    .line 43
    return-void
.end method

.method private fu()V
    .locals 2

    .line 54
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eo()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_mcu"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 62
    :goto_1
    return-void
.end method

.method public static fw()Lcom/xiaopeng/devtools/model/a/c;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/devtools/model/a/c;->rL:Lcom/xiaopeng/devtools/model/a/c;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/xiaopeng/devtools/model/a/c;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/a/c;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/a/c;->rL:Lcom/xiaopeng/devtools/model/a/c;

    .line 49
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/a/c;->rL:Lcom/xiaopeng/devtools/model/a/c;

    return-object v0
.end method


# virtual methods
.method public fv()V
    .locals 2

    .line 65
    const-string v0, "McuModel"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rN:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/mcu/CarMcuManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "McuModel"

    const-string v1, "registerCallback mCarMcuManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 75
    :goto_1
    return-void
.end method

.method public fx()Z
    .locals 5

    .line 379
    nop

    .line 381
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getTemporaryFactoryStatus()I

    move-result v1

    goto :goto_0

    .line 384
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getTemporaryFactoryStatus mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    move v1, v0

    :goto_0
    goto :goto_1

    .line 386
    :catch_0
    move-exception v1

    .line 387
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    move v1, v0

    :goto_1
    const-string v2, "McuModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTemporaryFactoryStatus res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public getChairWelcomeMode()I
    .locals 4

    .line 308
    nop

    .line 310
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getChairWelcomeMode()I

    move-result v1

    .line 317
    move v0, v1

    goto :goto_0

    .line 313
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getChairWelcomeMode mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    goto :goto_1

    .line 315
    :catch_0
    move-exception v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getChairWelcomeMode res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    return v0
.end method

.method public getDvBatTemp()F
    .locals 4

    .line 278
    nop

    .line 280
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvBatTemp()F

    move-result v1

    .line 287
    move v0, v1

    goto :goto_0

    .line 283
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvBatTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v1

    .line 286
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvBatTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    return v0
.end method

.method public getDvMcuTemp()F
    .locals 4

    .line 263
    nop

    .line 265
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvMcuTemp()F

    move-result v1

    .line 272
    move v0, v1

    goto :goto_0

    .line 268
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvMcuTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvMcuTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    return v0
.end method

.method public getDvPcbTemp()F
    .locals 4

    .line 293
    nop

    .line 295
    const/high16 v0, -0x40800000    # -1.0f

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getDvPcbTemp()F

    move-result v1

    .line 302
    move v0, v1

    goto :goto_0

    .line 298
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getDvPcbTemp mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    :goto_1
    const-string v1, "McuModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDvPcbTemp res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    return v0
.end method

.method public isFactoryMode()Z
    .locals 5

    .line 364
    nop

    .line 366
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getFactoryModeSwitchStatus()I

    move-result v1

    goto :goto_0

    .line 369
    :cond_0
    const-string v1, "McuModel"

    const-string v2, "getFactoryModeSwitchStatus mCarMcuManager == null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    move v1, v0

    :goto_0
    goto :goto_1

    .line 371
    :catch_0
    move-exception v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    move v1, v0

    :goto_1
    const-string v2, "McuModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFactoryModeSwitchStatus res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method public sendFactoryMcuBmsMsgToMcu(I)V
    .locals 3

    .line 211
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendFactoryMcuBmsMsgToMcu msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryMcuBmsMsgToMcu(I)V

    goto :goto_0

    .line 216
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "sendFactoryMcuBmsMsgToMcu mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    goto :goto_1

    .line 218
    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    :goto_1
    return-void
.end method

.method public sendFactoryPwrDebugMsgToMcu([I)V
    .locals 3

    .line 224
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

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->sendFactoryPwrDebugMsgToMcu([I)V

    goto :goto_0

    .line 229
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "sendFactoryPwrDebugMsgToMcu mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    goto :goto_1

    .line 231
    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :goto_1
    return-void
.end method

.method public setDvTestReq(I)V
    .locals 3

    .line 338
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDvTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setDvTestReq(I)V

    goto :goto_0

    .line 343
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "setDvTestReq mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    goto :goto_1

    .line 345
    :catch_0
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    :goto_1
    return-void
.end method

.method public setOtaMcuReqStatus(I)V
    .locals 3

    .line 105
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuReqStatus data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuReqStatus(I)V

    goto :goto_0

    .line 110
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "setOtaMcuReqStatus mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    goto :goto_1

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :goto_1
    return-void
.end method

.method public setOtaMcuReqUpdatefile(I)V
    .locals 3

    .line 131
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuReqUpdatefile data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuReqUpdatefile(I)V

    goto :goto_0

    .line 136
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "setOtaMcuReqUpdatefile mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    :goto_1
    return-void
.end method

.method public setOtaMcuSendUpdatefile(Ljava/lang/String;)V
    .locals 3

    .line 118
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaMcuSendUpdatefile file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setOtaMcuSendUpdatefile(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "setOtaMcuSendUpdatefile mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    goto :goto_1

    .line 125
    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_1
    return-void
.end method

.method public setPsuTestReq(I)V
    .locals 3

    .line 250
    const-string v0, "McuModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPsuTestReq req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/a/c;->rM:Landroid/car/hardware/mcu/CarMcuManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/mcu/CarMcuManager;->setPsuTestReq(I)V

    goto :goto_0

    .line 255
    :cond_0
    const-string p1, "McuModel"

    const-string v0, "setPsuTestReq mCarMcuManager == null"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    goto :goto_1

    .line 257
    :catch_0
    move-exception p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    :goto_1
    return-void
.end method
