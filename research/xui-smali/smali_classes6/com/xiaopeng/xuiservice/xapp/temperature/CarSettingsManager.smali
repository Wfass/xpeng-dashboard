.class public Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;
.super Ljava/lang/Object;
.source "CarSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSettingsManager"

.field private static sInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;


# instance fields
.field private mCarApiClient:Landroid/car/Car;

.field private mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

.field private mOnServiceConnectCompleteListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mOnServiceConnectCompleteListenerList:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 55
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarMcuManager:Landroid/car/hardware/mcu/CarMcuManager;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;
    .locals 2

    .line 43
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->sInstance:Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;

    return-object v0
.end method


# virtual methods
.method public addServiceConnectCompleteListener(Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mOnServiceConnectCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mOnServiceConnectCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public getMaxTemperature()I
    .locals 4

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "maxTemperature":I
    const-string v1, "CarSettingsManager"

    const-string v2, "carservice getMaxWindSpeed "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getMaxHavcTemperature()I

    move-result v1

    move v0, v1

    .line 78
    const-string v1, "CarSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carservice getMaxWindSpeed over maxTemperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "CarSettingsManager"

    const-string v3, "getMaxHavcTemperature error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v0
.end method

.method public getMinTemperature()I
    .locals 4

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "minTemperature":I
    const-string v1, "CarSettingsManager"

    const-string v2, "carservice getMaxWindSpeed "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getMinHavcTemperature()I

    move-result v1

    move v0, v1

    .line 64
    const-string v1, "CarSettingsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carservice getMaxWindSpeed over minTemperature:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "CarSettingsManager"

    const-string v3, "getMinHavcTemperature error"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v0
.end method

.method public notifyServiceConnectComplete()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mOnServiceConnectCompleteListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;

    .line 38
    .local v1, "listener":Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;
    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;->onServiceConnectComplete()V

    .line 39
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public removeServiceConnectCompleteListener(Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager$OnServiceConnectCompleteListener;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/temperature/CarSettingsManager;->mOnServiceConnectCompleteListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
