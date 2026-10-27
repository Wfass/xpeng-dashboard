.class public Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
.super Ljava/lang/Object;
.source "AppStoreEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$AppStoreEventManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppStoreEventManager"

.field private static final notifyPackageName:Ljava/lang/String; = "com.xiaopeng.appstore"


# instance fields
.field private lastGearLevel:I

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->lastGearLevel:I

    .line 17
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;-><init>(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 29
    new-instance v0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$2;-><init>(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$1;

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private addCanSignalListener()V
    .locals 2

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 57
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 58
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;
    .locals 1

    .line 48
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager$AppStoreEventManagerHolder;->access$200()Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    move-result-object v0

    return-object v0
.end method

.method private handlePropertyChange(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 61
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 62
    .local v0, "propertyId":I
    const v1, 0x21401205

    if-eq v0, v1, :cond_2

    const v1, 0x21401409

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 65
    .local v2, "status":I
    const-string v3, "AppStoreEventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##ID_MCU_IG_STATUS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 67
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v1

    const-string v4, "com.xiaopeng.appstore"

    invoke-virtual {v1, v4, v3}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    .end local v2    # "status":I
    .end local v3    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 76
    .local v1, "gear":I
    const-string v2, "AppStoreEventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gear changed to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",lastGearLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->lastGearLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    iget v3, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->lastGearLevel:I

    if-eq v3, v1, :cond_3

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 79
    .restart local v3    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v2

    const-string v4, "com.xiaopeng.appstore"

    invoke-virtual {v2, v4, v3}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyApp(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    .end local v3    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iput v1, p0, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->lastGearLevel:I

    .line 84
    .end local v1    # "gear":I
    nop

    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->addCanSignalListener()V

    .line 53
    return-void
.end method
