.class public Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.source "FragranceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceManagerHolder;,
        Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;,
        Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;
    }
.end annotation


# static fields
.field private static final CARSVC_STATE_CONNECTED:I = 0x1

.field private static final CARSVC_STATE_DISCONNECTED:I = 0x0

.field private static final IOT_PACKAGE:Ljava/lang/String; = "com.xiaopeng.aiot"

.field private static final STATE_UNINIT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FragranceManager##"

.field private static final mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFeatureCode:Ljava/lang/String;

.field private static final supportLeftOver:Z = false


# instance fields
.field private bMonitorProp:Z

.field private mActiveChanel:I

.field private mCOConcentration:I

.field private mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

.field private volatile mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

.field private mCarServiceState:I

.field private mChannel1LeftOver:I

.field private mChannel2LeftOver:I

.field private mChannel3LeftOver:I

.field private mChannelsType:[I

.field private mConcentration:I

.field private mConnListener:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

.field private mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

.field private mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

.field private mSwitchState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceList:Ljava/util/ArrayList;

    .line 42
    const-string v0, "SFS"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->getFeatureType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFeatureCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 284
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConnListener:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 37
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarServiceState:I

    .line 46
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mSwitchState:I

    .line 47
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    .line 53
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mActiveChanel:I

    .line 54
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConcentration:I

    .line 55
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCOConcentration:I

    .line 56
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannel1LeftOver:I

    .line 57
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannel2LeftOver:I

    .line 58
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannel3LeftOver:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->bMonitorProp:Z

    .line 285
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mSwitchState:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mSwitchState:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->bMonitorProp:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->notifyRawProp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->notifyEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->initChannelTypes()V

    return-void
.end method

.method static synthetic access$1402(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Landroid/car/hardware/hvac/CarHvacManager;)Landroid/car/hardware/hvac/CarHvacManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # Landroid/car/hardware/hvac/CarHvacManager;

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarServiceState:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)[I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mActiveChanel:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mActiveChanel:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->isGearInP()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;[I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # [I

    .line 30
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->formatChannelTypes([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConcentration:I

    return v0
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConcentration:I

    return p1
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    .line 30
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCOConcentration:I

    return v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .param p1, "x1"    # I

    .line 30
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCOConcentration:I

    return p1
.end method

.method private formatChannelTypes([I)Ljava/lang/String;
    .locals 3
    .param p1, "channelsType"    # [I

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 605
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 606
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 607
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 610
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCarHvacManager()V
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-nez v0, :cond_0

    .line 615
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string v1, "hvac"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/hvac/CarHvacManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    .line 616
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarServiceState:I

    .line 620
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    .locals 1

    .line 292
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceManagerHolder;->access$1700()Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;

    move-result-object v0

    return-object v0
.end method

.method private initChannelTypes()V
    .locals 4

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getTypeInChannels()[I

    move-result-object v0

    .line 575
    .local v0, "channelsType":[I
    if-eqz v0, :cond_0

    .line 576
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    aget v3, v0, v1

    aput v3, v2, v1

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private isGearInP()Z
    .locals 6

    .line 623
    const/4 v0, 0x0

    .line 625
    .local v0, "isP":Z
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v1

    const-string/jumbo v2, "xp_vcu"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    .line 626
    .local v1, "manager":Landroid/car/hardware/vcu/CarVcuManager;
    if-eqz v1, :cond_1

    .line 628
    :try_start_0
    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getDisplayGearLevel()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 631
    goto :goto_1

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "FragranceManager##"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isGearInP e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return v0
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->selfGetPropertyMap()V

    .line 310
    const-string v0, "FragranceManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify device add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;->onDeviceAdd(Ljava/util/List;)V

    .line 312
    return-void
.end method

.method private notifyEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .line 583
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 584
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bd_event_type"

    const-string v2, "type_event_stat_notify"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v1, "key_event_stat_notify"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const/high16 v1, 0x1400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 587
    const-string v1, "com.xiaopeng.aiot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 589
    return-void
.end method

.method private notifyRawProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "prop"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 592
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.AIOT_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "bd_event_type"

    const-string v2, "type_event_prop_raw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "extra_device_type"

    const-string v2, "Fragrance"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string v1, "extra_device_property_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v1, "extra_device_property_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 597
    const/high16 v1, 0x1400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 598
    const-string v1, "com.xiaopeng.aiot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 600
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
    .locals 0
    .param p1, "device"    # Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 418
    return-void
.end method

.method public addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceEventListener:Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 392
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 396
    const-string v0, "dump FragranceManager##"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v0, "property status:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  switchStat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mSwitchState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  channels count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mChannelsType:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  activeChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mActiveChanel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  concentration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConcentration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  CO Concentration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCOConcentration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public getActiveChannel()I
    .locals 5

    .line 445
    const/4 v0, -0x1

    .line 446
    .local v0, "channel":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 447
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getSfsChannel()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 452
    goto :goto_0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FragranceManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveChannel fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public getCOConcentration()I
    .locals 5

    .line 482
    const/4 v0, -0x1

    .line 483
    .local v0, "coCOConcentration":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 484
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getCoConcentrationStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 489
    goto :goto_0

    .line 487
    :catch_0
    move-exception v1

    .line 488
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FragranceManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get CO Concentration fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public getConcentration()I
    .locals 5

    .line 469
    const/4 v0, -0x1

    .line 470
    .local v0, "concentration":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 471
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getSfsConcentrationStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 476
    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FragranceManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConcentration fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public getDevice()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->selfGetPropertyMap()V

    .line 323
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeftOver(I)I
    .locals 4
    .param p1, "channel"    # I

    .line 523
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 524
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->getSfsChannelLeftOver(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeftOver fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->selfGetPropertyMap()V

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchStatus()I
    .locals 5

    .line 421
    const/4 v0, -0x1

    .line 422
    .local v0, "status":I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 423
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getSfsSwitchStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FragranceManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSwitchStatus fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v0
.end method

.method public getTypeInChannels()[I
    .locals 5

    .line 506
    const/4 v0, 0x0

    .line 507
    .local v0, "channelValues":[I
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 508
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v1, :cond_0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v1}, Landroid/car/hardware/hvac/CarHvacManager;->getSfsTypeInChannels()[I

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 517
    goto :goto_1

    .line 511
    :catch_0
    move-exception v1

    .line 512
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FragranceManager##"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTypeInChannels fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v2, 0x3

    new-array v0, v2, [I

    .line 514
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 515
    const/4 v3, -0x1

    aput v3, v0, v2

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    :cond_0
    :goto_1
    return-object v0
.end method

.method public init()V
    .locals 5

    .line 297
    const-string v0, "FragranceManager##"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->setModuleLogLevel(Ljava/lang/String;I)V

    .line 298
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceServiceConn;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConnListener:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 299
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager$FragranceEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 302
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/ConnectivityUtil;->getWifiMac()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "macId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragrance_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "deviceId":Ljava/lang/String;
    new-instance v2, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    const-string v3, "MyFragrance"

    const-string v4, "Fragrance"

    invoke-direct {v2, v3, v1, v4}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    .line 306
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mDeviceList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$Zgs7RHoGyxvF3FaMhb8VrRnYvc0;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FragranceManager$Zgs7RHoGyxvF3FaMhb8VrRnYvc0;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 315
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mConnListener:Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 316
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacEventCallback:Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 317
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .line 412
    const-string v0, "1"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public monitorDevice(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "bMonitor"    # Z

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->bMonitorProp:Z

    .line 364
    :cond_0
    return-void
.end method

.method public resetLeftOver(I)V
    .locals 4
    .param p1, "channel"    # I

    .line 535
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/hvac/CarHvacManager;->setSfsChannelResetRequest(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    goto :goto_0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetLeftOver fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized selfGetPropertyMap()V
    .locals 8

    monitor-enter p0

    .line 546
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getSwitchStatus()I

    move-result v0

    .line 547
    .local v0, "switchStat":I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getTypeInChannels()[I

    move-result-object v1

    .line 548
    .local v1, "channelTypes":[I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getActiveChannel()I

    move-result v2

    .line 549
    .local v2, "activeChannel":I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getConcentration()I

    move-result v3

    .line 550
    .local v3, "concentration":I
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCOConcentration()I

    move-result v4

    .line 551
    .local v4, "coConcentration":I
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v5}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->getPropertyMap()Ljava/util/Map;

    move-result-object v5

    .line 552
    .local v5, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 553
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v5, v6

    .line 554
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mFragranceDevice:Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 556
    :cond_0
    const-string v6, "switch_state"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v6, "active"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    const-string v6, "concentration"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    const-string v6, "co_concentration"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->formatChannelTypes([I)Ljava/lang/String;

    move-result-object v6

    .line 570
    .local v6, "formatStr":Ljava/lang/String;
    const-string v7, "channel_types"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    .line 545
    .end local v0    # "switchStat":I
    .end local v1    # "channelTypes":[I
    .end local v2    # "activeChannel":I
    .end local v3    # "concentration":I
    .end local v4    # "coConcentration":I
    .end local v5    # "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "formatStr":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;
    throw v0
.end method

.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;

    .line 368
    const-string v0, "FragranceManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCommand,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1c7b43ca

    if-eq v0, v1, :cond_3

    const v1, 0x23480e36

    if-eq v0, v1, :cond_2

    const v1, 0x35f4e5db

    if-eq v0, v1, :cond_1

    const v1, 0x37bd872b

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "setConcentration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "setActiveChannel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "setSwitch"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "resetLeftover"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 383
    :pswitch_0
    goto :goto_2

    .line 377
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setConcentration(I)V

    .line 378
    goto :goto_2

    .line 374
    :pswitch_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setActiveChannel(I)V

    .line 375
    goto :goto_2

    .line 371
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setSwitch(I)V

    .line 372
    nop

    .line 387
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setActiveChannel(I)V
    .locals 4
    .param p1, "channel"    # I

    .line 458
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setSfsChannel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveChannel fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setConcentration(I)V
    .locals 4
    .param p1, "value"    # I

    .line 495
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 496
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setSfsConcentration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConcentration fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    .local p2, "propertyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "FragranceManager##"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",setPropertyMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/4 v0, -0x1

    .line 330
    .local v0, "switchVal":I
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, "prop":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 332
    .local v4, "propVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x54d080fa

    if-eq v5, v6, :cond_2

    const v6, -0x18789b93

    if-eq v5, v6, :cond_1

    const v6, 0x5e81a7c6

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "switch_state"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "concentration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v5, "active"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .end local v2    # "prop":Ljava/lang/String;
    .end local v4    # "propVal":Ljava/lang/String;
    goto :goto_2

    .line 340
    .restart local v2    # "prop":Ljava/lang/String;
    .restart local v4    # "propVal":Ljava/lang/String;
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setConcentration(I)V

    .line 341
    goto :goto_2

    .line 337
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setActiveChannel(I)V

    .line 338
    goto :goto_2

    .line 334
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    nop

    .line 345
    .end local v2    # "prop":Ljava/lang/String;
    .end local v4    # "propVal":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 346
    :cond_4
    if-eq v3, v0, :cond_5

    .line 348
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->setSwitch(I)V

    .line 350
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSwitch(I)V
    .locals 4
    .param p1, "enable"    # I

    .line 434
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->getCarHvacManager()V

    .line 435
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/FragranceManager;->mCarHvacManager:Landroid/car/hardware/hvac/CarHvacManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/hvac/CarHvacManager;->setSfsSwitch(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    goto :goto_0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FragranceManager##"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
