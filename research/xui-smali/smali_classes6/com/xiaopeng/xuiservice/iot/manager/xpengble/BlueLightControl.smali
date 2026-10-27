.class public Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
.super Ljava/lang/Object;
.source "BlueLightControl.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceScuEventCallback;,
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;
    }
.end annotation


# static fields
.field private static final PARKING_AUTO:I = 0x1

.field private static final PARKING_STATE_URL:Ljava/lang/String; = "parkingState"

.field private static final SETTING_NGP_SWITCH_OPEN:I = 0x1

.field private static final SETTING_NGP_SWITCH_URL:Ljava/lang/String; = "keyNgpNewAlfSw"

.field private static final TAG:Ljava/lang/String; = "BlueLightControl"

.field private static final mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;


# instance fields
.field private mCarServiceScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

.field private mCarServiceXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

.field private volatile mNgpIconSt:I

.field private final mNgpSwitchObserver:Landroid/database/ContentObserver;

.field private volatile mParkingState:I

.field private final mParkingStateObserver:Landroid/database/ContentObserver;

.field private volatile mSwitchSt:I

.field private volatile mXpilotSt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    .line 38
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    .line 51
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpSwitchObserver:Landroid/database/ContentObserver;

    .line 76
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$2;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingStateObserver:Landroid/database/ContentObserver;

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->init()V

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    return p1
.end method

.method private getNGPIconState()I
    .locals 4

    .line 214
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 215
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getNGPIconState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 220
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :cond_0
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BlueLightControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNGPIconState,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getXpilotStatus()I
    .locals 4

    .line 197
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_scu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/scu/CarScuManager;

    .line 198
    .local v0, "carScuManager":Landroid/car/hardware/scu/CarScuManager;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Landroid/car/hardware/scu/CarScuManager;->getXpilotStatus()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 203
    .end local v0    # "carScuManager":Landroid/car/hardware/scu/CarScuManager;
    :cond_0
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BlueLightControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpilotStatus,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private isActiveNgpIcon()Z
    .locals 2

    .line 252
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isActiveXPILOT()Z
    .locals 2

    .line 239
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 243
    .local v0, "isActive":Z
    :goto_1
    return v0
.end method

.method private isSwitchOpen()Z
    .locals 2

    .line 230
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 157
    const-string v0, "BlueLightControl"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceXpuEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCarServiceXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 159
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCarServiceXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 160
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceScuEventCallback;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$CarServiceScuEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCarServiceScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 161
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mCarServiceScuEventCallback:Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 163
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    .line 165
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 168
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parkingState"

    .line 170
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    .line 172
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    .line 174
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->getXpilotStatus()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    .line 175
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->getNGPIconState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    .line 176
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parkingState"

    .line 176
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    .line 178
    const-string v0, "BlueLightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init mSwitchSt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mSwitchSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mXpilotSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mXpilotSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNgpIconSt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mNgpIconSt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mParkingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method public isLightNeedActive()Z
    .locals 2

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->isSwitchOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->isActiveXPILOT()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->isActiveNgpIcon()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControl;->mParkingState:I

    if-ne v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 187
    .local v0, "isReal":Z
    return v0
.end method
