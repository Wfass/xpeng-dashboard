.class public Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
.super Ljava/lang/Object;
.source "XAppCarService.java"


# static fields
.field private static final CAMERA_DOWNRISE_VALUE:F = 80.0f

.field private static final KEY_MIRROR_MODE:Ljava/lang/String; = "key_xp_mirror_flag"

.field private static final KEY_PANEL_SPEED:Ljava/lang/String; = "key_panel_car_speed"

.field private static final KEY_STEERING_MODE:Ljava/lang/String; = "key_xp_steering_flag"

.field private static final MOTION:I = 0x1

.field private static final MOTIONFAST:I = 0x2

.field private static final MOTIONLESS:I = 0x0

.field private static final MOTIONSLOW:I = 0x3

.field private static final PANEL_DISAPPEAR_VALUE:F = 3.0f

.field private static final PANEL_DISAPPEAR_VALUE_SLOW:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "XAppCarService"

.field private static sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;


# instance fields
.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mRawCarSpeed:I

.field private mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mRawCarSpeed:I

    .line 200
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 211
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 222
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;

    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContentObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mVcuCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 53
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mScuCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->handleVcuEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
    .param p1, "x1"    # Landroid/car/hardware/CarPropertyValue;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->handleScuEvent(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/XAppCarService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatus()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/XAppCarService;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 47
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->sXAppCarService:Lcom/xiaopeng/xuiservice/xapp/XAppCarService;

    return-object v0
.end method

.method private getSystemInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 141
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 143
    return p2
.end method

.method private getSystemUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 147
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private handleScuEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 190
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21402634

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatus()V

    .line 198
    :cond_1
    :goto_0
    return-void
.end method

.method private handleVcuEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2
    .param p1, "val"    # Landroid/car/hardware/CarPropertyValue;

    .line 171
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2140124e

    if-eq v0, v1, :cond_1

    const v1, 0x21601225

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 176
    .local v0, "value":F
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->saveRawCarSpeed(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v0    # "value":F
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatus()V

    .line 187
    :cond_2
    :goto_0
    return-void
.end method

.method private isAccEnable()Z
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_scu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarScuManager:Landroid/car/hardware/scu/CarScuManager;

    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getAccStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v0, "status":I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 114
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v1
.end method

.method private isCcEnable()Z
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_vcu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getCruiseControlStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v0, "status":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    return v1

    .line 130
    .end local v0    # "status":I
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return v1
.end method

.method private registerSettingsObserver()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_xp_mirror_flag"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_xp_steering_flag"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    return-void
.end method

.method private saveRawCarSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "speedRange":I
    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 153
    const/4 v0, 0x2

    goto :goto_0

    .line 154
    :cond_0
    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    .line 155
    const/4 v0, 0x3

    goto :goto_0

    .line 156
    :cond_1
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_2
    const/4 v0, 0x0

    .line 161
    :goto_0
    iget v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mRawCarSpeed:I

    if-eq v1, v0, :cond_3

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_panel_car_speed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_1

    .line 164
    :catch_0
    move-exception v1

    .line 166
    :goto_1
    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mRawCarSpeed:I

    .line 168
    :cond_3
    return-void
.end method

.method private setSwsControlSceneStatus()V
    .locals 5

    .line 69
    const-string v0, "XAppCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwsControlScene with featureEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/xiaopeng/xuiservice/xapp/Config;->SET_SWS_CONTROL_SCENE_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-boolean v0, Lcom/xiaopeng/xuiservice/xapp/Config;->SET_SWS_CONTROL_SCENE_ENABLE:Z

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const-string v0, "key_xp_mirror_flag"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getSystemInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 74
    .local v0, "isMirror":Z
    :goto_0
    const-string v3, "key_xp_steering_flag"

    invoke-direct {p0, v3, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->getSystemInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 75
    .local v3, "isSteering":Z
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->isAccEnable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 76
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    goto :goto_2

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->isCcEnable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 78
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    goto :goto_2

    .line 79
    :cond_4
    if-eqz v3, :cond_5

    .line 80
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    goto :goto_2

    .line 81
    :cond_5
    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    goto :goto_2

    .line 84
    :cond_6
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatusInternal(I)V

    .line 86
    :goto_2
    return-void
.end method


# virtual methods
.method public setSwsControlSceneStatusInternal(I)V
    .locals 4
    .param p1, "status"    # I

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    const-string v0, "XAppCarService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwsControlSceneStatusInternal status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/bcm/CarBcmManager;->setSwsControlSceneStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XAppCarService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwsControlSceneStatusInternal exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->setSwsControlSceneStatus()V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppCarService;->registerSettingsObserver()V

    .line 59
    return-void
.end method
