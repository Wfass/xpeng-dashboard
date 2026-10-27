.class public Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
.super Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;
.source "AmbientLightHalServiceLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final EFFECT_GENTLE_BREATHING:Ljava/lang/String; = "gentle_breathing"

.field public static final EFFECT_STABLE_EFFECT:Ljava/lang/String; = "stable_effect"

.field public static final LIGHT_COLOR_1:I = 0x1

.field public static final LIGHT_COLOR_10:I = 0xa

.field public static final LIGHT_COLOR_11:I = 0xb

.field public static final LIGHT_COLOR_12:I = 0xc

.field public static final LIGHT_COLOR_13:I = 0xd

.field public static final LIGHT_COLOR_14:I = 0xe

.field public static final LIGHT_COLOR_15:I = 0xf

.field public static final LIGHT_COLOR_16:I = 0x10

.field public static final LIGHT_COLOR_17:I = 0x11

.field public static final LIGHT_COLOR_18:I = 0x12

.field public static final LIGHT_COLOR_19:I = 0x13

.field public static final LIGHT_COLOR_2:I = 0x2

.field public static final LIGHT_COLOR_20:I = 0x14

.field public static final LIGHT_COLOR_3:I = 0x3

.field public static final LIGHT_COLOR_4:I = 0x4

.field public static final LIGHT_COLOR_5:I = 0x5

.field public static final LIGHT_COLOR_6:I = 0x6

.field public static final LIGHT_COLOR_7:I = 0x7

.field public static final LIGHT_COLOR_8:I = 0x8

.field public static final LIGHT_COLOR_9:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AmbientLightHalServiceLite"


# instance fields
.field private SHC_Change_thread:Ljava/lang/Runnable;

.field private SHC_RAISE_DELAY:J

.field private doubleFirstColor:I

.field private doubleSecondColor:I

.field private doubleThemeColorEnable:Z

.field private effectType:Ljava/lang/String;

.field private isAmbientLightInit:Z

.field private isAmbientLightOpen:Z

.field private isCarIgOn:Z

.field private volatile isPNGear:Z

.field private isShcRised:Z

.field mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

.field private mCarAtlEventCallback:Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

.field private mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

.field private mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

.field private mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

.field private monoColor:I

.field private recovery_color_thread:Ljava/lang/Runnable;

