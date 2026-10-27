.class public Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
.super Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;
.source "ContextInfoHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;
    }
.end annotation


# static fields
.field public static final ADD_CHAOPAO_FEATURE:I = 0x1

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "ContextInfoHalService"

.field private static igStatus:I

.field private static lasttime:J


# instance fields
.field private XpuBrightnessTimeInterval:I

.field private curCarGear:I

.field private curCarSpeed:F

.field private isDriverBeltBuck:Z

.field private lastDataLogTime:J

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

.field private mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

.field private mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

.field private mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

.field private final mIcmPropertyIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

.field private mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

.field private oldAngular:F

.field private oldSpeed:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 140
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->igStatus:I

    .line 142
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lasttime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/HalServiceBaseCarListener;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 105
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    .line 106
    const v2, 0x2140160e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 107
    const v2, 0x21101611

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mIcmPropertyIds:Landroid/util/ArraySet;

    .line 109
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lastDataLogTime:J

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldAngular:F

    .line 136
    iput v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldSpeed:F

    .line 137
    iput v3, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarGear:I

    .line 138
    iput v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarSpeed:F

    .line 139
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->isDriverBeltBuck:Z

    .line 143
    const-string v0, "persist.sys.xpu.lux.timeinterval"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->XpuBrightnessTimeInterval:I

    .line 148
    const-string v0, "ContextInfoHalService"

    const-string v1, "started ContextInfoHalService!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mContext:Landroid/content/Context;

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    .line 152
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 99
    sget-wide v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lasttime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 99
    sput-wide p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lasttime:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->XpuBrightnessTimeInterval:I

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarSpeed:F

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    .param p1, "x1"    # F

    .line 99
    iput p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarSpeed:F

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;

    .line 99
    iget v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarGear:I

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    .param p1, "x1"    # I

    .line 99
    iput p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarGear:I

    return p1
.end method

