.class public Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "CarConditionManager.java"


# static fields
.field private static final MODULE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CarConditionManager"

.field private static instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

.field private static mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;


# instance fields
.field private carListenerAdd:Z

.field private final mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private final mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

.field private final mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private final mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private final mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

.field private final mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/car/opensdk/vehicle/car/ICarCondition;->MODULE_NAME:Ljava/lang/String;

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    .line 27
    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 30
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$1;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 43
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$2;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$3;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$4;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 81
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$5;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 93
    new-instance v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager$6;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->handleCarPropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private carListenersAdd()V
    .locals 3

    .line 1045
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carListenersAdd,add="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    if-nez v0, :cond_0

    .line 1047
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    .line 1048
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 1049
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1050
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1051
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 1052
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V

    .line 1053
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 1055
    :cond_0
    const-string v0, "CarConditionManager"

    const-string v1, "carListenersAdd done"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method private carListenersRemove()V
    .locals 3

    .line 1059
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carListenersRemove,add="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    if-eqz v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenerAdd:Z

    .line 1062
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 1063
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 1064
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 1065
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 1066
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarTpmsEventCallback:Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V

    .line 1067
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mCarEpsEventCallback:Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 1069
    :cond_0
    const-string v0, "CarConditionManager"

    const-string v1, "carListenersRemove done"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method private getAccPedalValue([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "value":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 725
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 727
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getAccPedalStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 730
    :goto_0
    goto :goto_1

    .line 728
    :catch_0
    move-exception v2

    .line 729
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAccPedalValue, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 732
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getAccPedalValue, get CarVcuManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 736
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccPedalValue, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 739
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccPedalValue, value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_2
    return-void
.end method

.method private getBatterySoc([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "percent":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 451
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getElectricityPercent()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 456
    :goto_0
    goto :goto_1

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBatterySoc e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 458
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getBatterySoc, get CarVcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 462
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatterySoc, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 465
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatterySoc, percent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_2
    return-void
.end method

.method private getBeltStatus([Ljava/lang/String;)V
    .locals 8
    .param p1, "results"    # [Ljava/lang/String;

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "belt":[I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_srs"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/srs/CarSrsManager;

    .line 671
    .local v1, "manager":Landroid/car/hardware/srs/CarSrsManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 673
    const/4 v3, 0x7

    :try_start_0
    new-array v3, v3, [I

    move-object v0, v3

    .line 674
    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getDriverBeltStatus()I

    move-result v3

    aput v3, v0, v2

    .line 675
    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getPsnBeltStatus()I

    move-result v3

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 676
    const/4 v3, 0x2

    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getBackLeftBeltStatus()I

    move-result v4

    aput v4, v0, v3

    .line 677
    const/4 v3, 0x3

    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getBackMiddleBeltStatus()I

    move-result v4

    aput v4, v0, v3

    .line 678
    const/4 v3, 0x4

    invoke-virtual {v1}, Landroid/car/hardware/srs/CarSrsManager;->getBackRightBeltStatus()I

    move-result v4

    aput v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 679
    :catch_0
    move-exception v3

    .line 680
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CarConditionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBeltStatus, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 683
    :cond_0
    const-string v3, "CarConditionManager"

    const-string v4, "getBeltStatus, get CarSrsManager is null"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 687
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBeltStatus result len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v3, 0x0

    .line 689
    .local v3, "i":I
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_2

    aget v5, v0, v2

    .line 690
    .local v5, "val":I
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 691
    add-int/lit8 v6, v3, 0x1

    .line 691
    .local v6, "i":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v3

    .line 689
    .end local v3    # "i":I
    .end local v5    # "val":I
    move v3, v6

    .line 689
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 694
    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 695
    :cond_3
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBeltStatus, belt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 695
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :goto_3
    return-void
.end method

.method private getBonnetStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 561
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 563
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->isBcmBonnetOpened()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 566
    :goto_0
    goto :goto_1

    .line 564
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBonnetStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 568
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getBonnetStatus, get CarBcmManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 572
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBonnetStatus result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 575
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBonnetStatus status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :goto_2
    return-void
.end method

.method private getBrakePedalStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "status":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 747
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getBreakPedalStatus()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 752
    :goto_0
    goto :goto_1

    .line 750
    :catch_0
    move-exception v2

    .line 751
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrakePedalStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 754
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getBrakePedalStatus, get CarVcuManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_1
    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 758
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrakePedalStatus, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 761
    :cond_1
    const-string v2, "CarConditionManager"

    const-string v3, "getBrakePedalStatus, results is empty"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_2
    return-void
.end method

.method private getCarSpeed([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "speed":Ljava/lang/Float;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 377
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 382
    :goto_0
    goto :goto_1

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarSpeed, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 384
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getCarSpeed, get CarVcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 388
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarSpeed, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 391
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarSpeed, speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 391
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_2
    return-void
.end method

.method private getChargePortStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 581
    const/4 v0, 0x0

    .line 582
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 583
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 585
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->getChargePortStatus(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 588
    :goto_0
    goto :goto_1

    .line 586
    :catch_0
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChargePortStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 590
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getChargePortStatus, get CarBcmManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 594
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargePortStatus result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 597
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChargePortStatus status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 597
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_2
    return-void
.end method

.method private getDoorStatus([Ljava/lang/String;)V
    .locals 8
    .param p1, "results"    # [Ljava/lang/String;

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "stats":[I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 473
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 475
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getDoorsState()[I

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 478
    :goto_0
    goto :goto_1

    .line 476
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDoorStatus,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 480
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getDoorStatus,get CarBcmManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v2, p1

    array-length v3, v0

    if-lt v2, v3, :cond_3

    .line 484
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorStatus,result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "i":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_2

    aget v5, v0, v4

    .line 487
    .local v5, "val":I
    array-length v6, p1

    if-ge v2, v6, :cond_1

    .line 488
    add-int/lit8 v6, v2, 0x1

    .line 488
    .local v6, "i":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v2

    .line 486
    .end local v2    # "i":I
    .end local v5    # "val":I
    move v2, v6

    .line 486
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 491
    .end local v2    # "i":I
    :cond_2
    goto :goto_3

    .line 492
    :cond_3
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorStatus, stats:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :goto_3
    return-void
.end method

.method private getDrivingDistance([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "distance":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 399
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 401
    const/4 v3, 0x1

    .line 402
    .local v3, "mileageMode":I
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-lez v4, :cond_0

    .line 403
    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 410
    .end local v3    # "mileageMode":I
    :catch_0
    move-exception v3

    goto :goto_2

    .line 405
    .restart local v3    # "mileageMode":I
    :cond_0
    :goto_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 406
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getWltpAvailableDrivingDistance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    .line 408
    :cond_1
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getAvalibleDrivingDistance()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 412
    .end local v3    # "mileageMode":I
    :goto_1
    goto :goto_3

    .line 410
    :goto_2
    nop

    .line 411
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CarConditionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDrivingDistance, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 414
    :cond_2
    const-string v3, "CarConditionManager"

    const-string v4, "getDrivingDistance, get CarVcuManager null!"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_3
    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    array-length v3, p2

    if-lez v3, :cond_3

    .line 418
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrivingDistance, result len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_4

    .line 421
    :cond_3
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrivingDistance, distance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_4
    return-void
.end method

.method private getEnduranceMileageMode([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "mode":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 429
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 431
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getEnduranceMileageMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 434
    :goto_0
    goto :goto_1

    .line 432
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMileageMode e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 436
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getMileageMode, get CarVcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 440
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMileageMode, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 443
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMileageMode, mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 443
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_2
    return-void
.end method

.method private getGearLevel([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "level":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 355
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 360
    :goto_0
    goto :goto_1

    .line 358
    :catch_0
    move-exception v2

    .line 359
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGearLevel,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 362
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getGearLevel, get CarVcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 366
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGearLevel, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 369
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGearLevel, level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_2
    return-void
.end method

.method private getIgStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_mcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 311
    .local v1, "manager":Landroid/car/hardware/mcu/CarMcuManager;
    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 316
    :goto_0
    goto :goto_1

    .line 314
    :catch_0
    move-exception v2

    .line 315
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIgStatus,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 318
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getIgStatus, get CarMcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 322
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatus, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 325
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatus, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
    .locals 2

    .line 116
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    if-nez v0, :cond_1

    .line 117
    const-class v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    monitor-enter v0

    .line 118
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    .line 121
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->instance:Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;

    return-object v0
.end method

.method private getRearTrunkStatus([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 539
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v1, :cond_0

    .line 541
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getTrunk()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 544
    :goto_0
    goto :goto_1

    .line 542
    :catch_0
    move-exception v2

    .line 543
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTrunkStatus, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 546
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getTrunkStatus, get CarBcmManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 550
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrunkStatus, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 553
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTrunkStatus status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :goto_2
    return-void
.end method

.method private getSeatOccupied([Ljava/lang/String;)V
    .locals 9
    .param p1, "results"    # [Ljava/lang/String;

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "occupied":[I
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 636
    .local v1, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    const-string/jumbo v3, "xp_srs"

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/srs/CarSrsManager;

    .line 637
    .local v2, "srsManager":Landroid/car/hardware/srs/CarSrsManager;
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 639
    const/4 v4, 0x7

    :try_start_0
    new-array v4, v4, [I

    move-object v0, v4

    .line 640
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v4

    aput v4, v0, v3

    .line 641
    invoke-virtual {v2}, Landroid/car/hardware/srs/CarSrsManager;->getPsnOnSeat()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 642
    const/4 v4, 0x2

    invoke-virtual {v2}, Landroid/car/hardware/srs/CarSrsManager;->getRearLeftSeatOccupancyStatus()I

    move-result v5

    aput v5, v0, v4

    .line 643
    const/4 v4, 0x3

    invoke-virtual {v2}, Landroid/car/hardware/srs/CarSrsManager;->getRearMiddleSeatOccupancyStatus()I

    move-result v5

    aput v5, v0, v4

    .line 644
    const/4 v4, 0x4

    invoke-virtual {v2}, Landroid/car/hardware/srs/CarSrsManager;->getRearRightSeatOccupancyStatus()I

    move-result v5

    aput v5, v0, v4

    .line 645
    const/4 v4, 0x5

    aput v3, v0, v4

    .line 646
    const/4 v4, 0x6

    aput v3, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    :catch_0
    move-exception v4

    .line 648
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CarConditionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSeatOccupied, e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 651
    :cond_0
    const-string v4, "CarConditionManager"

    const-string v5, "getSeatOccupied, get manager is null"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v4, p1

    if-lez v4, :cond_3

    .line 655
    const-string v4, "CarConditionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSeatOccupied result len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const/4 v4, 0x0

    .line 657
    .local v4, "i":I
    array-length v5, v0

    :goto_2
    if-ge v3, v5, :cond_2

    aget v6, v0, v3

    .line 658
    .local v6, "val":I
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 659
    add-int/lit8 v7, v4, 0x1

    .line 659
    .local v7, "i":I
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p1, v4

    .line 657
    .end local v4    # "i":I
    .end local v6    # "val":I
    move v4, v7

    .line 657
    .end local v7    # "i":I
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 662
    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    .line 663
    :cond_3
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSeatOccupied, occupied:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 663
    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    :goto_3
    return-void
.end method

.method private getSysReady([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "status":Ljava/lang/Integer;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 333
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_0

    .line 335
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getEvSysReady()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 338
    :goto_0
    goto :goto_1

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSysReady,e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 340
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getSysReady, get CarVcuManager null!"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 344
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSysReady, result len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 347
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSysReady, status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_2
    return-void
.end method

.method private getTirePressure([Ljava/lang/String;)V
    .locals 8
    .param p1, "results"    # [Ljava/lang/String;

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, "pressure":[F
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_tpms"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/tpms/CarTpmsManager;

    .line 605
    .local v1, "manager":Landroid/car/hardware/tpms/CarTpmsManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 607
    const/4 v3, 0x4

    :try_start_0
    new-array v4, v3, [F

    move-object v0, v4

    .line 608
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v5

    aput v5, v0, v2

    .line 609
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v6

    aput v6, v0, v4

    .line 610
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v6

    aput v6, v0, v5

    .line 611
    invoke-virtual {v1, v3}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v3

    aput v3, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v3

    .line 613
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CarConditionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTirePressure e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 616
    :cond_0
    const-string v3, "CarConditionManager"

    const-string v4, "getTirePressure get CarBcmManager null!"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    array-length v3, p1

    if-lez v3, :cond_3

    .line 620
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTirePressure, result len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v3, 0x0

    .line 622
    .local v3, "i":I
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_2

    aget v5, v0, v2

    .line 623
    .local v5, "val":F
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 624
    add-int/lit8 v6, v3, 0x1

    .line 624
    .local v6, "i":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v3

    .line 622
    .end local v3    # "i":I
    .end local v5    # "val":F
    move v3, v6

    .line 622
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 627
    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    .line 628
    :cond_3
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTirePressure, pressure:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 628
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :goto_3
    return-void
.end method

.method private getWheelAngle([Ljava/lang/String;)V
    .locals 6
    .param p1, "results"    # [Ljava/lang/String;

    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "angle":Ljava/lang/Float;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_eps"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/eps/CarEpsManager;

    .line 703
    .local v1, "manager":Landroid/car/hardware/eps/CarEpsManager;
    if-eqz v1, :cond_0

    .line 705
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/eps/CarEpsManager;->getSteeringAngle()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 708
    :goto_0
    goto :goto_1

    .line 706
    :catch_0
    move-exception v2

    .line 707
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWheelAngle, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 710
    :cond_0
    const-string v2, "CarConditionManager"

    const-string v3, "getWheelAngle, get CarEpsManager null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :goto_1
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    .line 714
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelAngle, results len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    goto :goto_2

    .line 717
    :cond_1
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelAngle, angle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_2
    return-void
.end method

.method private getWindowPos([Ljava/lang/String;)V
    .locals 8
    .param p1, "results"    # [Ljava/lang/String;

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "pos":[F
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/bcm/CarBcmManager;

    .line 500
    .local v1, "manager":Landroid/car/hardware/bcm/CarBcmManager;
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 502
    const/4 v3, 0x4

    :try_start_0
    new-array v3, v3, [F

    move-object v0, v3

    .line 503
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isProductSeriesD()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    .line 504
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFldmWinPstState()F

    move-result v3

    aput v3, v0, v2

    .line 505
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getFrdmWinPstState()F

    move-result v3

    aput v3, v0, v6

    .line 506
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getRldmWinPstState()F

    move-result v3

    aput v3, v0, v5

    .line 507
    invoke-virtual {v1}, Landroid/car/hardware/bcm/CarBcmManager;->getRrdmWinPstState()F

    move-result v3

    aput v3, v0, v4

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v1, v2}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowMovePosition(I)F

    move-result v3

    aput v3, v0, v2

    .line 510
    invoke-virtual {v1, v6}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowMovePosition(I)F

    move-result v3

    aput v3, v0, v6

    .line 511
    invoke-virtual {v1, v5}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowMovePosition(I)F

    move-result v3

    aput v3, v0, v5

    .line 512
    invoke-virtual {v1, v4}, Landroid/car/hardware/bcm/CarBcmManager;->getWindowMovePosition(I)F

    move-result v3

    aput v3, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 514
    :catch_0
    move-exception v3

    .line 515
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "CarConditionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowPos, e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .line 517
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 519
    :cond_1
    const-string v3, "CarConditionManager"

    const-string v4, "getWindowPos, get CarBcmManager null!"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_1
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    array-length v3, p1

    array-length v4, v0

    if-lt v3, v4, :cond_4

    .line 523
    const-string v3, "CarConditionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWindowPos, result len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v3, 0x0

    .line 525
    .local v3, "i":I
    array-length v4, v0

    :goto_2
    if-ge v2, v4, :cond_3

    aget v5, v0, v2

    .line 526
    .local v5, "val":F
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 527
    add-int/lit8 v6, v3, 0x1

    .line 527
    .local v6, "i":I
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v3

    .line 525
    .end local v3    # "i":I
    .end local v5    # "val":F
    move v3, v6

    .line 525
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 530
    .end local v3    # "i":I
    :cond_3
    goto :goto_3

    .line 531
    :cond_4
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowPos, pos:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",results:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 531
    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_3
    return-void
.end method

.method private handleCarPropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 11
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 766
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCarPropertyChange,v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    if-nez v0, :cond_0

    .line 768
    return-void

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_8

    .line 1005
    :sswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1006
    .local v0, "angle":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 1007
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1008
    .local v1, "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string/jumbo v4, "wheelAngle"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v0    # "angle":Ljava/lang/Float;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_1
    goto/16 :goto_8

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wheelAngle onChangeEvent e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 936
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_tpms"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tpms/CarTpmsManager;

    .line 937
    .local v0, "tpmsManager":Landroid/car/hardware/tpms/CarTpmsManager;
    if-eqz v0, :cond_2

    .line 938
    new-array v1, v6, [Ljava/lang/String;

    .line 939
    .local v1, "pressure":[Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 940
    invoke-virtual {v0, v5}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 941
    invoke-virtual {v0, v4}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 942
    invoke-virtual {v0, v6}, Landroid/car/hardware/tpms/CarTpmsManager;->getTirePressureValue(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 943
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "tirePressure"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 944
    .end local v1    # "pressure":[Ljava/lang/String;
    goto :goto_0

    .line 945
    :cond_2
    const-string v1, "CarConditionManager"

    const-string v2, "tpms onChangeEvent manager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 949
    .end local v0    # "tpmsManager":Landroid/car/hardware/tpms/CarTpmsManager;
    :goto_0
    goto/16 :goto_8

    .line 947
    :catch_1
    move-exception v0

    .line 948
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tpms onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 874
    :sswitch_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 875
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    if-eqz v0, :cond_4

    .line 877
    :try_start_2
    new-array v1, v6, [F

    .line 878
    .local v1, "pos":[F
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getFldmWinPstState()F

    move-result v2

    aput v2, v1, v8

    .line 879
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getFrdmWinPstState()F

    move-result v2

    aput v2, v1, v7

    .line 880
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getRldmWinPstState()F

    move-result v2

    aput v2, v1, v5

    .line 881
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getRrdmWinPstState()F

    move-result v2

    aput v2, v1, v4

    .line 882
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 883
    .local v2, "result":[Ljava/lang/String;
    nop

    .line 883
    .local v8, "i":I
    :goto_1
    move v3, v8

    .line 883
    .end local v8    # "i":I
    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 884
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 883
    add-int/lit8 v8, v3, 0x1

    .line 883
    .end local v3    # "i":I
    .restart local v8    # "i":I
    goto :goto_1

    .line 886
    .end local v8    # "i":I
    :cond_3
    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v4, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string/jumbo v5, "windowPos"

    invoke-interface {v3, v4, v5, v2}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 886
    .end local v1    # "pos":[F
    .end local v2    # "result":[Ljava/lang/String;
    goto :goto_2

    .line 887
    :catch_2
    move-exception v1

    .line 888
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CarConditionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "window pos onChangedEvent, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .end local v0    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 891
    .restart local v0    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :cond_4
    const-string v1, "CarConditionManager"

    const-string/jumbo v2, "window pos onChangedEvent, get CarBcmManager null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    .end local v0    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :goto_3
    goto/16 :goto_8

    .line 809
    :sswitch_3
    :try_start_3
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 810
    .local v0, "speed":Ljava/lang/Float;
    if-eqz v0, :cond_5

    .line 811
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 812
    .local v1, "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "carSpeed"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 816
    .end local v0    # "speed":Ljava/lang/Float;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_5
    goto/16 :goto_8

    .line 814
    :catch_3
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car speed onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 857
    :sswitch_4
    :try_start_4
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 858
    .local v0, "array":[Ljava/lang/Integer;
    if-eqz v0, :cond_7

    .line 859
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 860
    .restart local v1    # "result":[Ljava/lang/String;
    nop

    .line 860
    .restart local v8    # "i":I
    :goto_4
    move v2, v8

    .line 860
    .end local v8    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_6

    .line 861
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 860
    add-int/lit8 v8, v2, 0x1

    .line 860
    .end local v2    # "i":I
    .restart local v8    # "i":I
    goto :goto_4

    .line 863
    .end local v8    # "i":I
    :cond_6
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "doorStat"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 867
    .end local v0    # "array":[Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_7
    goto/16 :goto_8

    .line 865
    :catch_4
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "door status onChangeEvent,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 921
    :sswitch_5
    :try_start_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 922
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_8

    .line 923
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 924
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "chargePort"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 928
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_8
    goto/16 :goto_8

    .line 926
    :catch_5
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chargePort onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 909
    :sswitch_6
    :try_start_6
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 910
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_9

    .line 911
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 912
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "bonnetStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 916
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_9
    goto/16 :goto_8

    .line 914
    :catch_6
    move-exception v0

    .line 915
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bonnet onChangEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 984
    :sswitch_7
    :try_start_7
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v9, "xp_srs"

    invoke-virtual {v0, v9}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/srs/CarSrsManager;

    .line 985
    .local v0, "carSrsManager":Landroid/car/hardware/srs/CarSrsManager;
    if-eqz v0, :cond_a

    .line 986
    new-array v3, v3, [Ljava/lang/String;

    .line 987
    .local v3, "belt":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getDriverBeltStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v8

    .line 988
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getPsnBeltStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v7

    .line 989
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getBackLeftBeltStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 990
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getBackMiddleBeltStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 991
    invoke-virtual {v0}, Landroid/car/hardware/srs/CarSrsManager;->getBackRightBeltStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 992
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 993
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 994
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "beltWarning"

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 995
    .end local v3    # "belt":[Ljava/lang/String;
    goto :goto_5

    .line 996
    :cond_a
    const-string v1, "CarConditionManager"

    const-string v2, "belt warning onChangEvent manager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1000
    .end local v0    # "carSrsManager":Landroid/car/hardware/srs/CarSrsManager;
    :goto_5
    goto/16 :goto_8

    .line 998
    :catch_7
    move-exception v0

    .line 999
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "belt warning onChangEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 897
    :sswitch_8
    :try_start_8
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 898
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_b

    .line 899
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 900
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "trunkStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 904
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_b
    goto/16 :goto_8

    .line 902
    :catch_8
    move-exception v0

    .line 903
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trunk onChangEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 958
    :sswitch_9
    :try_start_9
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v9, "xp_bcm"

    invoke-virtual {v0, v9}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 959
    .local v0, "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v9

    const-string/jumbo v10, "xp_srs"

    invoke-virtual {v9, v10}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v9

    check-cast v9, Landroid/car/hardware/srs/CarSrsManager;

    .line 960
    .local v9, "carSrsManager":Landroid/car/hardware/srs/CarSrsManager;
    if-eqz v0, :cond_c

    .line 961
    new-array v3, v3, [Ljava/lang/String;

    .line 962
    .local v3, "occupied":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getDriverOnSeat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v8

    .line 963
    invoke-virtual {v9}, Landroid/car/hardware/srs/CarSrsManager;->getPsnOnSeat()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v3, v7

    .line 964
    invoke-virtual {v9}, Landroid/car/hardware/srs/CarSrsManager;->getRearLeftSeatOccupancyStatus()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 965
    invoke-virtual {v9}, Landroid/car/hardware/srs/CarSrsManager;->getRearMiddleSeatOccupancyStatus()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 966
    invoke-virtual {v9}, Landroid/car/hardware/srs/CarSrsManager;->getRearRightSeatOccupancyStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 967
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 968
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 969
    sget-object v1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "seatOccupied"

    invoke-interface {v1, v2, v4, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 970
    .end local v3    # "occupied":[Ljava/lang/String;
    goto :goto_6

    .line 971
    :cond_c
    const-string v1, "CarConditionManager"

    const-string v2, "seat occupied onChangEvent manager is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 975
    .end local v0    # "carBcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    .end local v9    # "carSrsManager":Landroid/car/hardware/srs/CarSrsManager;
    :goto_6
    goto/16 :goto_8

    .line 973
    :catch_9
    move-exception v0

    .line 974
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "seat occupied onChangedEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 773
    :sswitch_a
    :try_start_a
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 774
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_d

    .line 775
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 776
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "igStat"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 780
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_d
    goto/16 :goto_8

    .line 778
    :catch_a
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ig status onChangeEvent,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 833
    :sswitch_b
    :try_start_b
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 834
    .local v0, "mode":Ljava/lang/Integer;
    if-eqz v0, :cond_e

    .line 835
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 836
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "enduranceMode"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    .line 840
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_e
    goto/16 :goto_7

    .line 838
    :catch_b
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "driving distance onChangedEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 1017
    :sswitch_c
    :try_start_c
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1018
    .local v0, "accValue":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 1019
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1020
    .local v1, "results":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "accPedal"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    .line 1024
    .end local v0    # "accValue":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    :cond_f
    goto/16 :goto_8

    .line 1022
    :catch_c
    move-exception v0

    .line 1023
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acc pedal onChangeEvent e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 1029
    :sswitch_d
    :try_start_d
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1030
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_10

    .line 1031
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 1032
    .restart local v1    # "results":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "brakeStatus"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 1036
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "results":[Ljava/lang/String;
    :cond_10
    goto/16 :goto_8

    .line 1034
    :catch_d
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "brake status onChangeEvent e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 821
    :sswitch_e
    :try_start_e
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 822
    .local v0, "distance":Ljava/lang/Integer;
    if-eqz v0, :cond_11

    .line 823
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 824
    .local v1, "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "drivingDistance"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    .line 828
    .end local v0    # "distance":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_11
    goto/16 :goto_8

    .line 826
    :catch_e
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "driving distance onChangedEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_8

    .line 785
    :sswitch_f
    :try_start_f
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 786
    .local v0, "status":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    .line 787
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 788
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "sysReady"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    .line 792
    .end local v0    # "status":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_12
    goto/16 :goto_8

    .line 790
    :catch_f
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sys ready onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 797
    :sswitch_10
    :try_start_10
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 798
    .local v0, "level":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    .line 799
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 800
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "gearLevel"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    .line 804
    .end local v0    # "level":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_13
    goto :goto_8

    .line 802
    :catch_10
    move-exception v0

    .line 803
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gear level onChangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 844
    :goto_7
    :sswitch_11
    :try_start_11
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 845
    .local v0, "percent":Ljava/lang/Integer;
    if-eqz v0, :cond_14

    .line 846
    new-array v1, v7, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 847
    .restart local v1    # "result":[Ljava/lang/String;
    sget-object v2, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    sget-object v3, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    const-string v4, "batterySoc"

    invoke-interface {v2, v3, v4, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    .line 851
    .end local v0    # "percent":Ljava/lang/Integer;
    .end local v1    # "result":[Ljava/lang/String;
    :cond_14
    goto :goto_8

    .line 849
    :catch_11
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarConditionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "electricity percent onchangeEvent, e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .end local v0    # "e":Ljava/lang/Exception;
    nop

    .line 1042
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21401202 -> :sswitch_11
        0x21401205 -> :sswitch_10
        0x21401210 -> :sswitch_f
        0x21401211 -> :sswitch_e
        0x21401217 -> :sswitch_d
        0x21401218 -> :sswitch_c
        0x21401257 -> :sswitch_b
        0x21401409 -> :sswitch_a
        0x21401c07 -> :sswitch_9
        0x21401c0a -> :sswitch_8
        0x21401c0c -> :sswitch_7
        0x21401c0d -> :sswitch_7
        0x21401c0e -> :sswitch_7
        0x21401c0f -> :sswitch_7
        0x21401c10 -> :sswitch_7
        0x21401c29 -> :sswitch_6
        0x21401c2a -> :sswitch_5
        0x21401c4f -> :sswitch_9
        0x21401cc8 -> :sswitch_9
        0x21401cc9 -> :sswitch_9
        0x21401cca -> :sswitch_9
        0x21411c19 -> :sswitch_4
        0x21601225 -> :sswitch_3
        0x21601c66 -> :sswitch_2
        0x21601c67 -> :sswitch_2
        0x21601c68 -> :sswitch_2
        0x21601c69 -> :sswitch_2
        0x21601e02 -> :sswitch_1
        0x21601e03 -> :sswitch_1
        0x21601e04 -> :sswitch_1
        0x21601e05 -> :sswitch_1
        0x21602406 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getCarSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "getChargePortStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "getGearLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "getBatterySoc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "getBeltStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "getWheelAngle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "getTirePressureValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "getEnduranceMileageMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "getBonnetStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "getIgStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_a
    const-string v0, "getWindowPos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_b
    const-string v0, "getSysReady"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "getAccPedalValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_d
    const-string v0, "getDoorStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_e
    const-string v0, "getDrivingDistance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v0, "getBrakeStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_10
    const-string v0, "getRearTrunkStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_11
    const-string v0, "getSeatOccupied"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 299
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getBrakePedalStatus([Ljava/lang/String;)V

    .line 301
    goto :goto_2

    .line 295
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getAccPedalValue([Ljava/lang/String;)V

    .line 297
    goto :goto_2

    .line 291
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getWheelAngle([Ljava/lang/String;)V

    .line 293
    goto :goto_2

    .line 287
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getBeltStatus([Ljava/lang/String;)V

    .line 289
    goto :goto_2

    .line 283
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getSeatOccupied([Ljava/lang/String;)V

    .line 285
    goto :goto_2

    .line 279
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getTirePressure([Ljava/lang/String;)V

    .line 281
    goto :goto_2

    .line 275
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getChargePortStatus([Ljava/lang/String;)V

    .line 277
    goto :goto_2

    .line 271
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getBonnetStatus([Ljava/lang/String;)V

    .line 273
    goto :goto_2

    .line 267
    :pswitch_8
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getRearTrunkStatus([Ljava/lang/String;)V

    .line 269
    goto :goto_2

    .line 263
    :pswitch_9
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getWindowPos([Ljava/lang/String;)V

    .line 265
    goto :goto_2

    .line 259
    :pswitch_a
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getDoorStatus([Ljava/lang/String;)V

    .line 261
    goto :goto_2

    .line 255
    :pswitch_b
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getBatterySoc([Ljava/lang/String;)V

    .line 257
    goto :goto_2

    .line 251
    :pswitch_c
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getEnduranceMileageMode([Ljava/lang/String;)V

    .line 253
    goto :goto_2

    .line 247
    :pswitch_d
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getDrivingDistance([Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    goto :goto_2

    .line 243
    :pswitch_e
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getCarSpeed([Ljava/lang/String;)V

    .line 245
    goto :goto_2

    .line 239
    :pswitch_f
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getGearLevel([Ljava/lang/String;)V

    .line 241
    goto :goto_2

    .line 235
    :pswitch_10
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getSysReady([Ljava/lang/String;)V

    .line 237
    goto :goto_2

    .line 231
    :pswitch_11
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->getIgStatus([Ljava/lang/String;)V

    .line 233
    nop

    .line 305
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a14adc7 -> :sswitch_11
        -0x7472abb4 -> :sswitch_10
        -0x51d4fe39 -> :sswitch_f
        -0x4794795a -> :sswitch_e
        -0x2e0762ca -> :sswitch_d
        -0x227c943e -> :sswitch_c
        -0x103c5fb4 -> :sswitch_b
        -0xd81f672 -> :sswitch_a
        -0xbf5c7da -> :sswitch_9
        0x176ff9c4 -> :sswitch_8
        0x2cf2d17c -> :sswitch_7
        0x4aeddaee -> :sswitch_6
        0x4ef0662e -> :sswitch_5
        0x50e254d3 -> :sswitch_4
        0x5d7f7830 -> :sswitch_3
        0x74f0647f -> :sswitch_2
        0x75e5c51d -> :sswitch_1
        0x7a799249 -> :sswitch_0
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

.method public static synthetic lambda$addListener$0(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenersAdd()V

    .line 174
    return-void
.end method

.method public static synthetic lambda$removeListener$1(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V
    .locals 0

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->carListenersRemove()V

    .line 187
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    monitor-enter p0

    .line 169
    :try_start_0
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener, listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sput-object p1, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 171
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$9kC2n9LKZgfffYapMZFFuzoSTKI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$9kC2n9LKZgfffYapMZFFuzoSTKI;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 168
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 208
    const-string v0, "dump:CarConditionManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    if-nez p2, :cond_0

    .line 210
    const-string v0, "please input params!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 214
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

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_3
    const-string v0, "do test"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    return-void

    .line 226
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 197
    sget-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->MODULE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 133
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 144
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

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

    .line 158
    const-string v0, "CarConditionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized removeListener()V
    .locals 2

    monitor-enter p0

    .line 182
    :try_start_0
    const-string v0, "CarConditionManager"

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;->mListener:Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 184
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$_bDUimceMN-iwyiodo3ekZrGHJY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$CarConditionManager$_bDUimceMN-iwyiodo3ekZrGHJY;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/opensdk/manager/CarConditionManager;
    throw v0
.end method
