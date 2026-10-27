.class public Lcom/xiaopeng/xuiservice/smart/SmartLightService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartLightService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartLightService$InstanceHolder;,
        Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;,
        Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;,
        Lcom/xiaopeng/xuiservice/smart/SmartLightService$Light;,
        Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "light_curve.json"

.field private static final IG_ON:I = 0x1

.field private static final MAX_THRESHOLD:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SmartLightService"


# instance fields
.field private hasIgOn:Z

.field private isDayCounter:Z

.field private isNightCounter:Z

.field private isShortlyCounter:Z

.field private mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

.field private mCounter:I

.field private mDayCounter:I

.field private mDayNight:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

.field private mEnvironment:I

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mLastBrightness:I

.field private mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

.field private final mLuxArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLuxDayArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLuxNightArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLuxShortlyArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMinBrightness:I

.field private mNightCounter:I

.field private mNightMaxCounter:I

.field private mSetBrightness:I

.field private mShortlyCounter:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 520
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    .line 34
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    .line 35
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    .line 36
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightMaxCounter:I

    .line 37
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    .line 38
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 40
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 41
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mMinBrightness:I

    .line 42
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mSetBrightness:I

    .line 43
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLastBrightness:I

    .line 44
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    .line 45
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->UNKNOWN:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayNight:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxArray:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    .line 522
    const-string v0, "SmartLightService"

    const-string v1, "SmartLightService"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->initCduBrightness()V

    .line 524
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setProviderAutoLight(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isCurrentDay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isDayCounter:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightMaxCounter:I

    return v0
.end method

.method static synthetic access$1802(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightMaxCounter:I

    return p1
.end method

.method static synthetic access$1900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isNightCounter:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isNightCounter:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    return v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    return p1
.end method

.method static synthetic access$204(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    return v0
.end method

.method static synthetic access$2400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->hasIgOn:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # Z

    .line 25
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->hasIgOn:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->startAutoBrightness()V

    return-void
.end method

.method static synthetic access$2600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->stopAutoBrightness()V

    return-void
.end method

.method static synthetic access$2700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->clearAutoDayNight()V

    return-void
.end method

.method static synthetic access$2800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->clearAutoLight()V

    return-void
.end method

.method static synthetic access$2900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->xpuLuxToBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    return v0
.end method

.method static synthetic access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->handleBrightness(I)V

    return-void
.end method

.method static synthetic access$304(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    return v0
.end method

.method static synthetic access$3100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->handleDayNight(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getXpuBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->environmentToBrightness(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mSetBrightness:I

    return v0
.end method

.method static synthetic access$402(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mSetBrightness:I

    return p1
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayNight:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    return v0
.end method

.method static synthetic access$702(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    return p1
.end method

.method static synthetic access$704(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    return v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    return v0
.end method

.method static synthetic access$902(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p1, "x1"    # I

    .line 25
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    return p1
.end method

.method static synthetic access$904(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 25
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    return v0
.end method

.method private clearAutoDayNight()V
    .locals 1

    .line 228
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->UNKNOWN:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    .line 229
    return-void
.end method

.method private clearAutoLight()V
    .locals 1

    .line 242
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setProviderAutoLight(I)V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    .line 245
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCounter:I

    .line 246
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    .line 247
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mSetBrightness:I

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 250
    return-void
.end method

.method private environmentToBrightness(I)I
    .locals 1
    .param p1, "environment"    # I

    .line 265
    packed-switch p1, :pswitch_data_0

    .line 273
    const/4 v0, 0x0

    return v0

    .line 271
    :pswitch_0
    const/16 v0, 0x14

    return v0

    .line 269
    :pswitch_1
    const/16 v0, 0x28

    return v0

    .line 267
    :pswitch_2
    const/16 v0, 0x50

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEnvironmentMode()I
    .locals 5

    .line 478
    const-string/jumbo v0, "xp_bcm"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/bcm/CarBcmManager;

    .line 481
    .local v0, "bcmManager":Landroid/car/hardware/bcm/CarBcmManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/bcm/CarBcmManager;->getEnvironmentMode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnvironmentMode failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method private getIgStatusFromMcu()I
    .locals 5

    .line 466
    const-string/jumbo v0, "xp_mcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/mcu/CarMcuManager;

    .line 469
    .local v0, "mcuManager":Landroid/car/hardware/mcu/CarMcuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/mcu/CarMcuManager;->getIgStatusFromMcu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIgStatusFromMcu failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .locals 1

    .line 537
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$InstanceHolder;->access$3500()Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    move-result-object v0

    return-object v0
.end method

.method private getXpuBrightness()I
    .locals 2

    .line 282
    const-string/jumbo v0, "xp_xpu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/CarXpuManager;

    .line 285
    .local v0, "xpuManager":Landroid/car/hardware/xpu/CarXpuManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/xpu/CarXpuManager;->getXpuBrightness()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 286
    :catch_0
    move-exception v1

    .line 289
    const/4 v1, 0x0

    return v1
.end method

.method private declared-synchronized handleBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    monitor-enter p0

    .line 343
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mMinBrightness:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move p1, v0

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLastBrightness:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mShortlyCounter:I

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    goto :goto_0

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mSetBrightness:I

    if-nez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxShortlyArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isShortlyCounter:Z

    .line 358
    :cond_2
    :goto_0
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLastBrightness:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-void

    .line 342
    .end local p1    # "brightness":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    throw p1
.end method

.method private declared-synchronized handleDayNight(I)V
    .locals 3
    .param p1, "lux"    # I

    monitor-enter p0

    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isCurrentDay()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 323
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isNightCounter:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 326
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isNightCounter:Z

    .line 327
    const/16 v0, 0x8

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightMaxCounter:I

    .line 328
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isDayCounter:Z

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 335
    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isDayCounter:Z

    .line 336
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    .end local p1    # "lux":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    throw p1
.end method

.method private initCduBrightness()V
    .locals 4

    .line 253
    const-string v0, "light_curve.json"

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "content":Ljava/lang/String;
    const-class v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/GsonUtils;->readFromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 256
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2100(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mMinBrightness:I

    .line 258
    const-string v1, "SmartLightService"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    if-nez v2, :cond_1

    const-string v2, "load light_curve.json failed"

    goto :goto_1

    .line 259
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2200(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeed! minBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mMinBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLuxNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    .line 260
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mLuxDay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    :goto_1
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private isCurrentDay()Z
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayNight:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private removeCarListener()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 463
    return-void
.end method

.method private runPeriodicTimerTask(Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6
    .param p1, "task"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 198
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/utils/ThreadUtils;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private setAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V
    .locals 1
    .param p1, "status"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 206
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setProviderAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isDayCounter:Z

    .line 209
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->isNightCounter:Z

    .line 210
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayCounter:I

    .line 211
    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mNightCounter:I

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxDayArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLuxNightArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 214
    return-void
.end method

.method private setProviderAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V
    .locals 3
    .param p1, "status"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 218
    :try_start_0
    const-string v0, "SmartLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProviderAutoDayNight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autoDayNight"

    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mDayNight:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->handleException(Ljava/lang/Exception;)V

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setProviderAutoLight(I)V
    .locals 3
    .param p1, "brightness"    # I

    .line 233
    :try_start_0
    const-string v0, "SmartLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProviderAutoLight, CduBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autolight"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->handleException(Ljava/lang/Exception;)V

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private startAutoBrightness()V
    .locals 6

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getEnvironmentMode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    .line 296
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getXpuBrightness()I

    move-result v0

    .line 297
    .local v0, "lux":I
    if-nez v0, :cond_1

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->environmentToBrightness(I)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->xpuLuxToBrightness(I)I

    move-result v1

    .line 298
    .local v1, "brightness":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v2

    if-le v0, v2, :cond_2

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    goto :goto_1

    .line 299
    :cond_2
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v2

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    goto :goto_1

    .line 300
    :cond_3
    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    .line 302
    .local v2, "dayNight":Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    :goto_1
    const-string v3, "SmartLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAutoBrightness, brightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (lux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), mEnvironment="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", dayNight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->handleBrightness(I)V

    .line 307
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setProviderAutoDayNight(Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    .line 309
    new-instance v3, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;)V

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->runPeriodicTimerTask(Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 311
    .end local v0    # "lux":I
    .end local v1    # "brightness":I
    .end local v2    # "dayNight":Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;
    :cond_5
    return-void
.end method

.method private stopAutoBrightness()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 317
    const-string v0, "SmartLightService"

    const-string v1, "stopAutoBrightness"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method private xpuLuxToBrightness(I)I
    .locals 1
    .param p1, "lux"    # I

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->getBrightness(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 528
    const-string v0, "SmartLightService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 2

    .line 363
    const-string v0, "SmartLightService"

    const-string v1, "initCarListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mLightCurveMap:Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    if-nez v0, :cond_0

    return-void

    .line 367
    :cond_0
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 396
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 418
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarXpuEventCallback:Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mCarBcmEventCallback:Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 457
    return-void
.end method

.method protected needConnectXUI()Z
    .locals 1

    .line 516
    const/4 v0, 0x1

    return v0
.end method

.method protected onCarManagerInited()V
    .locals 3

    .line 491
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->getIgStatusFromMcu()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->hasIgOn:Z

    .line 493
    const-string v0, "SmartLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarManagerInit, hasIgOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->hasIgOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mEnvironment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->mEnvironment:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->hasIgOn:Z

    if-eqz v0, :cond_1

    .line 496
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->startAutoBrightness()V

    .line 498
    :cond_1
    return-void
.end method

.method protected onInit()V
    .locals 2

    .line 502
    const-string v0, "SmartLightService"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->setProviderAutoLight(I)V

    .line 505
    return-void
.end method

.method protected onRelease()V
    .locals 2

    .line 509
    const-string v0, "SmartLightService"

    const-string v1, "onRelease"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->removeCarListener()V

    .line 512
    return-void
.end method