.field private update_ambilent_light_thread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalService;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isAmbientLightInit:Z

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isCarIgOn:Z

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    .line 84
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    .line 86
    const-string v1, "persist.sys.shcraise.delay"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->SHC_RAISE_DELAY:J

    .line 103
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->update_ambilent_light_thread:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->recovery_color_thread:Ljava/lang/Runnable;

    .line 134
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->SHC_Change_thread:Ljava/lang/Runnable;

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isAmbientLightOpen:Z

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleThemeColorEnable:Z

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->monoColor:I

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleFirstColor:I

    .line 130
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleSecondColor:I

    .line 131
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 38
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)Landroid/car/hardware/bcm/CarBcmManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # I

    .line 38
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->monoColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->turnOnOffAtl(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isWelcomeAutoShow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->riseSHC()V

    return-void
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    return p1
.end method

.method static synthetic access$802(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isAmbientLightInit:Z

    return p1
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isCarIgOn:Z

    return p1
.end method

.method private dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    .line 313
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "handleHalEvents event: "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getCarAtlManagerAgent()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->init()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarAtlManagerAgent:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    return-object v0
.end method

.method private getFloatArrayProperty(Landroid/car/hardware/CarPropertyValue;)[F
    .locals 5
    .param p1, "propertyValue"    # Landroid/car/hardware/CarPropertyValue;

    .line 267
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getValue(Landroid/car/hardware/CarPropertyValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 268
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 269
    .local v1, "result":[F
    if-eqz v0, :cond_1

    .line 270
    array-length v2, v0

    new-array v1, v2, [F

    .line 271
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 272
    aget-object v3, v0, v2

    .line 273
    .local v3, "objValue":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_0

    .line 274
    move-object v4, v3

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v2

    .line 271
    .end local v3    # "objValue":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    if-nez v0, :cond_0

    .line 583
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getLightEffectManager()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mLightEffectManager:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    return-object v0
.end method

.method private isWelcomeAutoShow()Z
    .locals 3

    .line 176
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "welcome_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private recoveryColor()V
    .locals 4

    .line 620
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 621
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void
.end method

.method private registerNewMediaStreamEvent()V
    .locals 2

    .line 158
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->getInstance()Lcom/xiaopeng/xuiservice/base/event/EventCenter;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/EventCenter;->registerMediaEventListener(Lcom/xiaopeng/xuiservice/base/event/MediaEventListener;)V

    .line 167
    return-void
.end method

.method private resetColor()V
    .locals 4

    .line 625
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->recovery_color_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->recovery_color_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 627
    return-void
.end method

.method private riseSHC()V
    .locals 6

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isWelcomeAutoShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->SHC_Change_thread:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->SHC_RAISE_DELAY:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :cond_0
    return-void
.end method

.method private sendAtlControl(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 597
    :try_start_0
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendAtlControl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isCarIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightOpen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v0, Landroid/car/hardware/atl/AtlConfiguration$Builder;

    invoke-direct {v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;-><init>()V

    .line 599
    .local v0, "mBuilder":Landroid/car/hardware/atl/AtlConfiguration$Builder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLeftAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 600
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isRightAtlControlEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 601
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->colorType(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 602
    invoke-virtual {v0, p1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isLedEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 603
    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->isFadeEnabled(Z)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 604
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->fadingTime(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 605
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->intensity(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 606
    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->monoColor:I

    invoke-virtual {v0, v1}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->rgbRedOrPreDefinedColor(I)Landroid/car/hardware/atl/AtlConfiguration$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/car/hardware/atl/AtlConfiguration$Builder;->build()Landroid/car/hardware/atl/AtlConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

    .line 608
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getCarAtlManagerAgent()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mAtlConfiguration:Landroid/car/hardware/atl/AtlConfiguration;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/CarAtlManagerAgent;->setAtlConfiguration(Landroid/car/hardware/atl/AtlConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v0    # "mBuilder":Landroid/car/hardware/atl/AtlConfiguration$Builder;
    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->handleException(Ljava/lang/Exception;)V

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private turnOnOffAtl(Z)V
    .locals 1
    .param p1, "on"    # Z

    .line 592
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isCarIgOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isShcRised:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->sendAtlControl(Z)V

    .line 593
    return-void
.end method

.method private updateAmbilentLight()V
    .locals 4

    .line 615
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->update_ambilent_light_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 616
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->update_ambilent_light_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 617
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 319
    const-string v0, "*AmbientLight HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public getAmbientLightColor(ILjava/lang/String;)I
    .locals 1
    .param p1, "color_type"    # I
    .param p2, "effectType"    # Ljava/lang/String;

    .line 396
    if-nez p1, :cond_0

    .line 397
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 398
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 399
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 400
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 401
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 403
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getAmbientLightDoubleFirstColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 444
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightDoubleFirstColor(effectType):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleFirstColor"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightDoubleSecondColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 455
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getAmbientLightDoubleSecondColor(effectType)"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleSecondColor"

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightEffectType()Ljava/lang/String;
    .locals 3

    .line 528
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getAmbientLightEffectType()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "effectType":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "stable_effect"

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AmbientLightEffectType"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getAmbientLightEffectTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getLightEffectManager()Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/LightEffectManager;->getAmbientLightEffectTypeList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAmbientLightMonoColor(Ljava/lang/String;)I
    .locals 5
    .param p1, "effectType"    # Ljava/lang/String;

    .line 412
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAmbientLightMonoColor(String effectType):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MonoColor"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MonoColor"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAmbientLightOpen()Z
    .locals 3

    .line 550
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getAmbientLightOpen() "

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAmbientLightOpen"

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

.method public getDoubleThemeColorEnable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 495
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getDoubleThemeColorEnable"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    return v1

    .line 498
    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "isDoubleColorEnable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public getMusicSpectrumEnable()Z
    .locals 2

    .line 359
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "getMusicSpectrumEnable()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public handleHalEvents()V
    .locals 1

    .line 302
    monitor-enter p0

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    .line 304
    .local v0, "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->dispatchEventToListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;)V

    .line 308
    :cond_0
    return-void

    .line 304
    .end local v0    # "listener":Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public initAmbilentLightEffect()V
    .locals 0

    .line 333
    return-void
.end method

.method protected initCarListener()V
    .locals 1

    .line 186
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$5;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 204
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$6;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 242
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->registerNewMediaStreamEvent()V

    .line 243
    return-void
.end method

.method protected initXUIManager()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 264
    return-void
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "effectType"    # Ljava/lang/String;

    .line 573
    const-string v0, "stable_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "gentle_breathing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method protected needConnectXUI()Z
    .locals 1

    .line 636
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 6

    .line 247
    const-string v0, "AmbientLightHalServiceLite"

    const-string v1, "onCarManagerInited()"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    .line 249
    .local v0, "mCarVcuManager":Landroid/car/hardware/vcu/CarVcuManager;
    const-string/jumbo v1, "xp_mcu"

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/mcu/CarMcuManager;

    .line 250
    .local v1, "mCarMcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    const-string/jumbo v2, "xp_bcm"

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/bcm/CarBcmManager;

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarBcmManager:Landroid/car/hardware/bcm/CarBcmManager;

    .line 252
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getStallState()I

    move-result v2

    .line 253
    .local v2, "gear":I
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    .line 254
    invoke-virtual {v1}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v4, v5

    nop

    :cond_2
    iput-boolean v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isCarIgOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v2    # "gear":I
    goto :goto_2

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "AmbientLightHalServiceLite"

    const-string v4, "initCarListener error"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->initAmbilentLightEffect()V

    .line 259
    return-void
.end method

.method public onConnectedCar()V
    .locals 0

    .line 182
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 290
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 298
    return-void
.end method

.method public setAmbientLightDoubleColor(Ljava/lang/String;II)V
    .locals 5
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "first_color"    # I
    .param p3, "second_color"    # I

    .line 469
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightDoubleColor() effectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " first_color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " second_color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleFirstColor:I

    .line 473
    iput p3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleSecondColor:I

    .line 475
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleFirstColor"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 476
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DoubleSecondColor"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p2, v3, v4

    aput p3, v3, v1

    invoke-interface {v0, v2, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 482
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isAmbientLightInit:Z

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->initAmbilentLightEffect()V

    .line 484
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isAmbientLightInit:Z

    .line 487
    :cond_1
    return-void
.end method

.method public setAmbientLightEffectType(Ljava/lang/String;)V
    .locals 3
    .param p1, "effectType"    # Ljava/lang/String;

    .line 543
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightEffectType(String effectType) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "AmbientLightEffectType"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 546
    return-void
.end method

.method public setAmbientLightMonoColor(Ljava/lang/String;I)V
    .locals 4
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 424
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_1

    .line 426
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightMonoColor() effectType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iput p2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->monoColor:I

    .line 429
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "MonoColor"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 430
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->riseSHC()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 436
    :cond_1
    return-void
.end method

.method public setAmbientLightOpen(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 557
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightOpen()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 559
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAmbientLightOpen(boolean enable) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isAmbientLightOpen"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 562
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->isPNGear:Z

    if-eqz v0, :cond_0

    .line 563
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->riseSHC()V

    goto :goto_0

    .line 565
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->turnOnOffAtl(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :cond_1
    :goto_0
    goto :goto_1

    .line 567
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->handleException(Ljava/lang/Exception;)V

    .line 570
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setDoubleThemeColorEnable(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "effectType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 512
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleThemeColorEnable() effectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    if-eqz v0, :cond_0

    .line 516
    move v0, p2

    .line 517
    .local v0, "data":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    const/4 v2, 0x2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    invoke-interface {v1, v2, p1, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;->onAmbientLightSetEvent(ILjava/lang/String;[I)V

    .line 520
    .end local v0    # "data":I
    :cond_0
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite$AmbientLightHalListener;

    .line 284
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMusicRhythmMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 381
    const-string v0, "AmbientLightHalServiceLite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMusicRhythmMode() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setMusicSpectrum(BBB)V
    .locals 0
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 345
    return-void
.end method

.method public setMusicSpectrumEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 371
    return-void
.end method

.method public setSpeechSpectrum(BBB)V
    .locals 0
    .param p1, "color"    # B
    .param p2, "bright"    # B
    .param p3, "fade"    # B

    .line 348
    return-void
.end method

.method public stopAllAmbilentEffect()V
    .locals 0

    .line 342
    return-void
.end method

.method public stopDefaultEffect()V
    .locals 0

    .line 336
    return-void
.end method

.method public stopSpeechEffect()V
    .locals 0

    .line 339
    return-void
.end method

.method public updateAmbientLightEffect()V
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleThemeColorEnable:Z

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->monoColor:I

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleFirstColor:I

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->effectType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAmbientLightService/AmbientLightHalServiceLite;->doubleSecondColor:I

    .line 330
    return-void
.end method
