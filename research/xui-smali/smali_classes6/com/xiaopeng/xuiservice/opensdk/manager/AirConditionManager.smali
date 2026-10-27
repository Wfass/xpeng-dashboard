.class public Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "AirConditionManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AirConditionManager"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;


# instance fields
.field private final carBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private final carHvacCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Lcom/car/opensdk/vehicle/air/IAirConditioner;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 29
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->carHvacCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 42
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->carBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->handleHvacChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private getAirAcStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 547
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 549
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempAcMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 552
    :goto_0
    goto :goto_1

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirAcStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 554
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirAcStatus, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 558
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirAcStatus results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 561
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirAcStatus, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 561
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_2
    return-void
.end method

.method private getAirAutoStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 503
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 505
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacAutoMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 508
    :goto_0
    goto :goto_1

    .line 506
    :catch_0
    move-exception v2

    .line 507
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirAutoStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 510
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirAutoStatus, getAirAutoStatus null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 514
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirAutoStatus, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 517
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirAutoStatus, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_2
    return-void
.end method

.method private getAirColdHeatNature([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 525
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 527
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getAcHeatNatureSt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 530
    :goto_0
    goto :goto_1

    .line 528
    :catch_0
    move-exception v2

    .line 529
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirColdHeatNature, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 532
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirColdHeatNature, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 536
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirColdHeatNature results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 539
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirColdHeatNature, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :goto_2
    return-void
.end method

.method private getAirDrvTemp([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "temp":Ljava/lang/Float;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 604
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 606
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempDriverValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 609
    :goto_0
    goto :goto_1

    .line 607
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirDrvTemp, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 611
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirDrvTemp, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 615
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get AirDrvTemp, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 618
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get AirDrvTemp, temp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :goto_2
    return-void
.end method

.method private getAirPowerStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 481
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 483
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacPowerMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 486
    :goto_0
    goto :goto_1

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirPowerStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 488
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirPowerStatus, get CarHvacStatus null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 492
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirPowerStatus, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 495
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirPowerStatus, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_2
    return-void
.end method

.method private getAirPsnTemp([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 624
    const/4 v0, 0x0

    .line 625
    .local v0, "temp":Ljava/lang/Float;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 626
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 628
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacTempPsnValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 631
    :goto_0
    goto :goto_1

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirPsnTemp, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 633
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirPsnTemp, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 637
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getAirPsnTemp, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 640
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getAirPsnTemp, temp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 640
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    :goto_2
    return-void
.end method

.method private getAirRearTemp([Ljava/lang/String;)V
    .locals 5
    .param p1, "results"    # [Ljava/lang/String;

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, "temp":Ljava/lang/Float;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 647
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirPsnTemp, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 658
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getAirPsnTemp, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_1

    .line 661
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get getAirPsnTemp, temp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 661
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_1
    return-void
.end method

.method private getAirVolume([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 569
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 571
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacWindSpeedLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 574
    :goto_0
    goto :goto_1

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAirVolume, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 576
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getAirVolume, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 580
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirVolume, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 583
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirVolume, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_2
    return-void
.end method

.method private getAirVolumeDistrict([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 589
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 591
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 592
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getProductSeries()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAirVolumeDistrict, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_2

    .line 597
    :cond_1
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAirVolumeDistrict, results:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_2
    return-void
.end method

.method private getBlowMode([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "mode":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 713
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 715
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacWindBlowMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 718
    :goto_0
    goto :goto_1

    .line 716
    :catch_0
    move-exception v2

    .line 717
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBlowMode, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 720
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getBlowMode, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 724
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBlowMode, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 727
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBlowMode, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 727
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :goto_2
    return-void
.end method

.method private getCirculationMode([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "mode":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 669
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacCirculationMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 674
    :goto_0
    goto :goto_1

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCirculationMode, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 676
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getCirculationMode, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 680
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCirculationMode, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 683
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCirculationMode, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_2
    return-void
.end method

.method private getDrvSeatHeatLevel([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, "level":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 735
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 737
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmSeatHeatLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 740
    :goto_0
    goto :goto_1

    .line 738
    :catch_0
    move-exception v2

    .line 739
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrvSeatHeatLevel, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 742
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getDrvSeatHeatLevel, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 746
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrvSeatHeatLevel, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 749
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrvSeatHeatLevel, level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :goto_2
    return-void
.end method

.method private getDrvSeatVentLevel([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "level":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 757
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmSeatBlowLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 762
    :goto_0
    goto :goto_1

    .line 760
    :catch_0
    move-exception v2

    .line 761
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrvSeatVentLevel, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 764
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getDrvSeatVentLevel, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 768
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrvSeatVentLevel, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 771
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrvSeatVentLevel, level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 771
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :goto_2
    return-void
.end method

.method private getEcoMode([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "mode":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 691
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 693
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getEconModeSt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 696
    :goto_0
    goto :goto_1

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEcoMode, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 698
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getEcoMode, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 702
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEcoMode, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 705
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEcoMode, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 705
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    :goto_2
    return-void
.end method

.method private getFrontDefrost([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 820
    const/4 v0, 0x0

    .line 821
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 822
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 824
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHVACFrontDefrostMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 827
    :goto_0
    goto :goto_1

    .line 825
    :catch_0
    move-exception v2

    .line 826
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFrontDefrost, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 829
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getFrontDefrost, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 833
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrontDefrost, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 836
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrontDefrost, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :goto_2
    return-void
.end method

.method private getInnerPm25([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "value":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string v2, "hvac"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/hvac/CarHvacManager;

    .line 866
    .local v1, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v1, :cond_0

    .line 868
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getHvacQualityInnerPm25Value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 871
    :goto_0
    goto :goto_1

    .line 869
    :catch_0
    move-exception v2

    .line 870
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInnerPm25, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 873
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getInnerPm25, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 877
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInnerPm25, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 880
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInnerPm25, value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 880
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;
    .locals 2

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;

    return-object v0
.end method

.method private getPsnSeatHeatLevel([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 777
    const/4 v0, 0x0

    .line 778
    .local v0, "level":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 779
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 781
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmPsnSeatHeatLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 784
    :goto_0
    goto :goto_1

    .line 782
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPsnSeatHeatLevel, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 786
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getPsnSeatHeatLevel, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 790
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsnSeatHeatLevel, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 793
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsnSeatHeatLevel, level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_2
    return-void
.end method

.method private getPsnSeatVentLevel([Ljava/lang/String;)V
    .locals 5
    .param p1, "results"    # [Ljava/lang/String;

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "level":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 801
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 807
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getPsnSeatVentLevel, get CarHvacManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 811
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsnSeatVentLevel, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_1

    .line 814
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPsnSeatVentLevel, level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 814
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    :goto_1
    return-void
.end method

.method private getRearMirrorHeat([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 842
    const/4 v0, 0x0

    .line 843
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 844
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 846
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getBcmBackMirrorHeatMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 849
    :goto_0
    goto :goto_1

    .line 847
    :catch_0
    move-exception v2

    .line 848
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRearMirrorHeat, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 851
    :cond_0
    const-string v2, "AirConditionManager"

    const-string v3, "getRearMirrorHeat, get CarBcmManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 855
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRearMirrorHeat, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 858
    :cond_1
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRearMirrorHeat, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 858
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_2
    return-void
.end method

.method private getSupportMirrorHeat([Ljava/lang/String;)V
    .locals 5
    .param p1, "results"    # [Ljava/lang/String;

    .line 898
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getProductSeries()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 899
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getCfcCode()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 900
    invoke-static {}, Landroid/car/XpCarFeatures;->hasMirrorHeatFeature()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    move v0, v2

    .line 902
    .local v0, "support":I
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 903
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportMirrorHeat, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_1

    .line 906
    :cond_2
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportMirrorHeat, results:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_1
    return-void
.end method

.method private getTempSyncSupport([Ljava/lang/String;)V
    .locals 5
    .param p1, "results"    # [Ljava/lang/String;

    .line 886
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getProductSeries()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 887
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getCfcCode()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    nop

    :cond_1
    :goto_0
    move v0, v2

    .line 889
    .local v0, "support":I
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    .line 890
    const-string v2, "AirConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTempSyncSupport, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_1

    .line 893
    :cond_2
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTempSyncSupport, results:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    :goto_1
    return-void
.end method

.method private handleHvacChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "carPropertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 911
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHvacChangeEvent,v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    if-nez v0, :cond_0

    .line 913
    return-void

    .line 915
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 972
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 973
    .local v0, "temp":Ljava/lang/Float;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 974
    .local v1, "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "psnTempValue"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v0    # "temp":Ljava/lang/Float;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psn temp onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1026
    :sswitch_1
    :try_start_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1027
    .local v0, "level":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1028
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "psnSeatHeat"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1031
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1029
    :catch_1
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "psn seat heat level onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1044
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1045
    .local v0, "status":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1046
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "rearMirrorHeat"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1049
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1047
    :catch_2
    move-exception v0

    .line 1048
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back mirror heat onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1008
    :sswitch_3
    :try_start_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1009
    .local v0, "level":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1010
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "drvSeatHeat"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1013
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1011
    :catch_3
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drv seat heat level onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 918
    :sswitch_4
    :try_start_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 919
    .local v0, "status":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 920
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "powerStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 923
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 921
    :catch_4
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "air power onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 927
    :sswitch_5
    :try_start_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 928
    .local v0, "status":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 929
    .restart local v1    # "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "autoStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 932
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 930
    :catch_5
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "air auto onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 936
    :sswitch_6
    :try_start_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 937
    .local v0, "status":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 938
    .restart local v1    # "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "acStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 941
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 939
    :catch_6
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "air ac onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1035
    :sswitch_7
    :try_start_7
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1036
    .local v0, "status":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1037
    .local v1, "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "frontDefrost"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1040
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1038
    :catch_7
    move-exception v0

    .line 1039
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontDefrost onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 990
    :sswitch_8
    :try_start_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 991
    .local v0, "mode":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 992
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "ecoStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 995
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 993
    :catch_8
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "eco onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 954
    :sswitch_9
    :try_start_9
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 955
    .local v0, "mode":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 956
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "tempSyncStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 959
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 957
    :catch_9
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "air temp sync onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1053
    :sswitch_a
    :try_start_a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1054
    .local v0, "value":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1055
    .local v1, "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "innerPm25"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 1058
    .end local v0    # "value":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1056
    :catch_a
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inner pm25 onChangedEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 963
    :sswitch_b
    :try_start_b
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 964
    .local v0, "temp":Ljava/lang/Float;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 965
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "drvTempValue"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 968
    .end local v0    # "temp":Ljava/lang/Float;
    .end local v1    # "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 966
    :catch_b
    move-exception v0

    .line 967
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drv temp onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1017
    :sswitch_c
    :try_start_c
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1018
    .local v0, "level":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1019
    .local v1, "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "drvSeatVent"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 1022
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1020
    :catch_c
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drv seat vent level onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 981
    :sswitch_d
    :try_start_d
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 982
    .local v0, "mode":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 983
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "circulationMode"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 986
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto/16 :goto_0

    .line 984
    :catch_d
    move-exception v0

    .line 985
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "circulation type onChangedEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 999
    :sswitch_e
    :try_start_e
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1000
    .local v0, "mode":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 1001
    .restart local v1    # "results":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "airBlowMode"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 1004
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    goto :goto_0

    .line 1002
    :catch_e
    move-exception v0

    .line 1003
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blowMode onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 945
    :sswitch_f
    :try_start_f
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 946
    .local v0, "level":Ljava/lang/Integer;
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    move-object v1, v2

    .line 947
    .local v1, "result":[Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "airVolume"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 950
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    goto :goto_0

    .line 948
    :catch_f
    move-exception v0

    .line 949
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "air volume onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 1063
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x15400500 -> :sswitch_f
        0x15400501 -> :sswitch_e
        0x15400508 -> :sswitch_d
        0x15400513 -> :sswitch_c
        0x15600503 -> :sswitch_b
        0x21401a04 -> :sswitch_a
        0x21401a0d -> :sswitch_9
        0x21401a1b -> :sswitch_8
        0x21401a26 -> :sswitch_7
        0x21401a27 -> :sswitch_6
        0x21401a29 -> :sswitch_5
        0x21401a2a -> :sswitch_4
        0x21401c26 -> :sswitch_3
        0x21401c41 -> :sswitch_2
        0x21401c65 -> :sswitch_1
        0x21601a02 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setFrontDefrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "setBlowMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "setAirVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "setRearTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "setPsnSeatVent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "setPsnSeatHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "setTempSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "setDrvTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "setAcMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "setColdHeatNature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v0, "setDrvSeatVent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_b
    const-string v0, "setDrvSeatHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_c
    const-string v0, "setAutoMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "setPsnTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_e
    const-string v0, "setEcoStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_f
    const-string v0, "setPowerStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_10
    const-string v0, "setOutRearMirrorHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_11
    const-string v0, "setCirculationMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2d

    .line 387
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v3, "xp_bcm"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 388
    .local v0, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_3

    .line 390
    if-eqz p2, :cond_2

    :try_start_0
    array-length v3, p2

    if-lez v3, :cond_2

    .line 391
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 392
    .local v3, "status":Z
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmBackMirrorHeatMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v3    # "status":Z
    goto :goto_3

    .line 394
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set mirror heat, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    goto :goto_4

    .line 398
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_3
    const-string v1, "AirConditionManager"

    const-string v3, "set mirror heat, get CarBcmManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_4
    goto/16 :goto_2d

    .line 372
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 373
    .local v0, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_6

    .line 375
    if-eqz p2, :cond_5

    :try_start_1
    array-length v3, p2

    if-lez v3, :cond_5

    .line 376
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 377
    .restart local v3    # "status":Z
    if-eqz v3, :cond_4

    goto :goto_5

    :cond_4
    move v1, v2

    :goto_5
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacFrontDefrostMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 377
    .end local v3    # "status":Z
    goto :goto_6

    .line 379
    :catch_1
    move-exception v1

    .line 380
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set hva defrost, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_6
    goto :goto_7

    .line 383
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_6
    const-string v1, "AirConditionManager"

    const-string v3, "set hvac defrost, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_7
    goto/16 :goto_2d

    .line 357
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 358
    .local v0, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_8

    .line 360
    if-eqz p2, :cond_7

    :try_start_2
    array-length v1, p2

    if-lez v1, :cond_7

    .line 361
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 362
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setPassengerSeatBlowLevel(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 362
    .end local v1    # "level":I
    goto :goto_8

    .line 364
    :catch_2
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set psn seat vent, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_8
    goto :goto_9

    .line 368
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_8
    const-string v1, "AirConditionManager"

    const-string v3, "set psn seat vent, get CarBcmManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_9
    goto/16 :goto_2d

    .line 342
    :pswitch_3
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 343
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_a

    .line 345
    if-eqz p2, :cond_9

    :try_start_3
    array-length v1, p2

    if-lez v1, :cond_9

    .line 346
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 347
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmPsnSeatHeatLevel(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 347
    .end local v1    # "level":I
    goto :goto_a

    .line 349
    :catch_3
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set psn seat heat, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_a
    goto :goto_b

    .line 353
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_a
    const-string v1, "AirConditionManager"

    const-string v3, "set psn seat heat, get CarBcmManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_b
    goto/16 :goto_2d

    .line 327
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 328
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_c

    .line 330
    if-eqz p2, :cond_b

    :try_start_4
    array-length v1, p2

    if-lez v1, :cond_b

    .line 331
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 332
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatBlowLevel(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 332
    .end local v1    # "level":I
    goto :goto_c

    .line 334
    :catch_4
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set drv seat vent, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_c
    goto :goto_d

    .line 338
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_c
    const-string v1, "AirConditionManager"

    const-string v3, "set drv seat vent, get CarBcmManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_d
    goto/16 :goto_2d

    .line 312
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 313
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_e

    .line 315
    if-eqz p2, :cond_d

    :try_start_5
    array-length v1, p2

    if-lez v1, :cond_d

    .line 316
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/bcm/CarBcmManager;->setBcmSeatHeatLevel(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 317
    .end local v1    # "level":I
    goto :goto_e

    .line 319
    :catch_5
    move-exception v1

    .line 320
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set drv seat heat, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_e
    goto :goto_f

    .line 323
    .restart local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_e
    const-string v1, "AirConditionManager"

    const-string v3, "set drv seat heat, get CarBcmManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .end local v0    # "manager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_f
    goto/16 :goto_2d

    .line 297
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 298
    .local v0, "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_10

    .line 300
    if-eqz p2, :cond_f

    :try_start_6
    array-length v1, p2

    if-lez v1, :cond_f

    .line 301
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 302
    .local v1, "status":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindBlowMode(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 302
    .end local v1    # "status":I
    goto :goto_10

    .line 304
    :catch_6
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set blow mode, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_10
    goto :goto_11

    .line 308
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_10
    const-string v1, "AirConditionManager"

    const-string v3, "set blow mode, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_11
    goto/16 :goto_2d

    .line 282
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 283
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_13

    .line 285
    if-eqz p2, :cond_12

    :try_start_7
    array-length v3, p2

    if-lez v3, :cond_12

    .line 286
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 287
    .restart local v3    # "status":Z
    if-eqz v3, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setEconMode(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 287
    .end local v3    # "status":Z
    goto :goto_13

    .line 289
    :catch_7
    move-exception v1

    .line 290
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set eco, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_12
    :goto_13
    goto :goto_14

    .line 293
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_13
    const-string v1, "AirConditionManager"

    const-string v3, "set eco, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_14
    goto/16 :goto_2d

    .line 267
    :pswitch_8
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 268
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_15

    .line 270
    if-eqz p2, :cond_14

    :try_start_8
    array-length v1, p2

    if-lez v1, :cond_14

    .line 271
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "mode":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacCirculationMode(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 272
    .end local v1    # "mode":I
    goto :goto_15

    .line 274
    :catch_8
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set circulation mode, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_15
    goto :goto_16

    .line 278
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_15
    const-string v1, "AirConditionManager"

    const-string v3, "set circulation mode, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_16
    goto/16 :goto_2d

    .line 252
    :pswitch_9
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 253
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_18

    .line 255
    if-eqz p2, :cond_17

    :try_start_9
    array-length v3, p2

    if-lez v3, :cond_17

    .line 256
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 257
    .restart local v3    # "status":Z
    if-eqz v3, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempLeftSyncMode(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 257
    .end local v3    # "status":Z
    goto :goto_18

    .line 259
    :catch_9
    move-exception v1

    .line 260
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set temp sync, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_18
    goto :goto_19

    .line 263
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_18
    const-string v1, "AirConditionManager"

    const-string v3, "set temp sync, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_19
    goto/16 :goto_2d

    .line 238
    :pswitch_a
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 239
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_1a

    .line 241
    if-eqz p2, :cond_19

    :try_start_a
    array-length v1, p2

    if-lez v1, :cond_19

    .line 242
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_1a

    .line 244
    :catch_a
    move-exception v1

    .line 245
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set rear temp, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_19
    :goto_1a
    goto :goto_1b

    .line 248
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_1a
    const-string v1, "AirConditionManager"

    const-string v3, "set rear temp, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_1b
    goto/16 :goto_2d

    .line 223
    :pswitch_b
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 224
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_1c

    .line 226
    if-eqz p2, :cond_1b

    :try_start_b
    array-length v1, p2

    if-lez v1, :cond_1b

    .line 227
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 228
    .local v1, "temp":F
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempPsnValue(F)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 228
    .end local v1    # "temp":F
    goto :goto_1c

    .line 230
    :catch_b
    move-exception v1

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set psn temp, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1b
    :goto_1c
    goto :goto_1d

    .line 234
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_1c
    const-string v1, "AirConditionManager"

    const-string v3, "set psn temp, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_1d
    goto/16 :goto_2d

    .line 208
    :pswitch_c
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 209
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_1e

    .line 211
    if-eqz p2, :cond_1d

    :try_start_c
    array-length v1, p2

    if-lez v1, :cond_1d

    .line 212
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 213
    .local v1, "temp":F
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempDriverValue(F)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 213
    .end local v1    # "temp":F
    goto :goto_1e

    .line 215
    :catch_c
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set drv temp, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_1e
    goto :goto_1f

    .line 219
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_1e
    const-string v1, "AirConditionManager"

    const-string v3, "set drv temp, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_1f
    goto/16 :goto_2d

    .line 193
    :pswitch_d
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 194
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_20

    .line 196
    if-eqz p2, :cond_1f

    :try_start_d
    array-length v1, p2

    if-lez v1, :cond_1f

    .line 197
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 198
    .local v1, "volume":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacWindSpeedLevel(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 198
    .end local v1    # "volume":I
    goto :goto_20

    .line 200
    :catch_d
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set air volume, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1f
    :goto_20
    goto :goto_21

    .line 204
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_20
    const-string v1, "AirConditionManager"

    const-string v3, "set air volume, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_21
    goto/16 :goto_2d

    .line 178
    :pswitch_e
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 179
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_23

    .line 181
    if-eqz p2, :cond_22

    :try_start_e
    array-length v3, p2

    if-lez v3, :cond_22

    .line 182
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 183
    .restart local v3    # "status":Z
    if-eqz v3, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacTempAcMode(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 183
    .end local v3    # "status":Z
    goto :goto_23

    .line 185
    :catch_e
    move-exception v1

    .line 186
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set ac, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_22
    :goto_23
    goto :goto_24

    .line 189
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_23
    const-string v1, "AirConditionManager"

    const-string v3, "set ac, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_24
    goto/16 :goto_2d

    .line 163
    :pswitch_f
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 164
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_25

    .line 166
    if-eqz p2, :cond_24

    :try_start_f
    array-length v1, p2

    if-lez v1, :cond_24

    .line 167
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 168
    .local v1, "mode":I
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setAcHeatNatureButtonSt(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 168
    .end local v1    # "mode":I
    goto :goto_25

    .line 170
    :catch_f
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set coldHeatNature, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_24
    :goto_25
    goto :goto_26

    .line 174
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_25
    const-string v1, "AirConditionManager"

    const-string v3, "set coldHeatNature, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_26
    goto/16 :goto_2d

    .line 148
    :pswitch_10
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 149
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_28

    .line 151
    if-eqz p2, :cond_27

    :try_start_10
    array-length v3, p2

    if-lez v3, :cond_27

    .line 152
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 153
    .restart local v3    # "status":Z
    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacAutoMode(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 153
    .end local v3    # "status":Z
    goto :goto_28

    .line 155
    :catch_10
    move-exception v1

    .line 156
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set auto, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_27
    :goto_28
    goto :goto_29

    .line 159
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_28
    const-string v1, "AirConditionManager"

    const-string v3, "set auto, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_29
    goto :goto_2d

    .line 133
    :pswitch_11
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v3, "hvac"

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    .line 134
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    if-eqz v0, :cond_2b

    .line 136
    if-eqz p2, :cond_2a

    :try_start_11
    array-length v3, p2

    if-lez v3, :cond_2a

    .line 137
    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 138
    .restart local v3    # "status":Z
    if-eqz v3, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setHvacPowerMode(I)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 138
    .end local v3    # "status":Z
    goto :goto_2b

    .line 140
    :catch_11
    move-exception v1

    .line 141
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "AirConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set power, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2a
    :goto_2b
    goto :goto_2c

    .line 144
    .restart local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :cond_2b
    const-string v1, "AirConditionManager"

    const-string v3, "set power, get CarHvacManager null"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .end local v0    # "manager":Landroid/car/hardware/hvac/CarHvacManager;
    :goto_2c
    nop

    .line 404
    :goto_2d
    return v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f6720b8 -> :sswitch_11
        -0x7ecca241 -> :sswitch_10
        -0x757e986b -> :sswitch_f
        -0x75243b5f -> :sswitch_e
        -0x5f946983 -> :sswitch_d
        -0x33af458c -> :sswitch_c
        -0xd4cfe65 -> :sswitch_b
        -0xd469fa0 -> :sswitch_a
        -0xaa18a43 -> :sswitch_9
        0x36a2fe7 -> :sswitch_8
        0x245cb2da -> :sswitch_7
        0x27c26711 -> :sswitch_6
        0x3f915bbe -> :sswitch_5
        0x3f97ba83 -> :sswitch_4
        0x43a23e1a -> :sswitch_3
        0x4ca0dec2 -> :sswitch_2
        0x500252f7 -> :sswitch_1
        0x687731fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getDrvSeatVent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "getDrvSeatHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "getBlowMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "getCirculationMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "getRearTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "getTempSyncSupport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "getFrontDefrost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "getEcoStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "getColdHeatNature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "getPsnTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "getAcMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "getSupportOutRearMirrorHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_c
    const-string v0, "getPowerStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_d
    const-string v0, "getAirVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_e
    const-string v0, "getInnerPm25"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_f
    const-string v0, "getAutoMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_10
    const-string v0, "getDrvTemp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_11
    const-string v0, "getPsnSeatVent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_12
    const-string v0, "getPsnSeatHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_13
    const-string v0, "getOutRearMirrorHeat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_14
    const-string v0, "getAirVolumeDistrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 470
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getSupportMirrorHeat([Ljava/lang/String;)V

    .line 471
    goto :goto_2

    .line 467
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getTempSyncSupport([Ljava/lang/String;)V

    .line 468
    goto :goto_2

    .line 464
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getInnerPm25([Ljava/lang/String;)V

    .line 465
    goto :goto_2

    .line 461
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getRearMirrorHeat([Ljava/lang/String;)V

    .line 462
    goto :goto_2

    .line 458
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getFrontDefrost([Ljava/lang/String;)V

    .line 459
    goto :goto_2

    .line 455
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getPsnSeatVentLevel([Ljava/lang/String;)V

    .line 456
    goto :goto_2

    .line 452
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getPsnSeatHeatLevel([Ljava/lang/String;)V

    .line 453
    goto :goto_2

    .line 449
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getDrvSeatVentLevel([Ljava/lang/String;)V

    .line 450
    goto :goto_2

    .line 446
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getDrvSeatHeatLevel([Ljava/lang/String;)V

    .line 447
    goto :goto_2

    .line 443
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getBlowMode([Ljava/lang/String;)V

    .line 444
    goto :goto_2

    .line 440
    :pswitch_a
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getEcoMode([Ljava/lang/String;)V

    .line 441
    goto :goto_2

    .line 437
    :pswitch_b
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getCirculationMode([Ljava/lang/String;)V

    .line 438
    goto :goto_2

    .line 434
    :pswitch_c
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirRearTemp([Ljava/lang/String;)V

    .line 435
    goto :goto_2

    .line 431
    :pswitch_d
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirPsnTemp([Ljava/lang/String;)V

    .line 432
    goto :goto_2

    .line 428
    :pswitch_e
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirDrvTemp([Ljava/lang/String;)V

    .line 429
    goto :goto_2

    .line 425
    :pswitch_f
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirVolumeDistrict([Ljava/lang/String;)V

    .line 426
    goto :goto_2

    .line 422
    :pswitch_10
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirVolume([Ljava/lang/String;)V

    .line 423
    goto :goto_2

    .line 419
    :pswitch_11
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirAcStatus([Ljava/lang/String;)V

    .line 420
    goto :goto_2

    .line 416
    :pswitch_12
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirColdHeatNature([Ljava/lang/String;)V

    .line 417
    goto :goto_2

    .line 413
    :pswitch_13
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirAutoStatus([Ljava/lang/String;)V

    .line 414
    goto :goto_2

    .line 410
    :pswitch_14
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->getAirPowerStatus([Ljava/lang/String;)V

    .line 411
    nop

    .line 475
    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x65c37804 -> :sswitch_14
        -0x5a62aeb5 -> :sswitch_13
        -0x56d417b6 -> :sswitch_12
        -0x56cdb8f1 -> :sswitch_11
        -0x4f149a9a -> :sswitch_10
        -0x2e67a698 -> :sswitch_f
        -0x200c5e40 -> :sswitch_e
        -0xfb2e1b2 -> :sswitch_d
        -0xbe40bdf -> :sswitch_c
        -0xd52c98 -> :sswitch_b
        0x1034fbdb -> :sswitch_a
        0x2cfa4909 -> :sswitch_9
        0x2d680db1 -> :sswitch_8
        0x2e88042d -> :sswitch_7
        0x322e36f0 -> :sswitch_6
        0x36d4320a -> :sswitch_5
        0x48e9dd0e -> :sswitch_4
        0x49c245d4 -> :sswitch_3
        0x5549f1eb -> :sswitch_2
        0x5c4d8e27 -> :sswitch_1
        0x5c53ecec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 93
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 95
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 110
    const-string v0, "dump:AirConditionManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    if-nez p2, :cond_0

    .line 112
    const-string v0, "please input params!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 116
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x364492

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "test"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_3
    const-string v0, "do test"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    return-void

    .line 128
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 72
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->carHvacCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 73
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->carBcmCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 74
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->MODULE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer;->addModuleListener(Ljava/lang/String;Lcom/xiaopeng/xuiservice/opensdk/manager/ResourceManagerServer$ResourceListener;)V

    .line 75
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 79
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->handleIoControl(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 86
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onResourceRelease(Ljava/lang/String;)I
    .locals 3
    .param p1, "resourceType"    # Ljava/lang/String;

    .line 1073
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceRelease,type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const/4 v0, 0x0

    return v0
.end method

.method public onResourceRequest(Lcom/car/opensdk/resourcemanager/CarResourceInfo;)I
    .locals 3
    .param p1, "info"    # Lcom/car/opensdk/resourcemanager/CarResourceInfo;

    .line 1067
    const-string v0, "AirConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResourceRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const/4 v0, 0x0

    return v0
.end method

.method public removeListener()V
    .locals 2

    .line 99
    const-string v0, "AirConditionManager"

    const-string v1, "remove listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/AirConditionManager;->mPipeListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 101
    return-void
.end method
