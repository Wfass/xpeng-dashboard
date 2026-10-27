.class public Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
.super Ljava/lang/Object;
.source "BlueLightControlPlat.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;
    }
.end annotation


# static fields
.field private static final SETTING_NGP_SWITCH_OPEN:I = 0x1

.field private static final SETTING_NGP_SWITCH_URL:Ljava/lang/String; = "keyNgpNewAlfSw"

.field private static final TAG:Ljava/lang/String; = "LightControlNew"

.field private static final mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;


# instance fields
.field private volatile mApaIconSt:I

.field private mCarServiceEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

.field private volatile mNgpIconSt:I

.field private volatile mNgpMode:I

.field private final mNgpSwitchObserver:Landroid/database/ContentObserver;

.field private volatile mSwitchSt:I

.field private volatile mVpaIconSt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;)V
    .locals 2
    .param p1, "modeChangeListener"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mSwitchSt:I

    .line 30
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    .line 32
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpIconSt:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mVpaIconSt:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mApaIconSt:I

    .line 40
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;

    new-instance v1, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpSwitchObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->init()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mSwitchSt:I

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mSwitchSt:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mModeChangeListener:Lcom/xiaopeng/xuiservice/iot/manager/xpengble/IBlueLightControl$ModeChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpIconSt:I

    return v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpIconSt:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mVpaIconSt:I

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mVpaIconSt:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;

    .line 23
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mApaIconSt:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;
    .param p1, "x1"    # I

    .line 23
    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mApaIconSt:I

    return p1
.end method

.method private getAPAIconState()I
    .locals 4

    .line 204
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 205
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getAPAIconState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 210
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :cond_0
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightControlNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAPAIconState,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getNGPIconState()I
    .locals 4

    .line 166
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 167
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getNGPIconState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 172
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :cond_0
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightControlNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNGPIconState,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getNgpModeState()I
    .locals 4

    .line 147
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 148
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getNgpModeIndexMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 153
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :cond_0
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightControlNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNGPIconState,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private getVPAIconState()I
    .locals 4

    .line 185
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    const-string/jumbo v1, "xp_xpu"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 186
    .local v0, "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getVPAIconState()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 191
    .end local v0    # "carXpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :cond_0
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LightControlNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVPAIconState,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private isStartNgpIcon()Z
    .locals 2

    .line 229
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpIconSt:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mVpaIconSt:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mApaIconSt:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 232
    .local v0, "result":Z
    :goto_1
    return v0
.end method

.method private isStartNgpMode()Z
    .locals 2

    .line 220
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    iget v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isSwitchOpen()Z
    .locals 2

    .line 241
    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mSwitchSt:I

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

    .line 117
    const-string v0, "LightControlNew"

    const-string v1, "init: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$CarServiceEventCallback;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCarServiceEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 119
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCar:Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mCarServiceEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    .line 123
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpSwitchObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getInstance()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "keyNgpNewAlfSw"

    .line 125
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mSwitchSt:I

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->getNgpModeState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpMode:I

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->getNGPIconState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mNgpIconSt:I

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->getAPAIconState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mApaIconSt:I

    .line 130
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->getVPAIconState()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->mVpaIconSt:I

    .line 131
    return-void
.end method

.method public isLightNeedActive()Z
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->isSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->isStartNgpMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/BlueLightControlPlat;->isStartNgpIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