.method static synthetic access$500()I
    .locals 1

    .line 99
    sget v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->igStatus:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 99
    sput p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->igStatus:I

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->handlePowerStateChanged(III)V

    return-void
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    .param p1, "x1"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->isDriverBeltBuck:Z

    return p1
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 598
    const-string v0, "ContextInfoHalService"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method private declared-synchronized handlePowerStateChanged(III)V
    .locals 1
    .param p1, "igState"    # I
    .param p2, "powerState"    # I
    .param p3, "bootReason"    # I

    monitor-enter p0

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "forceStop":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 877
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 874
    :pswitch_1
    const/4 v0, 0x1

    .line 875
    nop

    .line 880
    :goto_0
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 888
    :pswitch_2
    packed-switch p3, :pswitch_data_2

    :pswitch_3
    goto :goto_1

    .line 917
    :pswitch_4
    const/4 v0, 0x1

    goto :goto_1

    .line 915
    :pswitch_5
    goto :goto_1

    .line 912
    :pswitch_6
    const/4 v0, 0x1

    .line 913
    goto :goto_1

    .line 909
    :pswitch_7
    const/4 v0, 0x1

    .line 910
    goto :goto_1

    .line 906
    :pswitch_8
    const/4 v0, 0x1

    .line 907
    goto :goto_1

    .line 904
    :pswitch_9
    goto :goto_1

    .line 902
    :pswitch_a
    goto :goto_1

    .line 899
    :pswitch_b
    const/4 v0, 0x0

    .line 900
    goto :goto_1

    .line 897
    :pswitch_c
    goto :goto_1

    .line 895
    :pswitch_d
    goto :goto_1

    .line 892
    :pswitch_e
    const/4 v0, 0x0

    .line 893
    goto :goto_1

    .line 890
    :pswitch_f
    goto :goto_1

    .line 885
    :pswitch_10
    const/4 v0, 0x1

    .line 886
    goto :goto_1

    .line 883
    :pswitch_11
    nop

    .line 922
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->notifyPowerStateChanged(IIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 923
    monitor-exit p0

    return-void

    .line 870
    .end local v0    # "forceStop":Z
    .end local p1    # "igState":I
    .end local p2    # "powerState":I
    .end local p3    # "bootReason":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private initCarprop()V
    .locals 4

    .line 524
    :try_start_0
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    .line 525
    .local v0, "vcuManager":Landroid/car/CarManagerBase;
    if-eqz v0, :cond_0

    .line 526
    move-object v1, v0

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getRealGearLevel()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarGear:I

    .line 527
    move-object v1, v0

    check-cast v1, Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v1}, Landroid/car/hardware/vcu/CarVcuManager;->getRawCarSpeed()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->curCarSpeed:F

    .line 529
    :cond_0
    const-string/jumbo v1, "xp_srs"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    .line 530
    .local v1, "srsManager":Landroid/car/CarManagerBase;
    if-eqz v1, :cond_2

    .line 531
    move-object v2, v1

    check-cast v2, Landroid/car/hardware/srs/CarSrsManager;

    invoke-virtual {v2}, Landroid/car/hardware/srs/CarSrsManager;->getDriverBeltStatus()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->isDriverBeltBuck:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    .end local v0    # "vcuManager":Landroid/car/CarManagerBase;
    .end local v1    # "srsManager":Landroid/car/CarManagerBase;
    :cond_2
    goto :goto_1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carapi error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private notifyPowerStateChanged(IIIZ)V
    .locals 9
    .param p1, "igState"    # I
    .param p2, "powerState"    # I
    .param p3, "bootReason"    # I
    .param p4, "forceStop"    # Z

    .line 925
    const-string v0, "com.xiaopeng.intent.action.XUI_POWER_STATE_CHANGED"

    .line 926
    .local v0, "ACTION_POWER_CHANGED":Ljava/lang/String;
    const-string v1, "android.intent.extra.IG_STATE"

    .line 927
    .local v1, "EXTRA_IG_STATE":Ljava/lang/String;
    const-string v2, "android.intent.extra.POWER_STATE"

    .line 928
    .local v2, "EXTRA_POWER_STATE":Ljava/lang/String;
    const-string v3, "android.intent.extra.BOOT_REASON"

    .line 929
    .local v3, "EXTRA_BOOT_REASON":Ljava/lang/String;
    const-string v4, "android.intent.extra.FORCE_STOP"

    .line 930
    .local v4, "EXTRA_FORCE_STOP":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 931
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.xiaopeng.intent.action.XUI_POWER_STATE_CHANGED"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v6, "android.intent.extra.IG_STATE"

    invoke-virtual {v5, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    const-string v6, "android.intent.extra.POWER_STATE"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v6, "android.intent.extra.BOOT_REASON"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 935
    const-string v6, "android.intent.extra.FORCE_STOP"

    invoke-virtual {v5, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 936
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 937
    const-string v6, "ContextInfoHalService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyPowerStateChanged igState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " powerState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bootReason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " forceStop="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    return-void
.end method

.method private printDebugLog(Ljava/lang/String;I)V
    .locals 6
    .param p1, "func"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 112
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lastDataLogTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->xuiLogInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 113
    const-string v2, "ContextInfoHalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printDebugLog func="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->lastDataLogTime:J

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method public addSpecialFeatureCallback(I)V
    .locals 3
    .param p1, "feature"    # I

    .line 942
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSpecialFeatureCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 948
    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 604
    const-string v0, "*ContextInfo HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method public getIntelligentEffectEnable()Z
    .locals 3

    .line 650
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IntelligentEffectEnable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getWeather()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 587
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 589
    .local v0, "listener":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;)V

    .line 593
    :cond_0
    return-void

    .line 589
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 157
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$1;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 177
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$2;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 195
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$3;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 227
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$4;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 272
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$5;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 314
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$6;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 345
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$7;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 367
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$8;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 382
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$9;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 411
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$10;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 436
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$11;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$11;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 454
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$12;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$12;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarIcmEventCallback:Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 484
    new-instance v0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$13;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 501
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V

    .line 503
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 504
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 506
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 508
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    .line 514
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 518
    const-string v0, "ContextInfoHalService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->initCarprop()V

    .line 520
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 546
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->getInstance()Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    .line 547
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mWeather:Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;

    new-instance v1, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$14;-><init>(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartWeatherService;->registerListener(Lcom/xiaopeng/xuiservice/smart/SmartWeatherService$SmartWeatherListener;)V

    .line 566
    :cond_0
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 570
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 571
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 572
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarCiuEventCallback:Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V

    .line 573
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 575
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 577
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVpmEventCallback:Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 578
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 580
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarSrsEventCallback:Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 582
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarLluEventCallback:Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 583
    return-void
.end method

.method public removeSpecialFeatureCallback(I)V
    .locals 3
    .param p1, "feature"    # I

    .line 951
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSpecialFeatureCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCarVcuSpecialEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 957
    :goto_0
    return-void
.end method

.method public sendContextEvent(II)V
    .locals 3
    .param p1, "eventType"    # I
    .param p2, "eventValue"    # I

    .line 765
    const-string v0, "ContextInfoHalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendContextEvent  eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".eventValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mCommonMsgController:Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/carcontrol/CommonMsgController;->sendCommonEvent(II)V

    .line 768
    :cond_0
    return-void
.end method

.method public setCarAngular(FI)V
    .locals 3
    .param p1, "angularValue"    # F
    .param p2, "deltaTime"    # I

    .line 628
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getIntelligentEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldAngular:F

    sub-float v1, p1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onAngularVelocityEvent(F)V

    .line 630
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldAngular:F

    .line 631
    return-void
.end method

.method public setCarAngularVelocity(F)V
    .locals 1
    .param p1, "angularVelocityValue"    # F

    .line 640
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getIntelligentEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onAngularVelocityEvent(F)V

    .line 641
    :cond_0
    return-void
.end method

.method public setCarSpeed(FI)V
    .locals 3
    .param p1, "speed"    # F
    .param p2, "deltaTime"    # I

    .line 616
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->getIntelligentEffectEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    iget v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldSpeed:F

    sub-float v1, p1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onAccelerationEvent(F)V

    .line 618
    :cond_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->oldSpeed:F

    .line 619
    return-void
.end method

.method public setIntelligentEffectEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 660
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IntelligentEffectEnable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 661
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 539
    monitor-enter p0

    .line 540
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    .line 541
    monitor-exit p0

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNavigationEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 778
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onNavigationEnable(Z)V

    .line 779
    return-void
.end method

.method public setNavigationInfo(Ljava/lang/String;)V
    .locals 7
    .param p1, "navInfo"    # Ljava/lang/String;

    .line 671
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 673
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "poiMessage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 674
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPoiMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v2, "poiMessage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onPoiEvent(Ljava/lang/String;)V

    .line 679
    :cond_0
    return-void

    .line 682
    :cond_1
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavigationInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onNavigationInfo(Ljava/lang/String;)V

    .line 688
    :cond_2
    const-string v1, "maneuver"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 689
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "maneuver"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;

    .line 690
    .local v1, "mManeuver":Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_3

    .line 691
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onManeuverEvent(Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;I)V

    .line 692
    .end local v1    # "mManeuver":Lcom/xiaopeng/xuimanager/contextinfo/Maneuver;
    :cond_3
    goto/16 :goto_0

    :cond_4
    const-string v1, "remainInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 693
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "remainInfo"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;

    .line 694
    .local v1, "mRemainInfo":Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_5

    .line 695
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onRemainInfoEvent(Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;I)V

    .line 696
    .end local v1    # "mRemainInfo":Lcom/xiaopeng/xuimanager/contextinfo/RemainInfo;
    :cond_5
    goto/16 :goto_0

    :cond_6
    const-string v1, "navi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 697
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "navi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Navi;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Navi;

    .line 698
    .local v1, "mNavi":Lcom/xiaopeng/xuimanager/contextinfo/Navi;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onNaviEvent(Lcom/xiaopeng/xuimanager/contextinfo/Navi;I)V

    .line 699
    .end local v1    # "mNavi":Lcom/xiaopeng/xuimanager/contextinfo/Navi;
    :cond_7
    goto/16 :goto_0

    :cond_8
    const-string v1, "navistatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_b

    .line 700
    const/4 v1, 0x0

    .line 701
    .local v1, "mNaviStatus":Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;
    const-string v3, "navistatus"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 702
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_9

    .line 703
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;

    move-object v1, v4

    .line 705
    :cond_9
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v5, "msgType"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v4, v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onNaviStatus(Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;I)V

    .line 706
    .end local v1    # "mNaviStatus":Lcom/xiaopeng/xuimanager/contextinfo/NaviStatus;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_a
    goto/16 :goto_0

    :cond_b
    const-string v1, "homeCompanyRouteInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 707
    const/4 v1, 0x0

    .line 708
    .local v1, "info":Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;
    const-string v3, "homeCompanyRouteInfo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 709
    .restart local v3    # "obj":Ljava/lang/Object;
    if-eqz v3, :cond_c

    .line 710
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;

    move-object v1, v4

    .line 712
    :cond_c
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v4, :cond_d

    .line 713
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v5, "msgType"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v4, v1, v2}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onHomeCompanyRouteInfo(Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;I)V

    .line 715
    .end local v1    # "info":Lcom/xiaopeng/xuimanager/contextinfo/HomeCompanyRouteInfo;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_d
    goto/16 :goto_0

    :cond_e
    const-string v1, "lane"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 716
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "lane"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Lane;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Lane;

    .line 717
    .local v1, "mLane":Lcom/xiaopeng/xuimanager/contextinfo/Lane;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onLaneEvent(Lcom/xiaopeng/xuimanager/contextinfo/Lane;I)V

    .line 718
    .end local v1    # "mLane":Lcom/xiaopeng/xuimanager/contextinfo/Lane;
    :cond_f
    goto/16 :goto_0

    :cond_10
    const-string v1, "intervalCamera"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 719
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "intervalCamera"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    .line 720
    .local v1, "mCameraInterval":Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_11

    .line 721
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onCameraIntervalEvent(Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;I)V

    .line 722
    .end local v1    # "mCameraInterval":Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
    :cond_11
    goto/16 :goto_0

    :cond_12
    const-string v1, "camera"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 723
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    .line 724
    .local v1, "mCamera":Lcom/xiaopeng/xuimanager/contextinfo/Camera;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_13

    .line 725
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onCameraEvent(Lcom/xiaopeng/xuimanager/contextinfo/Camera;I)V

    .line 726
    .end local v1    # "mCamera":Lcom/xiaopeng/xuimanager/contextinfo/Camera;
    :cond_13
    goto/16 :goto_0

    :cond_14
    const-string v1, "sapa"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 727
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "sapa"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Sapa;

    .line 728
    .local v1, "mSapa":Lcom/xiaopeng/xuimanager/contextinfo/Sapa;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onSapaEvent(Lcom/xiaopeng/xuimanager/contextinfo/Sapa;I)V

    .line 729
    .end local v1    # "mSapa":Lcom/xiaopeng/xuimanager/contextinfo/Sapa;
    :cond_15
    goto/16 :goto_0

    :cond_16
    const-string v1, "cross"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 730
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "cross"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Cross;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Cross;

    .line 731
    .local v1, "mCross":Lcom/xiaopeng/xuimanager/contextinfo/Cross;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onCrossEvent(Lcom/xiaopeng/xuimanager/contextinfo/Cross;I)V

    .line 732
    .end local v1    # "mCross":Lcom/xiaopeng/xuimanager/contextinfo/Cross;
    :cond_17
    goto :goto_0

    :cond_18
    const-string v1, "locInfo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 733
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "locInfo"

    .line 734
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuimanager/contextinfo/Location;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/contextinfo/Location;

    .line 735
    .local v1, "mLocation":Lcom/xiaopeng/xuimanager/contextinfo/Location;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v2, :cond_19

    .line 736
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    const-string v3, "msgType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onLocationEvent(Lcom/xiaopeng/xuimanager/contextinfo/Location;I)V

    .line 737
    .end local v1    # "mLocation":Lcom/xiaopeng/xuimanager/contextinfo/Location;
    :cond_19
    goto :goto_0

    .line 738
    :cond_1a
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    if-eqz v1, :cond_1c

    .line 739
    const-string v1, "msgType"

    const/16 v2, -0x3e7

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 740
    .local v1, "value":I
    if-eq v2, v1, :cond_1b

    .line 741
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService;->mListener:Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/xuiservice/contextinfo/ContextInfoHalService$ContextInfoHalListener;->onMsgEvent(I)V

    goto :goto_0

    .line 743
    :cond_1b
    const-string v2, "ContextInfoHalService"

    const-string v3, "setNavigationInfo, no msgType"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "value":I
    :cond_1c
    :goto_0
    goto :goto_1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ContextInfoHalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNavigationInfo failed,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public updateWeatherFromServer()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 762
    return-void
.end method
